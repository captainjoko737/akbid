@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-archive"></i>KHS Mahasiswa</a></li>
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
                    <th style="width:20%">Nama</th>
                    <td>: {{ $mahasiswa->nama_lengkap }}</td>
                  </tr>
                </thead>
                <thead>
                  <tr>
                    <th>NIM</th>
                    <td>: {{ $mahasiswa->nomor_id }}</td>
                  </tr>
                </thead>
              </table>
            </div>

             <div class="form-group col-md-4">
              <label for="sel1">Pilih Semester :</label>
              
                <select class="form-control" id="sel1">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                </select>

              
            </div> 
            <div class="form-group col-md-2">
              <label for="sel1" style="color:transparent;">s</label>
              <button type="button" class="add-modal btn btn-success form-control" onclick="cari()"><span class="glyphicon glyphicon-search"></span> Cari</button>
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
                @foreach ($khs as $key => $value)

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
                    <th>IPS</th>
                    <td>: {{ $ipk }}</td>
                  </tr>
                </thead>
              </table>

              <div>
                <div class="col-md-12 text-center">
                  <label>Lengkapi data dibawah untuk mencetak KHS</label>
                </div> 
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width:30%">Tanggal Cetak</th>
                      <td style="width:50%"><input name="tanggal_cetak" id="tanggal_cetak" required placeholder="Masukkan Tanggal Cetak KHS" class="form-control" type="text"></td>
                      <td></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <th>Nama Penanggung Jawab</th>
                      <td><input name="nama_penanggung_jawab" id="nama_penanggung_jawab" required placeholder="Masukkan Nama Penanggung Jawab" class="form-control" type="text"></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <th>Gelar Penanggung Jawab</th>
                      <td><input name="gelar_penanggung_jawab" id="gelar_penanggung_jawab" required placeholder="Masukkan Gelar Penanggung Jawab" class="form-control" type="text"></td>
                    </tr>
                  </thead>
                  <thead>
                    <tr>
                      <!-- <th><button type="button" class="add-modal btn btn-success form-control" onclick="cetak()" target="_blank"><span class="glyphicon glyphicon-print"></span> CETAK KHS</button></th> -->
                      <td><button type="button" onclick="location.href='/akbid/khs/data';" class="btn btn-warning">Kembali</button> <button type="button" class="btn btn-success" onclick="cetak()" target="_blank"><span class="glyphicon glyphicon-print"></span> CETAK KHS</button></td>
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

  var semesterDefault = '{!! $smt !!}';
  var nomor_id = {!! $nomor_id !!};

  // console.log(nomor_id);

  document.getElementById("sel1").value = semesterDefault;

  function cari() {
    var smt = document.getElementById("sel1").value;
    // console.log(document.getElementById("sel1").value);

    location.href='/akbid/khs/detail/'+nomor_id+ '/' + smt;
  }

  function cetak() {

    if(document.getElementById("tanggal_cetak").value) {
        if(document.getElementById("nama_penanggung_jawab").value) {
            if(document.getElementById("gelar_penanggung_jawab").value) {

                window.open(
                  '/akbid/khs/detail/prints/'+nomor_id+ '/' + semesterDefault + '/' + document.getElementById("tanggal_cetak").value + '/' + document.getElementById("nama_penanggung_jawab").value + '/' + document.getElementById("gelar_penanggung_jawab").value,
                  '_blank' // <- This is what makes it open in a new window.
                );

            }else{
              alert('Gelar Penanggung Jawab Harus Diisi');
            }
        }else{
          alert('Nama Penanggung Jawab Harus Diisi');
        }
    }else{
      alert('Tanggal Cetak Harus Diisi');
    }

    // alert('HELLO WORLD');
  }


</script>


@endsection