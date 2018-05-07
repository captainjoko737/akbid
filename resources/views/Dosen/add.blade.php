@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i> Dosen</a></li>
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
            
            {!! Form::open(array('route' => 'postDosen','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group">
                  <label>Nomor Induk</label>  
                  <input  name="nomor_induk" id="nomor_induk" required placeholder="Masukkan Nomor Induk Dosen" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Nama Lengkap</label>  
                  <input  name="nama_lengkap" id="nama_lengkap" required placeholder="Masukkan Nama Lengkap Dosen" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>NIP</label> 
                  <input  name="nip" id="nip" required placeholder="Masukkan NIP Dosen" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Gelar</label> 
                  <input  name="gelar" id="gelar" required placeholder="Masukkan Gelar Dosen" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Jabatan Fungsional</label> 
                  <input  name="jabatan_fungsional" id="jabatan_fungsional" required placeholder="Masukkan Jabatan Fungsional Dosen" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Alamat</label> 
                  <input  name="alamat" id="alamat" required placeholder="Masukkan Alamat Dosen" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Tanggal Lahir</label> 
                  <input  name="tanggal_lahir" id="tanggal_lahir" required placeholder="Masukkan Tanggal Lahir Dosen" class="form-control" type="text">
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








