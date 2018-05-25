@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i> Matakuliah Mahasiswa</a></li>
      </ol>
    </section>

    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Upload</h4>
          </div>
          <div class="modal-body">
            <form action="{{ route('import.mkMhs') }}" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}
                Choose your xls/csv File : <input type="file" name="file" class="form-control">
             
                
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-default" onclick="deleteConfirm()">Tambah Data</button>
            <!-- <input type="submit" class="btn btn-primary btn-lg" style="margin-top: 3%"> -->
            </form>
          </div>
        </div>
      </div>
    </div>

    <section class="content">
      
      <div class="row">
        <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
              <div class="pull-right">
                  <!-- <button type="button" class="add-modal btn btn-success" onclick="ButtonUpload()"><span class="glyphicon glyphicon-upload"></span> Import Excel</button> -->
                  <!-- <a type="button" class="add-modal btn btn-success" href="{{ asset('assets/sample/sample-matakuliah-mahasiswa.xlsx') }}"><span class="glyphicon glyphicon-download"></span> Download Format</a> -->
              </div>
            </div>

            {!! csrf_field() !!}
            
            {!! Form::open(array('route' => 'postMahasiswaMatakuliah','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group">
                  <label for="select-kode-matakuliah">Kode Matakuliah</label>
                  <select id="select-kode-matakuliah" name="kode_matakuliah" placeholder="Masukkan Kode Matakuliah" value="" required></select>
                </div>
                  
                <div class="form-group">
                  <label>Nomor Induk Mahasiswa (NIM)</label>  
                  <!-- <input  name="nama_matakuliah" id="nama_matakuliah" required placeholder="Masukkan Nama Matakuliah" class="form-control" type="text"> -->
                  <select id="select-mahasiswa" name="nomor_id" placeholder="Masukkan NIM" value="" required></select>
                </div>

                <div class="form-group">
                  <label>Periode Matakuliah</label>  
                    <select class="form-control" id="periode" name="periode" required>
                      <option value=" " >Pilih Periode Matakuliah</option>
                        @foreach ($periode as $key => $value)
                            <option value="{{ $value['id_periode']}}">{{ $value['periode']}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                  <label>Semester</label> 
                  <input  name="semester" id="semester" required placeholder="Masukkan Semester" class="form-control" type="text">
                </div>
                
                <div class="row">
                  <div class="col-xs-4">
                    <button type="button" onclick="window.history.go(-1); return false;" class="btn btn-warning btn-block btn-flat">Kembali</button>
                  </div>
                  <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Simpan Data</button>
                  </div>
              </div>
            </div>
            {!! Form::close() !!}
          </div>
        </div>
      </div>
      
    </section>
    
@endsection

@section('js')

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script> -->
<link rel="stylesheet" href="{{ url('assets/bower_components/ext/selectize.css') }}">
<script src="{{ url('assets/bower_components/ext/selectize.min.js') }}"></script>

<script type="text/javascript">
  
  $(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            semester: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Angka Semester'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            }
          }
        })
        
});

</script>

<script>

var mk = '{!! $matakuliah !!}';
var matakuliah = JSON.parse(mk);
var mtk = [];

for (i=0; i < matakuliah.length; i++) {
    var a = {value: matakuliah[i].kode_matakuliah, name: matakuliah[i].kode_matakuliah + '  (' + matakuliah[i].nama_matakuliah + ') '}
    mtk.push(a);
}

var mhs = '{!! $mahasiswa !!}';
var mahasiswa = JSON.parse(mhs);
var mahasiswas = [];

for (i=0; i < mahasiswa.length; i++) {
    var b = {value: mahasiswa[i].nomor_id, name: mahasiswa[i].nomor_id + ' - ( ' + mahasiswa[i].nama_lengkap + ' ) '}
    mahasiswas.push(b);
}

$('#select-kode-matakuliah').selectize({
    options: mtk,
    labelField: 'name',
    searchField: ['name'],
    render: {
      optgroup_header: function(data, escape) {
        return '<div class="optgroup-header">' + escape(data.label) + ' <span class="scientific">' + escape(data.label_scientific) + '</span></div>';
      }
    }
  });

$('#select-mahasiswa').selectize({
    options: mahasiswas,
  
    labelField: 'name',
    searchField: ['name'],
    render: {
      optgroup_header: function(data, escape) {
        return '<div class="optgroup-header">' + escape(data.label) + ' <span class="scientific">' + escape(data.label_scientific) + '</span></div>';
      }
    }
  });

function ButtonUpload() {
      
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

</script>

@endsection








