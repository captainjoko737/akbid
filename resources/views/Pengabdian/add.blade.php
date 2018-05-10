@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-industry"></i> Pelaksanaan</a></li>
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
            
            {!! Form::open(array('route' => 'postPengabdian','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group">
                  <label>Judul Pelaksanaan</label>  
                  <input  name="judul_pengabdian" id="judul_pengabdian" required placeholder="Masukkan Judul Pelaksanaan" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Dosen Ketua</label>  
                    <select class="form-control" id="id_dosen" name="id_dosen" required>
                      <option value=" " >Pilih Dosen Ketua</option>
                        @foreach ($dosen as $key => $value)
                            <option value="{{ $value['id_dosen']}}">{{ $value['nama_lengkap']}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                  <label>Dosen Anggota 1</label>  
                    <select class="form-control" id="dosen_anggota_1" name="dosen_anggota_1">
                      <option value="" >Pilih Dosen Anggota 1</option>
                        @foreach ($dosen as $key => $value)
                            <option value="{{ $value['id_dosen']}}">{{ $value['nama_lengkap']}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                  <label>Dosen Anggota 2</label>  
                    <select class="form-control" id="dosen_anggota_2" name="dosen_anggota_2">
                      <option value="" >Pilih Dosen Anggota 2</option>
                        @foreach ($dosen as $key => $value)
                            <option value="{{ $value['id_dosen']}}">{{ $value['nama_lengkap']}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                  <label>Nama Institusi Mitra</label>  
                  <input name="nama_institusi_mitra" id="nama_institusi_mitra" required placeholder="Masukkan Nama Institusi Mitra" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Alamat Institusi</label>  
                  <textarea name="alamat_institusi" id="alamat_institusi" class="form-control"></textarea>
                </div>

                <div class="form-group">
                  <label>Penanggung Jawab</label>  
                  <input name="penanggung_jawab" id="penanggung_jawab" required placeholder="Masukkan Penanggung Jawab" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Tahun Pelaksanaan</label>  
                  <input name="tahun_pelaksanaan" id="tahun_pelaksanaan" required placeholder="Masukkan Tahun Pelaksanaan" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Biaya Tahun Berjalan</label>  
                  <input name="biaya_tahun_berjalan" id="biaya_tahun_berjalan" required placeholder="Masukkan Biaya Tahun Berjalan" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Biaya Keseluruhan</label>  
                  <input name="biaya_keseluruhan" id="biaya_keseluruhan" required placeholder="Masukkan Biaya Keseluruhan" class="form-control" type="text">
                </div>

                <div class="form-group">
                  <label>Mengetahui</label>  
                    <select class="form-control" id="mengetahui" name="mengetahui" required>
                      <option value=" " >Pilih </option>
                        @foreach ($dosen as $key => $value)
                            <option value="{{ $value['id_dosen']}}">{{ $value['nama_lengkap']}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                  <label>Menyetujui</label>  
                    <select class="form-control" id="menyetujui" name="menyetujui" required>
                      <option value=" " >Pilih</option>
                        @foreach ($dosen as $key => $value)
                            <option value="{{ $value['id_dosen']}}">{{ $value['nama_lengkap']}}</option>
                        @endforeach
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
            biaya_tahun_berjalan: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Biaya Tahun Berjalan'
                    },
                    integer: {
                        message: 'Masukkan angka yang valid'
                    }
                }
            },biaya_keseluruhan: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Biaya Keseluruhan'
                    },
                    integer: {
                        message: 'Masukkan angka yang valid'
                    }
                }
            }
          }
        })
        
});

</script>

@endsection








