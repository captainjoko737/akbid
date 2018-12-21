@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-archive"></i>Transkrip Mahasiswa</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-1">
          
        </div>

        <div class="col-md-10">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
              <table class="table">
                <thead>
                  <tr>
                    <th style="width:30%">Nama</th>
                    <td>: {{ $mahasiswa->nama_lengkap }}</td>
                  </tr>
                </thead>
                <thead>
                  <tr>
                    <th>NIM</th>
                    <td>: {{ $mahasiswa->nomor_id }}</td>
                  </tr>
                </thead>
                <thead>
                  <tr>
                    <th style="width:20%">Program Studi</th>
                    <td>: {{ $mahasiswa->jurusan }}</td>
                  </tr>
                </thead>
                <thead>
                  <tr>
                    <th>Tempat dan Tanggal Lahir</th>
                    <td>: {{ $mahasiswa->tempat_lahir }}, {{ $mahasiswa->tanggal_lahir }}</td>
                  </tr>
                </thead>
              </table>
            </div>
                         
              <table class="table table-bordered form-group">
                <thead>
                  <tr>
                    <th style="width:2%">No</th>
                    <th class="text-center" style="width:20%">Kode Matakuliah</th>
                    <th class="text-center">Matakuliah</th>
                    <th class="text-center" style="width:3%">SKS</th>
                    <th class="text-center" style="width:3%">Nilai</th>
                    <th class="text-center" style="width:3%">Angka</th>
                    <th class="text-center" style="width:3%">Mutu</th>
                  </tr>
                </thead>
                @foreach ($nilai as $key => $value)

                  <tbody>
                    <tr>
                      <td>{{ $key + 1 }}</td>
                      <td>{{ $value->kode_matakuliah }}</td>
                      <td>{{ $value->nama_matakuliah }}</td>
                      <td class="text-center">{{ $value->jumlah_sks }}</td>
                      <td class="text-center">{{ $value->nilai }}</td>
                      <td class="text-center">{{ $value->angka }}</td>
                      <td class="text-center">{{ $value->mutu }}</td>
                    </tr>
                  </tbody>

                @endforeach

                
              </table>

              <table class="table">
                <thead>
                  <tr>
                    <th style="width:20%">Jumlah SKS</th>
                    <td>: {{ $total_sks }} SKS</td>
                  </tr>
                </thead>
                <thead>
                  <tr>
                    <th>IPK</th>
                    <td>: {{ $ipk }}</td>
                  </tr>
                </thead>
              </table>

              <div>
                <div class="col-md-12 text-center">
                  <label>Lengkapi data dibawah untuk Mencetak Transkrip Nilai</label>
                </div> 
                <table class="table">
                  <thead>
                    <tr>
                      <td style="width:30%">Nomor Cetak Transkrip</td>
                      <td style="width:2%">:</td>
                      <td style="width:50%"><input name="nomor_cetak" id="nomor_cetak" required placeholder="Masukkan Nomor Cetak Transkrip" class="form-control" type="text"></td>
                      <td></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td style="width:30%">Gelar Akademik</td>
                      <td style="width:2%">:</td>
                      <td style="width:50%"><input name="gelar_akademik" id="gelar_akademik" required placeholder="Masukkan Gelar Akademik" class="form-control" type="text" value="{{ $data_transkrip_akhir['gelar_akademik'] }}"></td>
                      <td></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Tanggal Kelulusan</td> 
                      <td style="width:2%">:</td>
                      <td><input name="tanggal_kelulusan" id="tanggal_kelulusan" required placeholder="Masukkan Tanggal Kelulusan" class="form-control" type="text" value="{{ $data_transkrip_akhir['tanggal_kelulusan'] }}"></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Judul Karya Tulis Ilmiah</td>
                      <td style="width:2%">:</td>
                      <td><input name="judul_karya_tulis" id="judul_karya_tulis" required placeholder="Masukkan Judul Karya Tulis Ilmiah" class="form-control" type="text" value="{{ $data_transkrip_akhir['judul_karya_tulis'] }}"></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Tempat dan Tanggal Cetak</td>
                      <td style="width:2%">:</td>
                      <td><input name="tanggal_cetak" id="tanggal_cetak" required placeholder="Masukkan Tanggal Cetak" class="form-control" type="text"></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Nilai Ujian Akhir Praktek</td>
                      <td style="width:2%">:</td>
                      <td><input name="uap" id="uap" required placeholder="Masukkan Nilai Ujian Akhir Praktek" class="form-control" type="text"></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Yudisium</td>
                      <td style="width:2%">:</td>
                      <td><input name="yudisium" id="yudisium" required placeholder="Masukkan Yudisium" class="form-control" type="text"></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Nama Penanggung Jawab 1</td>
                      <td style="width:2%">:</td>
                      <td><input name="nama_1" id="nama_1" required placeholder="Masukkan Nama Penanggung Jawab 1" class="form-control" type="text" ></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Gelar Penanggung Jawab 1</td>
                      <td style="width:2%">:</td>
                      <td><input name="gelar_1" id="gelar_1" required placeholder="Masukkan Gelar Penanggung Jawab 1" class="form-control" type="text" ></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Nama Penanggung Jawab 2</td>
                      <td style="width:2%">:</td>
                      <td><input name="nama_2" id="nama_2" required placeholder="Masukkan Nama Penanggung Jawab 2" class="form-control" type="text" ></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <td>Gelar Penanggung Jawab 2</td>
                      <td style="width:2%">:</td>
                      <td><input name="gelar_2" id="gelar_2" required placeholder="Masukkan Gelar Penanggung Jawab 2" class="form-control" type="text" ></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <!-- <th><button type="button" class="add-modal btn btn-success form-control" onclick="cetak()" target="_blank"><span class="glyphicon glyphicon-print"></span> CETAK KHS</button></th> -->
                      <td><button type="button" onclick="location.href='/akbid/mahasiswa/transkrip/data';" class="btn btn-warning">Kembali</button> <button type="button" class="btn btn-success" onclick="cetak()" target="_blank"><span class="glyphicon glyphicon-print"></span> Cetak Transkrip</button></td>
                    </tr>
                  </thead>
                </table>
              </div>
            

          </div>
        </div>



        <div class="col-md-1">
          
        </div>




      </div>





      
    </section>
