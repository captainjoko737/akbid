@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-briefcase"></i> Kepegawaian</a></li>
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
            
            {!! Form::open(array('route' => 'postKepegawaian','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group">
                  <label>NIP</label>  
                  <input  name="nip" id="nip" required placeholder="Masukkan NIP Pegawai" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Nama Lengkap</label>  
                  <input  name="nama_lengkap" id="nama_lengkap" required placeholder="Masukkan Nama Lengkap Pegawai" class="form-control" type="text">
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
                  <label>Agama</label> 
                  <input name="agama" id="agama" required placeholder="Masukkan Agama Pegawai" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Tanggal Lahir</label> 
                  <input  name="tanggal_lahir" id="tanggal_lahir" required placeholder="Masukkan Tanggal Lahir Pegawai" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Status Kepegawai</label> 
                  <input  name="status_pegawai" id="status_pegawai" required placeholder="Masukkan Status Kepegawaian" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Alamat</label> 
                  <input  name="alamat" id="alamat" required placeholder="Masukkan Alamat Dosen" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Nomor Tlp</label> 
                  <input  name="nomor_tlp" id="nomor_tlp" required placeholder="Masukkan Nomor Tlp Pegawai" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Jabatan</label> 
                  <input  name="jabatan" id="jabatan" required placeholder="Masukkan Jabatan Pegawai" class="form-control" type="text">
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
            jumlah_sks: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Jumlah SKS'
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








