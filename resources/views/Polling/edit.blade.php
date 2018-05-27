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
            
            {!! Form::open(array('route' => 'putPolling','files'=>true, 'id' => 'contact_form', 'method' => 'PUT')) !!}
            <div class="box-body"> 

                <div class="form-group" hidden>
                  <label>ID Polling</label>  
                  <input  name="id_polling" id="id_polling" required placeholder="Masukkan Nomor Induk Dosen" class="form-control" type="text" value="{{ $polling['id_polling'] }}">
                </div>

                <div class="form-group">
                  <label>Nama Polling</label>  
                  <input name="nama_polling" id="nama_polling" required placeholder="Masukkan Nama Polling" class="form-control" type="text" value="{{ $polling['nama_polling'] }}">
                </div>

                <!-- <div class="form-group">
                  <label>Total Responden</label>  
                  <input name="total_responden" id="total_responden" required placeholder="Masukkan Total Responden" class="form-control" type="text" value="{{ $polling['total_responden'] }}">
                </div>

                <div class="form-group">
                  <label>Skor 1 (Sangat Tidak Baik) </label>  
                  <input name="jawaban_1" id="jawaban_1" required placeholder="Masukkan Angka Responden" class="form-control" type="text" value="{{ $polling['jawaban_1'] }}">
                </div>

                <div class="form-group">
                  <label>Skor 2 (Tidak Baik) </label>  
                  <input name="jawaban_2" id="jawaban_2" required placeholder="Masukkan Angka Responden" class="form-control" type="text" value="{{ $polling['jawaban_2'] }}">
                </div>

                <div class="form-group">
                  <label>Skor 3 (Biasa) </label>  
                  <input name="jawaban_3" id="jawaban_3" required placeholder="Masukkan Angka Responden" class="form-control" type="text" value="{{ $polling['jawaban_3'] }}">
                </div>

                <div class="form-group">
                  <label>Skor 4 (Baik) </label>  
                  <input name="jawaban_4" id="jawaban_4" required placeholder="Masukkan Angka Responden" class="form-control" type="text" value="{{ $polling['jawaban_4'] }}">
                </div>

                <div class="form-group">
                  <label>Skor 5 (Sangat Baik) </label>  
                  <input name="jawaban_5" id="jawaban_5" required placeholder="Masukkan Angka Responden" class="form-control" type="text" value="{{ $polling['jawaban_5'] }}">
                </div> -->
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
            jumlah_polling: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Jumlah Polling'
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