@endsection

@section('css')

<style type="text/css">
  
  table.table-bordered{
      border:2px solid gray;
      margin-top:20px;
    }
  table.table-bordered > thead > tr > th{
      border:2px solid gray;
  }
  table.table-bordered > tbody > tr > td{
      border:2px solid gray;
  }
</style>

@endsection

@section('js')


<script type="text/javascript">

  
  var nomor_id = {!! $nomor_id !!};

  function cetak() {

    if(document.getElementById("nomor_cetak").value) {
      
    }else{
      alert('Nomor Cetak Transkrip Harus Diisi');
      return;
    }

    if(document.getElementById("gelar_akademik").value) {
      
    }else{
      alert('Gelar Akademik Harus Diisi');
      return;
    }

    if(document.getElementById("tanggal_kelulusan").value) {
      
    }else{
      alert('Tanggal Kelulusan Harus Diisi');
      return;
    }

    if(document.getElementById("judul_karya_tulis").value) {
      
    }else{
      alert('Judul Karya Tulis Ilmiah Harus Diisi');
      return;
    }

    if(document.getElementById("tanggal_cetak").value) {
      
    }else{
      alert('Tanggal Cetak Transkrip Nilai Harus Diisi');
      return;
    }

    if(document.getElementById("nama_1").value) {
      
    }else{
      alert('Nama Penanggung Jawab 1 Harus Diisi');
      return;
    }

    if(document.getElementById("gelar_1").value) {
      
    }else{
      alert('Gelar Penanggung Jawab 1 Harus Diisi');
      return;
    }

    if(document.getElementById("nama_2").value) {
      
    }else{
      alert('Nama Penanggung Jawab 2 Harus Diisi');
      return;
    }

    if(document.getElementById("gelar_2").value) {
      
    }else{
      alert('Gelar Penanggung Jawab 2 Harus Diisi');
      return;
    }

    if(document.getElementById("uap").value) {
      
    }else{
      alert('Nilai Ujian Akhir Praktek Harus Diisi');
      return;
    }

    if(document.getElementById("yudisium").value) {
      
    }else{
      alert('Yudisium Harus Diisi');
      return;
    }

    var data = {
      "nomor_id"          : nomor_id,
      "nomor_cetak"       : ''+document.getElementById("nomor_cetak").value+'', 
      "gelar_akademik"    : document.getElementById("gelar_akademik").value,
      "tanggal_kelulusan" : document.getElementById("tanggal_kelulusan").value, 
      "judul_karya_tulis" : document.getElementById("judul_karya_tulis").value,
      "tanggal_cetak"     : document.getElementById("tanggal_cetak").value, 
      "nama_1"            : document.getElementById("nama_1").value,
      "gelar_1"           : document.getElementById("gelar_1").value, 
      "nama_2"            : document.getElementById("nama_2").value,
      "gelar_2"           : document.getElementById("gelar_2").value,
      "uap"               : document.getElementById("uap").value,
      "yudisium"          : document.getElementById("yudisium").value
    };

    var str = document.getElementById("nomor_cetak").value;
    // console.log(str.replace(/\//g,"?"));

    // location.href = '/akbid/transkripNilaiPdf/'+nomor_id+'/'+str.replace(/\//g,"*")+'/'+data.gelar_akademik+'/'+data.tanggal_kelulusan+'/'+data.judul_karya_tulis+'/'+data.tanggal_cetak+'/'+data.nama_1+'/'+data.gelar_1+'/'+data.nama_2+'/'+data.gelar_2+'/'+data.uap+'/'+data.yudisium;
      
    window.open(
        '/akbid/transkripNilaiPdf/'+nomor_id+'/'+str.replace(/\//g,"*")+'/'+data.gelar_akademik+'/'+data.tanggal_kelulusan+'/'+data.judul_karya_tulis+'/'+data.tanggal_cetak+'/'+data.nama_1+'/'+data.gelar_1+'/'+data.nama_2+'/'+data.gelar_2+'/'+data.uap+'/'+data.yudisium,
        '_blank' // <- This is what makes it open in a new window.
    );

    // alert('HELLO WORLD');
  }


</script>


@endsection