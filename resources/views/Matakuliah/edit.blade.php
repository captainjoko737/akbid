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
            
            {!! Form::open(array('route' => 'putMatakuliah','files'=>true, 'id' => 'contact_form', 'method' => 'PUT')) !!}
            <div class="box-body"> 

                <div class="form-group" hidden>
                  <label>ID Matakuliah</label>  
                  <input  name="kode_matakuliah_old" id="kode_matakuliah_old" required placeholder="" class="form-control" type="text" value="{{ $matakuliah['kode_matakuliah'] }}">
                </div>

                <div class="form-group">
                  <label>Kode Matakuliah</label>  
                  <input  name="kode_matakuliah" id="kode_matakuliah" required placeholder="Masukkan Kode Matakuliah" class="form-control" type="text" value="{{ $matakuliah['kode_matakuliah'] }}">
                </div>

                <div class="form-group">
                  <label>Nama Matakuliah</label>  
                  <input  name="nama_matakuliah" id="nama_matakuliah" required placeholder="Masukkan Nama Matakuliah" class="form-control" type="text" value="{{ $matakuliah['nama_matakuliah'] }}">
                </div>

                <div class="form-group">
                  <label>Jumlah SKS</label> 
                  <input  name="jumlah_sks" id="jumlah_sks" required placeholder="Masukkan Jumlah SKS" class="form-control" type="text" value="{{ $matakuliah['jumlah_sks'] }}">
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








