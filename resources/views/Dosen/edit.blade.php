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
            
            {!! Form::open(array('route' => 'putDosen','files'=>true, 'id' => 'contact_form', 'method' => 'PUT')) !!}
            <div class="box-body"> 

                <div class="form-group" hidden>
                  <label>ID Dosen</label>  
                  <input  name="id_dosen" id="id_dosen" required placeholder="Masukkan Nomor Induk Dosen" class="form-control" type="text" value="{{ $dosen['id_dosen'] }}">
                </div>

                <div class="form-group">
                  <label>Nomor Induk</label>  
                  <input  name="nomor_induk" id="nomor_induk" required placeholder="Masukkan Nomor Induk Dosen" class="form-control" type="text" value="{{ $dosen['nomor_induk'] }}">
                </div>

                <div class="form-group">
                  <label>Nama Lengkap</label>  
                  <input  name="nama_lengkap" id="nama_lengkap" required placeholder="Masukkan Nama Lengkap Dosen" class="form-control" type="text" value="{{ $dosen['nama_lengkap'] }}">
                </div>

                <!-- <div class="form-group">
                  <label>NIP</label> 
                  <input  name="nip" id="nip" required placeholder="Masukkan NIP Dosen" class="form-control" type="text" value="{{ $dosen['nip'] }}">
                </div> -->

                <div class="form-group">
                  <label>Gelar</label> 
                  <input  name="gelar" id="gelar" required placeholder="Masukkan Gelar Dosen" class="form-control" type="text" value="{{ $dosen['gelar'] }}">
                </div>

                <div class="form-group">
                  <label>Jabatan Fungsional</label> 
                  <input  name="jabatan_fungsional" id="jabatan_fungsional" required placeholder="Masukkan Jabatan Fungsional Dosen" class="form-control" type="text" value="{{ $dosen['jabatan_fungsional'] }}">
                </div>

                <div class="form-group">
                  <label>Alamat</label> 
                  <input  name="alamat" id="alamat" required placeholder="Masukkan Alamat Dosen" class="form-control" type="text" value="{{ $dosen['alamat'] }}">
                </div>

                <div class="form-group">
                  <label>Tanggal Lahir</label> 
                  <input  name="tanggal_lahir" id="tanggal_lahir" required placeholder="Masukkan Tanggal Lahir Dosen" class="form-control" type="text" value="{{ $dosen['tanggal_lahir'] }}">
                </div>

                <div class="form-group">
                  <label>Nomor Hp</label> 
                  <input  name="nomor_hp" id="nomor_hp" required placeholder="Masukkan Nomor HP Dosen" class="form-control" type="text" value="{{ $dosen['nomor_tlp'] }}">
                </div>
                <div class="form-group">
                  <label>Email</label> 
                  <input  name="alamat_email" id="alamat_email" required placeholder="Masukkan Alamat Email Dosen" class="form-control" type="text" value="{{ $dosen['alamat_email'] }}">
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








