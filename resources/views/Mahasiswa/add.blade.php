@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i> Mahasiswa</a></li>
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
            <form action="{{ route('import') }}" method="POST" enctype="multipart/form-data">
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
                  <a type="button" class="add-modal btn btn-success" href="{{ url('assets/sample/sample-mahasiswa.csv') }}"><span class="glyphicon glyphicon-download"></span> Download Format</a>
              </div>
            </div>

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

            {!! csrf_field() !!}
            
            {!! Form::open(array('route' => 'postMahasiswa','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group">
                  <label>Nomor Induk Mahasiswa</label>
                  <input  name="nomor_id" id="nomor_id" required placeholder="Masukkan Nomor Induk Mahasiswa" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Nama Lengkap</label>  
                  <input  name="nama_lengkap" id="nama_lengkap" required placeholder="Masukkan Nama Lengkap" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Alamat</label> 
                  <textarea name="alamat" id="alamat" required placeholder="Masukkan Alamat Lengkap" class="form-control" type="text"></textarea>
                </div>

                <div class="form-group">
                  <label>Tempat Lahir</label>  
                  <input  name="tempat_lahir" id="tempat_lahir" required placeholder="Masukkan Tempat Lahir" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Tanggal Lahir</label>  
                  <input  name="tanggal_lahir" id="tanggal_lahir" required placeholder="Masukkan Tanggal Lahir" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Jurusan</label>  
                  <input name="jurusan" id="jurusan" required placeholder="Masukkan Jurusan" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Nomor HP</label>  
                  <input name="nomor_hp" id="nomor_hp" placeholder="Masukkan Nomor HP" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Angkatan</label>  
                  <input name="angkatan" id="angkatan" required placeholder="Masukkan Tahun Angkatan" class="form-control" type="text">
                </div>
                
                <div class="form-group">
                  <label>Semester</label>  
                  <input name="semester" id="semester" required placeholder="Masukkan Semester" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Status Pembayaran</label>  
                    <select class="form-control" id="status_pembayaran" name="status_pembayaran" required>
                      <option value=" " >Pilih Status Pembayaran</option>
                      <option value="Lunas">Lunas</option>
                      <option value="Belum Lunas">Belum Lunas</option>
                    </select>
                </div>

                <div class="form-group">
                  <label>Status Mahasiswa</label>  
                    <select class="form-control" id="status_mahasiswa" name="status_mahasiswa" required>
                      <option value=" " >Pilih Status Mahasiswa</option>
                      <option value="Aktif">Aktif</option>
                      <option value="Tidak Aktif">Tidak Aktif</option>
                      <option value="Cuti">Cuti</option>
                      <option value="Keluar">Keluar</option>
                      <option value="Lulus">Lulus</option>
                    </select>
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
            nomor_id: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        integer: {
                        message: 'Tolong Hanya Masukkan Angka'
                    }
                }
            },
            nomor_hp: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Nomor Hp'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },
            semester: {
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








