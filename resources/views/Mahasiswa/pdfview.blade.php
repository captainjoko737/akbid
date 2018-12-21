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
          border: 1px solid #ddd;
          padding: 8px;
          font-size: 10px;
      }

      #customers tr:nth-child(even){background-color: #f2f2f2;}

      #customers tr:hover {background-color: #ddd;}

      #customers th {
          padding-top: 5px;
          padding-bottom: 5px;
          font-size: 12px;
          text-align: left;
          background-color: #4CAF50;
          color: white;
      }
  </style>
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="{{ url('assets/bower_components/jquery/dist/jquery.min.js') }}"></script>
  <script src="{{ url('assets/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
</head>
<body>



<div class="container">
  <center><img src="{{ base_path() }}/public/assets/image_assets/KopSurat.jpg" alt="" width="750px"> </center>
  <h3>Data Mahasiswa</h3>            
  <table class="table" id="customers" width="100%">
    <thead>
      <tr>
        <th>No</th>
        <th>NIM</th>
        <th>Nama</th>
        <th>Alamat</th>
        <th>TTL</th>
        <th>Angkatan</th>
        
      </tr>
    </thead>
    <tbody>
      @foreach ($mahasiswa as $key => $item)
      <tr>
        <td>{{ ++$key }}</td>
        <td>{{ $item->nomor_id }}</td>
        <td>{{ $item->nama_lengkap }}</td>
        <td>{{ $item->alamat }}</td>
        <td>{{ $item->tempat_lahir }}, {{ $item->tanggal_lahir }}</td>
        <td>{{ $item->angkatan }}</td>
       
        
      </tr>
      @endforeach


      
    </tbody>
  </table>
</div>

</body>
</html>
