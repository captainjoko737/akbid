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
            
            {!! Form::open(array('route' => 'putMahasiswaMatakuliah','files'=>true, 'id' => 'contact_form', 'method' => 'PUT')) !!}
            <div class="box-body"> 

                <div class="form-group" hidden>
                  <label>ID MK MHS</label>  
                  <input  name="id_mk_mhs" id="id_mk_mhs" required placeholder="" class="form-control" type="text" value="{{ $mkMhs['id_mk_mhs'] }}">
                </div>

                <div class="form-group">
                  <label for="select-kode-matakuliah">Kode Matakuliah</label>
                  <select id="select-kode-matakuliah" name="kode_matakuliah" placeholder="Masukkan Kode Matakuliah" value="dsa" required></select>
                </div>
                  
                <div class="form-group">
                  <label>Nomor Induk Mahasiswa (NIM)</label>  
                  <!-- <input  name="nama_matakuliah" id="nama_matakuliah" required placeholder="Masukkan Nama Matakuliah" class="form-control" type="text"> -->
                  <select id="select-mahasiswa" name="nomor_id" placeholder="Masukkan NIM" value="" required></select>
                </div>

                <div class="form-group">
                  <label>Semester</label> 
                  <input  name="semester" id="semester" required placeholder="Masukkan Semester" class="form-control" type="text" value="{{ $mkMhs['semester'] }}">
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

var mk = '{!! $matakuliah !!}';
var matakuliah = JSON.parse(mk);
var mtk = [];

for (i=0; i < matakuliah.length; i++) {
    var a = {value: matakuliah[i].kode_matakuliah, name: matakuliah[i].kode_matakuliah + '  (' + matakuliah[i].nama_matakuliah + ') '}
    mtk.push(a);
}

var mhs = '{!! $mahasiswa !!}';
var mahasiswa = JSON.parse(mhs);
var mahasiswas = [];

for (i=0; i < mahasiswa.length; i++) {
    var b = {value: mahasiswa[i].nomor_id, name: mahasiswa[i].nomor_id + ' - ( ' + mahasiswa[i].nama_lengkap + ' ) '}
    mahasiswas.push(b);
}

$('#select-kode-matakuliah').selectize({
    options: mtk,
    labelField: 'name',
    searchField: ['name'],
    render: {
      optgroup_header: function(data, escape) {
        return '<div class="optgroup-header">' + escape(data.label) + ' <span class="scientific">' + escape(data.label_scientific) + '</span></div>';
      }
    }

  });
var kd_mk = '{!! $mkMhs["kode_matakuliah"] !!}';

var $select = $('#select-kode-matakuliah').selectize(mtk);
var selectize = $select[0].selectize; 

selectize.addOption(mtk);
selectize.setValue(kd_mk, false);


$('#select-mahasiswa').selectize({
    options: mahasiswas,
  
    labelField: 'name',
    searchField: ['name'],
    render: {
      optgroup_header: function(data, escape) {
        return '<div class="optgroup-header">' + escape(data.label) + ' <span class="scientific">' + escape(data.label_scientific) + '</span></div>';
      }
    }
  });

var nim = '{!! $mkMhs["nomor_id"] !!}';

var $select = $('#select-mahasiswa').selectize(mahasiswas);
var selectize = $select[0].selectize; 

selectize.addOption(mahasiswas);
selectize.setValue(nim, false);
</script>

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








