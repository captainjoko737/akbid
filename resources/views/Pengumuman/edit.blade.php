@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i> Pengumuman</a></li>
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
            
            {!! Form::open(array('route' => 'putPengumuman','files'=>true, 'id' => 'contact_form', 'method' => 'PUT')) !!}
            <div class="box-body"> 

                <div class="form-group" hidden>
                  <label>ID Pengumuman</label>  
                  <input  name="id_pengumuman" id="id_pengumuman" required placeholder="" class="form-control" type="text" value="{{ $pengumuman['id_pengumuman'] }}">
                </div>

                <div class="form-group">
                  <label>Judul Pengumuman</label>  
                  <input name="judul" id="judul" required placeholder="Masukkan Judul Pengumuman" class="form-control" type="text" value="{{ $pengumuman['judul'] }}">
                </div>

                <div class="form-group">
                  <label>Judul Pengumuman</label>  
                  <textarea class="textarea form-control" name="konten" placeholder="" style="height: 400px">{{ $pengumuman['konten'] }}</textarea>
                </div>
               
                <div class="form-group">
                  <label>Status</label>  
                    <select class="form-control" id="status" name="status" required>
                      <option value=" " >Pilih Status Pengumuman</option>
                      <option value="Tidak Aktif">Tidak Aktif</option>
                      <option value="Aktif">Aktif</option>
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

@section('css')
<link rel="stylesheet" type="text/css" href="http://jhollingworth.github.io/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"></link>
<link rel="stylesheet" type="text/css" href="http://jhollingworth.github.io/bootstrap-wysihtml5/lib/css/bootstrap.min.css">


@endsection

@section('js')

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script> -->
<script src="http://jhollingworth.github.io/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
<script src="http://jhollingworth.github.io/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
<script src="http://jhollingworth.github.io/bootstrap-wysihtml5/lib/js/bootstrap.min.js"></script>


<script type="text/javascript">
  $('.textarea').wysihtml5({
    "link": false, //Button to insert a link. Default true
    "image": false
  });

   var status = '{!! $pengumuman["status"] !!}';

    document.getElementById("status").value = status;
  

</script>

@endsection








