@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i>Matakuliah Mahasiswa</a></li>
      </ol>
    </section>

    <!-- Modal -->
    <div class="modal fade modal-warning" id="myModal" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Perhatian</h4>
          </div>
          <div class="modal-body">
            <p>Anda yakin akan menghapus data ini ?</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal" onclick="deleteConfirm()">Hapus</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <div class="box box-primary">
                    <!-- Box header -->
                    <div class="box-header">
                        <i class="fa fa-user"></i>
                        <h3 class="box-title">{{$title}}</h3> 
                        <!-- Button add -->
                        <div class="pull-right">
                            <button type="button" class="add-modal btn btn-success" onclick="add()"><span class="glyphicon glyphicon-print"></span> Cetak</button>
                            <button type="button" class="add-modal btn btn-success" onclick="add()"><span class="glyphicon glyphicon-plus"></span> Tambah Data</button>
                        </div>    
                         <!--Include Modal  -->
                        
                    </div>

                    <!-- Box body -->
                    <div class="box-body">
                        <!-- Message -->
                        @if(Session::has('message'))
                            <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <h4><i class="icon fa fa-check"></i> Berhasil!</h4>
                            {{ session('message') }}
                            </div>
                        @endif
                        @if (count($errors) > 0)
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <h4><i class="icon fa fa-times"></i> Gagal!</h4>
                            <ul class="list-unstyled">
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                        @endif
                        
                          <table id="myTable" class="table table-bordered table-striped display nowrap" width="100%">
                          <thead>
                          <tr>
                              <th>Nomor Induk</th>
                              <th>Nama</th>
                              <th>Alamat</th>
                              <th>Tanggal Lahir</th>
                              <th>agama</th>
                              <th>Jenis Kelamin</th>
                              <th>Email</th>
                              <th>Jurusan</th>
                              <th>Kelas</th>
                              <th>Semester</th>
                              <th>Status Pembayaran</th>
                              <th>Status Mahasiswa</th>
                              <th>Action</th>
                          </tr>
                          </thead>
                          </table>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('css')
<!-- Fixed Column DataTables -->

<style>
td{
    white-space: nowrap;
    max-width: 150px;
    overflow: hidden;
    text-overflow: ellipsis;
}
textarea{
  resize:none
}
table.dataTable {
    margin-top: 0px !important;
    margin-bottom: 0px !important;
}
div.DTFC_LeftWrapper table.dataTable,div.DTFC_RightWrapper table.dataTable{
    background-color: white;
}
</style>
@endsection

@section('js')

<script type="text/javascript">


    $(document).ready(function() {
        oTable = $('#myTable').DataTable({
            "processing": true,
            "serverSide": true,
            "scrollX" : true,
            // "scrollCollapse" : true,
    // order: [[9,'desc']],
    // searchDelay: 2000,
    // "autoWidth" : true,
            
            "ajax": "{{ route('mahasiswa.getData') }}",
            "columns": [
                {data: 'nomor_id', name: 'users.nomor_id'},
                {data: 'nama_lengkap', name: 'users.nama_lengkap'},
                {data: 'alamat', name: 'users.alamat'},
                {data: 'tanggal_lahir', name: 'users.tanggal_lahir'},
                {data: 'agama', name: 'users.agama'},
                {data: 'jenis_kelamin', name: 'users.jenis_kelamin'},
                {data: 'alamat_email', name: 'users.alamat_email'},
                {data: 'jurusan', name: 'mahasiswa.jurusan'},
                {data: 'kelas', name: 'mahasiswa.kelas'},
                {data: 'semester', name: 'mahasiswa.semester'},
                {data: 'status_pembayaran', name: 'mahasiswa.status_pembayaran'},
                {data: 'status_mahasiswa', name: 'mahasiswa.status_mahasiswa'},


                { data: 'actions', name: 'actions', orderable: false, searchable: false, className: 'text-center'}
            ]
        });
    });
    
    function add() {
        location.href='/mahasiswa/add';
    }

    function edit(nomor_id) {
        console.log('EDIT ', nomor_id);
        location.href='/mahasiswa/edit/'+nomor_id;
    }

    var _token = $('input[name="_token"]').val();

    var selectedID = 0;

    function ButtonDelete(nomor_id) {
        console.log(nomor_id);

        selectedID = nomor_id;
        $("#myModal").on("show", function() {    
            $("#myModal a.btn").on("click", function(e) {
                console.log("button pressed");
                $("#myModal").modal('hide');     
            });
        });
        $("#myModal").on("hide", function() {   
            $("#myModal a.btn").off("click");
        });

        $("#myModal").on("hidden", function() {  
            $("#myModal").remove();
        });

        $("#myModal").modal({                    
          "backdrop"  : "static",
          "keyboard"  : true,
          "show"      : true                     
        });
    }

    function deleteConfirm() {
        console.log('INI AKAN DI HAPUS : ', selectedID);

        var data = {
                "nomor_id" : selectedID,
                "_token" : _token};

          $.ajax({
             type: 'delete',
             url: '{{url("/mahasiswa/delete")}}',
             data: data,
             success: function(data) {

              // console.log('SUCCESS');
              location.reload();
                // console.log(data);            
             },
             error: function(data) {
                console.log(data);
                 console.log("error");
             }
          });

    }

</script>


@endsection