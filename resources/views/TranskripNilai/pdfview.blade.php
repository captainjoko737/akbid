<!DOCTYPE html>
<html lang="en">
<head>
  <title>Print Data Polling</title>
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
          font-size: 10px;
      }

      #customers tr:nth-child(even){background-color: #f2f2f2;}

      #customers tr:hover {background-color: #fff;}

      #customers th {
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
  <center><h4>Transkrip Akademik</h4></center>  

  <table class="" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:20%">Nama Mahasiswa</td>
        <td style="width:30%">: {{ $mahasiswa['nama_lengkap'] }}</td>
        <td style="width:20%">Program Studi</td>
        <td style="width:30%">: {{ $mahasiswa['jurusan'] }}</td>
      </tr>
    </thead>
    <tbody>

    <thead style="color:white;">
      <tr>
        <th>Nama Polling</th>
        <th>Total Responden</th>
        
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="width:30%">Nomor Induk Mahasiswa</td>
        <td style="width:40%">: {{ $mahasiswa['nomor_id'] }}</td>
        <td style="width:30%">Tempat dan Tanggal Lahir</td>
        <td style="width:30%">: {{ $mahasiswa['tempat_lahir'] }}, {{ $mahasiswa['tanggal_lahir'] }}</td>
      </tr>
    </thead>
     
    </tbody>
  </table>

  <br><br>
  <center><h4>Matakuliah</h4></center>  
  <table class="table" id="customers" width="100%">
    <thead>
      <tr>
        <th style="width:2%">No</th>
        <th><center>Matakuliah</center></th>
        <th style="width:6%"><center>SKS</center> Semester</th>
        <th style="width:6%"><center>Nilai</center></th>
        <th style="width:6%"><center>Angka</center></th>
      </tr>
    </thead>
    <tbody>
      @foreach ($nilai as $key => $value)
        <tr>
          <td>{{ ++$key }}</td>
          <td>{{ $value->nama_matakuliah }}</td>
          <!-- <td>{{ $value->nama_matakuliah }}</td> -->
          <td><center>{{ $value->jumlah_sks }}</center></td>
          <td><center>{{ $value->nilai }}</center></td>
          <td><center>{{ $value->angka }}</center></td>
        </tr>
      @endforeach
    </tbody>
    <tbody>
      
      <tr>
        <td></td>
        <td><center><strong>Jumlah Total</strong></center></td>
        <!-- <td>{{ $value->nama_matakuliah }}</td> -->
        <td><center>{{ $total_sks }}</center></td>
        <td><center></center></td>
        <td><center>{{ $total_angka }}</center></td>
      </tr>

    </tbody>
  </table>

  <br>

  <table class="" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:20%">Index Prestasi Kumulatif / IPK </td>
        <td style="width:30%">: <strong>{{ $ipk }}</strong></td>
      </tr>
    </thead>
    
  </table>
</div>

</body>
</html>
