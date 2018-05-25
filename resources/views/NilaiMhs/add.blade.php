@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i> Nilai Mahasiswa</a></li>
      </ol>
    </section>

    <!-- PROFILE -->

    <section class="content">
      
      <div class="row">
        <div class="col-md-12">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>

            {!! csrf_field() !!}
            
            {!! Form::open(array('route' => 'postMahasiswaNilai','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

              <table class="table table-bordered table-striped">
                     
                <tr>
                  <td style="width: 30%"><strong>Kode Matakuliah</strong></td>
                  <td style="width: 50%">: {{ $matakuliah['kode_matakuliah'] }}</td>   
                </tr>
                <tr>
                  <td style="width: 30%"><strong>Nama Matakuliah</strong></td>
                  <td style="width: 50%">: {{ $matakuliah['nama_matakuliah'] }}</td>   
                </tr>
                <tr>
                  <td style="width: 30%"><strong>Angkatan</strong></td>
                  <td style="width: 50%">: {{ $matakuliah['angkatan'] }}</td>   
                </tr>
                <tr>
                  <td style="width: 30%"><strong>Semester</strong></td>
                  <td style="width: 50%">: {{ $matakuliah['semester'] }}</td>   
                </tr>
      
              </table>

              <br>

                <div class="form-group">
                  <!-- <label class="control-label col-sm-1" for="email">Email:</label>
                  <div class="col-sm-2">
                    <input type="email" class="form-control" id="email" placeholder="Enter email">
                  </div> -->
                    <div class="container" style="background-color:#ffffff;">
                      <!-- <div class="jumbotron"> -->
                        <hr>

                        <table class="table table-bordered form-group">
                        <thead>
                          <tr>
                            <th style="width:2%">No</th>
                            <th class="">NIM</th>
                            <th class="">Nama</th>
                            <th class="">Nilai</th>
                          </tr>
                        </thead>

                        <thead>
                          @foreach ($mahasiswa as $key => $value)
                            <input type="text" class="form-control hidden" id="kode_matakuliah" name="kode_matakuliah"  value="{{ $matakuliah['kode_matakuliah'] }}">
                            <input type="text" class="form-control hidden" id="nama_matakuliah" name="nama_matakuliah"  value="{{ $matakuliah['nama_matakuliah'] }}">
                            <input type="text" class="form-control hidden" id="angkatan" name="angkatan"  value="{{ $matakuliah['angkatan'] }}">
                            <input type="text" class="form-control hidden" id="semester" name="semester"  value="{{ $matakuliah['semester'] }}">
                            <input type="text" class="form-control hidden" id="jumlah_sks" name="jumlah_sks"  value="{{ $matakuliah->jumlah_sks }}">

                            <input type="text" class="form-control hidden" id="id_nilai_mahasiswa" name="id_nilai_mahasiswa[{{ $key }}]"  value="{{ $value['id_nilai_mahasiswa'] }}">
                            <input type="text" class="form-control hidden" id="nomor_id" name="nomor_id[{{ $key }}]"  value="{{ $value->nomor_id }}">
                            <tr>
                              <td style="width:2%">{{ $key + 1 }}</td>
                              <td>{{ $value->nomor_id }}</td>
                              <td>{{ $value->nama_lengkap}}</td>
                              <td><input type="text" class="form-control" id="nilai" name="nilai[{{ $key }}]" placeholder="Masukkan Nilai Mahasiswa" value="{{ $value->nilai }}"></td>
                            </tr>


                          @endforeach
                        </thead>
                        

                        
                      </table>

                        

                    </div>
                </div>
                
                <div class="row">
                  <div class="col-xs-2">
                    <button type="button" onclick="window.history.go(-1); return false;" class="btn btn-warning btn-block btn-flat">Kembali</button>
                  </div>
                  <div class="col-xs-2">
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



@section('css')

<style>
hr {
    display: block;
    height: 1px;
    border: 0;
    border-top: 1px solid #ccc;
    margin: 1em 0;
    padding: 0; 
}
</style>
@endsection

@section('js')

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script> -->
<link rel="stylesheet" href="{{ url('assets/bower_components/ext/selectize.css') }}">
<script src="{{ url('assets/bower_components/ext/selectize.min.js') }}"></script>

<script type="text/javascript">
  
//   $(document).ready(function() {
//     $('#contact_form').bootstrapValidator({
//         framework: 'bootstrap',
//         icon: {
//             valid: 'glyphicon glyphicon-ok',
//             invalid: 'glyphicon glyphicon-remove',
//             validating: 'glyphicon glyphicon-refresh'
//         },
//         fields: {
            
//             'nilai[]': {
//                 validators: {
//                     integer: {
//                         message: 'Masukkan Nomor yang valid'
//                     }
//                 }
//             }
//         }
//     });
// });


//   $(document).ready(function() {
//     $('#contact_form').bootstrapValidator({
//         // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
//         feedbackIcons: {
//             // valid: 'glyphicon glyphicon-ok',
//             invalid: 'glyphicon glyphicon-remove',
//             validating: 'glyphicon glyphicon-refresh'
//         },
//         fields: {
//             nilai: {
//                 validators: {
//                     notEmpty: {
//                         message: 'Masukkan Angka Semester'
//                     },
                    // integer: {
                    //     message: 'Masukkan Nomor yang valid'
                    // }
//                 }
//             }
//           }
//         })
        
// });

</script>


@endsection








