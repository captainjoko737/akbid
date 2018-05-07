@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i> Ganti Password</a></li>
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
            
            {!! Form::open(array('route' => 'putPassword','files'=>true, 'method' => 'PUT', 'id' => 'contact_form')) !!}
            <div class="box-body"> 

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

                <div class="form-group">
                  <label>Password Lama</label>  
                  <input name="password_lama" id="password_lama" required placeholder="Masukkan Password Lama" class="form-control" type="password">
                </div>

                <div class="form-group">
                  <label>Password Baru</label>  
                  <input name="password_baru" id="password_baru" required placeholder="Masukkan Password Baru" class="form-control" type="password">
                </div>

                <div class="form-group">
                  <label>Konfirmasi Password</label>  
                  <input name="konfirmasi_password" id="konfirmasi_password" required placeholder="Masukkan Password Baru" class="form-control" type="password">
                </div>
                
                <div class="row">
                  <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Simpan</button>
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
            password_lama: {
                validators: {
                    notEmpty: {
                        message: 'Password Baru Tidak Boleh Kosong'
                    }
                }
            },
            password_baru: {
                validators: {
                    notEmpty: {
                        message: 'Password Baru Tidak Boleh Kosong'
                    }
                }
            },
            konfirmasi_password: {
                validators: {
                    notEmpty: {
                        message: 'Password Baru Tidak Boleh Kosong'
                    },
                    identical: {
                        field: 'password_baru',
                        message: 'Password Tidak Cocok'
                    }
                }
            }
          }
        })
        
});

</script>

@endsection








