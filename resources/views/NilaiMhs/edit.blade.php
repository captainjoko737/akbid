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
            
            {!! Form::open(array('route' => 'putMahasiswaNilai','files'=>true, 'id' => 'contact_form', 'method' => 'PUT')) !!}
            <div class="box-body"> 

                <div class="form-group" hidden>
                  <label>ID MK MHS</label>  
                  <input  name="id_nilai_mahasiswa" id="id_nilai_mahasiswa" required placeholder="" class="form-control" type="text" value="{{ $nilai['id_nilai_mahasiswa'] }}">
                </div>
                <div class="form-group" hidden>
                  <label>Jumlah SKS</label>  
                  <input  name="jumlah_sks" id="jumlah_sks" required placeholder="" class="form-control" type="text" value="{{ $nilai['jumlah_sks'] }}">
                </div>

                <div class="form-group">
                  <label>Kode Matakuliah</label> 
                  <input  name="kode_matakuliah" id="kode_matakuliah" required placeholder="Masukkan Semester" readonly class="form-control" type="text" value="{{ $nilai['kode_matakuliah'] }}">
                </div>

                <div class="form-group">
                  <label>Nomor ID</label> 
                  <input name="nomor_id" id="nomor_id" required placeholder="Masukkan" readonly class="form-control" type="text" value="{{ $nilai['nomor_id'] }}">
                </div>

                <div class="form-group">
                  <label>Semester</label> 
                  <input  name="semester" id="semester" required placeholder="Masukkan Semester" readonly class="form-control" type="text" value="{{ $nilai['semester'] }}">
                </div>

                <div class="form-group">
                  <label>Nilai</label> 
                  <input  name="nilai" id="nilai" required placeholder="Masukkan Nilai " class="form-control" type="text" value="{{ $nilai['nilai'] }}">
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

<link rel="stylesheet" href="{{ url('assets/bower_components/ext/selectize.css') }}">
<script src="{{ url('assets/bower_components/ext/selectize.min.js') }}"></script>

<script>


</script>

@endsection








