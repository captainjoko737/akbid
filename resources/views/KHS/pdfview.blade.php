<!DOCTYPE html>
<html lang="en">
<head>
  <title>Print Data Mahasiswa</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <style>
      #customers {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
      }

      #customers td, #customers th {
          border: 1px solid #000;
          padding: 8px;
          font-size: 12px;
      }

      /*#customers tr:nth-child(even){background-color: #f2f2f2;}*/

      #customers tr:hover {background-color: #ddd;}

      #customers th {
          padding-top: 5px;
          padding-bottom: 5px;
          font-size: 12px;
          text-align: left;
          background-color: #fff;
          color: black;
      }

      #nones {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
      }

      #nones td, #nones th {
          border: 0px solid #000;
          padding: 3px;
          font-size: 12px;
      }
      /*#customers tr:nth-child(even){background-color: #f2f2f2;}*/

      #nones tr:hover {background-color: #ddd;}

      #nones th {
          padding-top: 5px;
          padding-bottom: 5px;
          font-size: 12px;
          text-align: left;
          background-color: #fff;
          color: black;
      }
  </style>
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="{{ url('assets/bower_components/jquery/dist/jquery.min.js') }}"></script>
  <script src="{{ url('assets/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
</head>
<body>



<div class="container">
  <center><img src="{{ base_path() }}/public/assets/image_assets/KopSurat.jpg" alt="" width="750px"> </center>
  <h4><center>KARTU HASIL STUDI (KHS)</center></h4>            
  <table class="" id="nones" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:20%">Nama Mahasiswa</td>
        <td style="width:30%">: {{ $mahasiswa['nama_lengkap'] }}</td>
        <td style="width:20%">Semester</td>
        <td style="width:30%">: {{ $smt}}</td>
      </tr>
    </thead>
    <tbody>


    <thead>
      <tr>
        <td style="width:30%">NIM</td>
        <td style="width:40%">: {{ $mahasiswa['nomor_id'] }}</td>
        <td style="width:30%">Tahun Akademik</td>
        <td style="width:30%">: {{ $mahasiswa['angkatan'] }}</td>
      </tr>
    </thead>
     
    </tbody>
  </table>
  <br><br> 
  <table class="table" id="customers" width="100%">
    <thead>
      <tr>
        <th style="width:2%">No</th>
        <th><center>Matakuliah</center></th>
        <th style="width:6%"><center>SKS</center></th>
        <th style="width:6%"><center>Nilai</center></th>
        <th style="width:6%"><center>Angka</center></th>
        <th style="width:6%"><center>Mutu</center></th>
      </tr>
    </thead>
    <tbody>
      @if ($khs != null)
        @foreach ($khs as $key => $value)
          <tr>
            <td>{{ ++$key }}</td>
            <td>{{ $value->nama_matakuliah }}</td>
            <!-- <td>{{ $value->nama_matakuliah }}</td> -->
            <td><center>{{ $value->jumlah_sks }}</center></td>
            <td><center>{{ $value->nilai }}</center></td>
            <td><center>{{ $value->angka }}</center></td>
            <td>{{ $value->mutu }}</td>
          </tr>
        @endforeach
      @endif
      
    </tbody>
    <tbody>
      
      <tr>
        <td></td>
        <td><center><strong>Jumlah</strong></center></td>
        
        <td><center>{{ $total_sks }}</center></td>
        <td><center></center></td>
        <td><center></center></td>
        <td><center>{{ $total_mutu }}</center></td>
      </tr>

    </tbody>
  </table>

  <br>

  <table class="table" id="nones" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:20%">Indeks Prestasi Semester :</td>
        <td style="width:10%"><strong><center>{{ $ips }}</center></strong></td>
        <td style="width:50%"><center>{{ $tgl }}</center></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:20%; border: 0.5px solid #000;">Total Mutu</td>
        <td style="width:10%; border: 0.5px solid #000;"> <center> {{ $total_mutu }} </center></td>
        <td style="width:50%"><center>Akademi Kebidanan Ar-Rahmah Bandung</center></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:20%; border: 0.5px solid #000;">Indeks Prestasi Kumulatif</td>
        <td style="width:10%; border: 0.5px solid #000;"> <strong><center>{{ $ipk }}</center></strong></td>
        <td style="width:50%"><center>{{ $gelar }}</center></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:20%; border: 0.5px solid #000;">Total SKS yang ditempuh</td>
        <td style="width:10%; border: 0.5px solid #000;"><center>{{ $total_sks }}</center></td>
        <td style="width:50%"><center></center></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:20%; border: 0.5px solid #000;">Total SKS yang diperoleh</td>
        <td style="width:10%; border: 0.5px solid #000;"> <center>{{ $total_sks }}</center></td>
        <td style="width:50%"><center></center></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:20%"></td>
        <td style="width:10%"></td>
        <td style="width:50%"></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:20%"></td>
        <td style="width:10%"></td>
        <td style="width:50%"><center><strong> ( {{ $namaPenanggung }} ) </strong></center></td>
      </tr>
    </thead>

    <tbody>

     
    </tbody>
  </table>

  <table class="table" id="nones" style="font-size:14px" width="100%">

    <thead>
      <tr>
        <td style="width:20%">Keterangan :</td>
        <td style="width:20%"></td>
        <td style="width:50%"></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:10%; border: 0.5px solid #000;"><center>HM (Huruf Mutu)</center></td>
        <td style="width:10%; border: 0.5px solid #000;"><center>AM (Angka Mutu)</center></td>
        <td style="width:50%"></td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:10%; border: 0.5px solid #000;"><center>A</center></td>
        <td style="width:10%; border: 0.5px solid #000;"><center>4</center></td>
        <td style="width:50%"></td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:10%; border: 0.5px solid #000;"><center>B</center></td>
        <td style="width:10%; border: 0.5px solid #000;"><center>3</center></td>
        <td style="width:50%"></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:10%; border: 0.5px solid #000;"><center>C</center></td>
        <td style="width:10%; border: 0.5px solid #000;"><center>2</center></td>
        <td style="width:50%"></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:10%; border: 0.5px solid #000;"><center>D</center></td>
        <td style="width:10%; border: 0.5px solid #000;"><center>1</center></td>
        <td style="width:50%"></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:10%; border: 0.5px solid #000;"><center>E</center></td>
        <td style="width:10%; border: 0.5px solid #000;"><center>0</center></td>
        <td style="width:50%"></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:10%; border: 0.5px solid #000;"><center>TM (Total Mutu)</center></td>
        <td style="width:10%; border: 0.5px solid #000;"><center></center></td>
        <td style="width:50%"></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:10%; border: 0.5px solid #000;"><center>TL (Tidak Lulus)</center></td>
        <td style="width:10%; border: 0.5px solid #000;"><center></center></td>
        <td style="width:50%"></td>
      </tr>
    </thead>

    <tbody>

     
    </tbody>
  </table>

  
</div>


  

</body>
</html>
