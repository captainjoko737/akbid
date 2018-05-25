@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }}
        <!-- <small>Control panel</small> -->

      </h1>

      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i> Mahasiswas</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <div class="box box-primary">
                    <!-- Box header -->
                    <div class="box-header">
                        
                        
                        <!-- Button add -->
                        <div class="pull-right">
                            <!-- <a type="button" class="add-modal btn btn-success" href="{{ route('mahasiswaPdf',['download'=>'pdf']) }}" target="_blank"><span class="glyphicon glyphicon-print"></span> Cetak</a> -->
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
                        @if(Session::has('error'))
                            <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <h4><i class="icon fa fa-times"></i> Gagal!</h4>
                            {{ session('error') }}
                            </div>
                        @endif
                        
                        <table id="example" class="display nowrap" style="width:100%">
                        <thead>
                            <tr>
                              <th>No</th>
                              <th>Nomor Induk</th>
                              <th>Nama</th>
                              <th>Alamat</th>
                              <th>Tempat Lahir</th>
                              <th>Tanggal Lahir</th>
                              <th>agama</th>
                              <th>Jenis Kelamin</th>
                              <th>Email</th>
                              <th>Jurusan</th>
                              <th>Kelas</th>
                              <th>Angkatan</th>
                              <th>Semester</th>
                              <th>Status Pembayaran</th>
                              <th>Status Mahasiswa</th>
                              <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>

                          @foreach ($mahasiswa as $key => $value)
                            <tr>
                              <td>{{ ++$key }}</td>
                              <td> {{ $value->nomor_id }}</td>
                              <td> {{ $value->nama_lengkap }}</td>
                              <td> {{ $value->alamat }}</td>
                              <td> {{ $value->tempat_lahir }}</td>
                              <td> {{ $value->tanggal_lahir }}</td>

                              <td> {{ $value->agama }}</td>
                              <td> {{ $value->jenis_kelamin }}</td>
                              <td> {{ $value->alamat_email }}</td>
                              <td> {{ $value->jurusan }}</td>
                              <td> {{ $value->kelas }}</td>

                              <td> {{ $value->angkatan }}</td>
                              <td> {{ $value->semester }}</td>
                              <td> {{ $value->status_pembayaran }}</td>
                              <td> {{ $value->status_mahasiswa }}</td>
                              <td></td>
                              
                            </tr>
                          @endforeach
                            
                        </tbody>
                        
                      </table>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
        
@endsection

@section('css')
    
<link rel="stylesheet" href="{{ url('https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css') }}">
<link rel="stylesheet" href="{{ url('https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css') }}">

@endsection

@section('js')

<script src="{{ url('https://code.jquery.com/jquery-1.12.4.js') }}"></script>
<script src="{{ url('https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ url('https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ url('https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js') }}"></script>
<script src="{{ url('https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js') }}"></script>
<script src="{{ url('https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js') }}"></script>
<script src="{{ url('https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js') }}"></script>
<script src="{{ url('https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js') }}"></script>
<script src="{{ url('https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js') }}"></script>


<script type="text/javascript">
  $(document).ready(function() {
      $('#example').DataTable( {
          dom: 'Bfrtip',
          buttons: [
             'pdf', 'print'
          ],
          scrollX : true
      } );
  } );
</script>

@endsection