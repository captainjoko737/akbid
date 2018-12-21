@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-book"></i> Matakuliah</a></li>
      </ol>
    </section>

    <!-- PROFILE -->

    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Upload</h4>
          </div>
          <div class="modal-body">
            <form action="{{ route('importMatkul') }}" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}
                Choose your csv File : <input type="file" name="file" class="form-control">
             
                
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
                  <button type="button" class="add-modal btn btn-success" onclick="ButtonUpload()"><span class="glyphicon glyphicon-upload"></span> Import Excel</button>
                  <a type="button" class="add-modal btn btn-success" href="{{ url('public/assets/sample/sample-matakuliah.csv') }}"><span class="glyphicon glyphicon-download"></span> Download Format</a>
              </div>
            </div>

            {!! csrf_field() !!}
            
            {!! Form::open(array('route' => 'postMatakuliah','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group">
                  <label>Kode Matakuliah</label>  
                  <input  name="kode_matakuliah" id="kode_matakuliah" required placeholder="Masukkan Kode Matakuliah" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Nama Matakuliah</label>  
                  <input  name="nama_matakuliah" id="nama_matakuliah" required placeholder="Masukkan Nama Matakuliah" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Jumlah SKS</label> 
                  <input  name="jumlah_sks" id="jumlah_sks" required placeholder="Masukkan Jumlah SKS" class="form-control" type="text">
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

<script type="text/javascript">

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

  $(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            jumlah_sks: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Jumlah SKS'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },semester: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Semester'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },angkatan: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Tahun Angkatan'
                    },
                    integer: {
                        message: 'Masukkan Tahun yang valid'
                    }
                }
            }
          }
        })
        
});

</script>

@endsection








