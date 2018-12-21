@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-calendar"></i> Periode</a></li>
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
            
            {!! Form::open(array('route' => 'postKurikulum','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group">
                  <label>Kurikulum</label>  
                  <input name="kurikulum" id="kurikulum" required placeholder="Masukkan Tahun Kurikulum" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Angkatan</label>  
                  <input name="angkatan" id="angkatan" required placeholder="Masukkan Tahun Angkatan" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Semester</label>  
                  <input name="semester" id="semester" required placeholder="Masukkan Tahun Semester" class="form-control" type="text">
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
            angkatan: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Tahun angkatan'
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
            },kurikulum: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Kurikulum'
                    }
                }
            }
          }
        })
        
});

</script>

@endsection








