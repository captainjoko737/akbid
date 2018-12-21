@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i> Polling</a></li>
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
            
            {!! Form::open(array('route' => 'postItem','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group" hidden>
                  <label>ID Aspek Polling</label>  
                  <input name="id_aspek_polling" id="id_aspek_polling" required placeholder="Masukkan Nama Aspek" class="form-control" type="text" value=" {{ $id_aspek_polling }}">
                </div>

                <div class="form-group">
                  <label>Nama Item</label>  
                  <input name="nama_item" id="nama_item" required placeholder="Masukkan Nama Item" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Total Responden</label>  
                  <input name="total_responden" id="total_responden" required placeholder="Masukkan Total Responden" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Skor 1 (Sangat Tidak Baik) </label>  
                  <input name="jawaban_1" id="jawaban_1" required placeholder="Masukkan Angka Responden" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Skor 2 (Tidak Baik) </label>  
                  <input name="jawaban_2" id="jawaban_2" required placeholder="Masukkan Angka Responden" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Skor 3 (Biasa) </label>  
                  <input name="jawaban_3" id="jawaban_3" required placeholder="Masukkan Angka Responden" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Skor 4 (Baik) </label>  
                  <input name="jawaban_4" id="jawaban_4" required placeholder="Masukkan Angka Responden" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Skor 5 (Sangat Baik) </label>  
                  <input name="jawaban_5" id="jawaban_5" required placeholder="Masukkan Angka Responden" class="form-control" type="text">
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
            jawaban_1: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Jumlah Responden'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },jawaban_2: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Jumlah Responden'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },jawaban_3: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Jumlah Responden'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },jawaban_4: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Jumlah Responden'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },jawaban_5: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Jumlah Responden'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },total_responden: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Total Responden'
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








