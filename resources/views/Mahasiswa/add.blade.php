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

    <section class="content">
      
      <div class="row">
        <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>

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
                  <label>Tanggal Lahir</label>  
                  <input  name="tanggal_lahir" id="tanggal_lahir" required placeholder="Masukkan Tanggal Lahir" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Agama</label>  
                  <input  name="agama" id="agama" required placeholder="Masukkan Agama" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Jenis Kelamin</label>  
                    <select class="form-control" id="jenis_kelamin" name="jenis_kelamin" required>
                      <option value=" " >Pilih Jeniis Kelamin</option>
                      <option value="Laki-laki">Laki-laki</option>
                      <option value="Perempuan">Perempuan</option>
                    </select>
                </div>

                <div class="form-group">
                  <label>Alamat Email</label>  
                  <input  name="alamat_email" id="alamat_email" required placeholder="Masukkan Alamat Email" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Jurusan</label>  
                  <input name="jurusan" id="jurusan" required placeholder="Masukkan Jurusan" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Kelas</label>  
                  <input name="kelas" id="kelas" required placeholder="Masukkan Kelas" class="form-control" type="text">
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
            alamat_email: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Email'
                    },
                    emailAddress: {
                        message: 'Masukkan email yang valid'
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
            }
          }
        })
        
});

</script>

@endsection








