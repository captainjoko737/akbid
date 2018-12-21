<!DOCTYPE html>
<html lang="en">
<head>
  <title>Print Data Polling</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <style>

  h5 {
    /*font-size: 5px;*/
    padding: -8px;
  }
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

      #nodes td, #nodes th {
          border: 0px solid #000;
          padding: -2px;
          font-size: 12px;
      }

      #ipk td, #ipk th {
          border: 0px solid #000;
          padding: 0px;
          font-size: 12px;
      }

      /*#customers tr:nth-child(even){background-color: #f2f2f2;}*/

      #customers tr:hover {background-color: #fff;}

      #customers th {
          padding-top: 5px;
          padding-bottom: 5px;
          font-size: 10px;
          text-align: left;
          background-color: #fff;

          color: black;
      }

      #mk {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          /*width: 100%;*/
      }

      #mk td, #mk th {
          border: 1px solid #000;
          padding: 5px;
          font-size: 10px;
      }

      #mk tr:hover {background-color: #fff;}

      #mk th {
          padding-top: 5px;
          padding-bottom: 5px;
          font-size: 10px;
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
  <center>
    <h5>TRANSKRIP AKADEMIK</h5>
    <h5><i>ACADEMIC TRANSCRIPT</i></h5>
    <h5>Nomor / <i>Number</i> : {{ $parameters['nomor_cetak'] }}</h5>
  </center>
  <br>
  <table class="" id="nodes" style="font-size:12px" width="100%">
    <thead>
      <tr>
        <td style="width:20%">Nama Mahasiswa</td>
        <td style="width:30%">: {{ $mahasiswa['nama_lengkap'] }}</td>
        <td style="width:15%">Program Studi</td>
        <td style="width:30%">: {{ $mahasiswa['jurusan'] }}</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td><i>Name of Student</i></td>
        <td></td>
        <td><i>Study Program</i></td>
        <td></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="color:white;">s</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </thead>


    <thead>
      <tr>
        <td>Nomor Induk Mahasiswa</td>
        <td>: {{ $mahasiswa['nomor_id'] }}</td>
        <td>Gelar Akademik</td>
        <td>: {{ $parameters['gelar_akademik'] }}</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td><i>Student Identification Number</i></td>
        <td></td>
        <td><i>Degree</i></td>
        <td></td>
      </tr>
    </thead>

    <thead>
      <tr>
        <td style="color:white;">s</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </thead>


    <thead>
      <tr>
        <td>Tempat dan Tanggal Lahir</td>
        <td>: {{ $mahasiswa['tempat_lahir'] }}, {{ $mahasiswa['tanggal_lahir'] }}</td>
        <td>Tanggal Kelulusan</td>
        <td>: {{ $parameters['tanggal_kelulusan'] }} </td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td><i>Place and Date of Birth</i></td>
        <td></td>
        <td><i>Date of Graduation</i></td>
        <td></td>
      </tr>
    </thead>


    <tbody>
    
     
    </tbody>
  </table>

  <br>
  <center>
    <h5>Matakuliah</h5>
    <h5><i>Course</i></h5>
  </center>  
  <table class="table" id="mk" width="100%">
    <thead>
      <tr>
        <th style="width:2%">No</th>
        <th><center>Mata Kuliah  (<i>Course</i>)</center></th>
        <th style="width:6%"><center>SKS</center> <i>Credit</i></th>
        <th style="width:6%"><center>Nilai</center><i>Grade</i></th>
        <th style="width:6%"><center>Angka</center><i>Score</i></th>
        <th style="width:8%"><center>SKS x Angka</center><center><i>Point</i></center></th>
      </tr>
    </thead>
    <tbody>
    
    @foreach ($nilai as $key => $value)
      <tr>
        <td>{{ ++$key }}</td>
        <td>{{ $value->nama_matakuliah }}</td>
        <td><center>{{ $value->jumlah_sks }}</center></td>
        <td><center>{{ $value->nilai }}</center></td>
        <td><center>{{ $value->angka }}</center></td>
        <td><center>{{ $value->mutu }}</center></td>
      </tr>
    @endforeach

    <thead>
      <tr>
        <td></td>
        <td><strong><center>Jumlah Total / <i>Point</center></i></strong></td>
        <td><center>{{ $total_sks }}</center></td>
        <td></td>
        <td><center>{{ $total_angka }}</center></td>
        <td><center>{{ $total_mutu }}</center></td>
      </tr>
    </thead>

    </tbody>
  </table>

  <br>

  <table class="" id="ipk" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:15%">Judul Karya Tulis Ilmiah </td>
        <td style="width:30%">: {{ $parameters['judul_karya_tulis'] }}</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td><i>Title of scientific Paper</i> </td>
        <td></td>
      </tr>
    </thead>
    
  </table>

  <br><br>

  <table class="" id="ipk" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:65%">Indeks Prestasi Kumulaitf Semester / <i>Index Cumulatif of the Semester</i> </td>
        <td style="width:30%">: {{ $ipk }}</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td>Indeks Prestasi Ujian Akhir Program (UAP) / <i>Index Cumulatif Final Exam Program</i> </td>
        <td>: {{ $parameters['uap'] }}</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td>Indeks Prestasi Kumulaitf / IPK / <i>Grade Point Average</i> </td>
        <td>: {{ $ipk }}</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td>Yudisium / <i>Judisium</i> </td>
        <td>: {{ $parameters['yudisium'] }}</td>
      </tr>
    </thead>
  </table>

  <br>
  <table class="" id="ipk" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:35%">Sistem Penilaian :</td>
        <td style="width:20%"><center>Huruf Mutu</center></td>
        <td style="width:20%"><center>Angka Mutu</center></td>
        <td style="width:30%"><center>Arti</center></td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td><i>Scoring System</i></td>
        <td><center><i>Grade</i></center></td>
        <td><center><i>Score</i></center></td>
        <td><center><i>Meaning</i></center></td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td></td>
        <td><center>A</center></td>
        <td><center>4.00</center></td>
        <td><center>Sangat Baik / <i>Excelent</i></center></td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td></td>
        <td><center>B</center></td>
        <td><center>3.00</center></td>
        <td><center>Baik / <i>Good</i></center></td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td></td>
        <td><center>C</center></td>
        <td><center>2.00</center></td>
        <td><center>Cukup / <i>Fair</i></center></td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td></td>
        <td><center>D</center></td>
        <td><center>1.00</center></td>
        <td><center>Kurang / <i>Poor</i></center></td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td></td>
        <td><center>E</center></td>
        <td><center>0.00</center></td>
        <td><center>Gagal / <i>Fail</i></center></td>
      </tr>
    </thead>
    
  </table>

  <br>
  <table class="" id="ipk" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:15%">Transkrip ini dibuat dengan sebenarnya / <i>This trasnscript was made in fact </i></td>
      </tr>
    </thead>
  </table>

  <br>
  <table class="" id="ipk" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:45%"></td>
        <td style="width:20%">{{ $parameters['tanggal_cetak'] }}</td>
      </tr>
    </thead>
  </table>

  <table class="" id="nodes" style="font-size:14px" width="100%">
    <thead>
      <tr>
        <td style="width:30%">{{ $parameters['gelar_1'] }}</td>
        <td style="width:30%"></td>
        <td style="width:26.7%">{{ $parameters['gelar_2'] }}</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:30%"></td>
        <td style="width:30%"></td>
        <td style="width:26.7%; color:white;">s</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:30%"></td>
        <td style="width:30%"></td>
        <td style="width:26.7%; color:white;">s</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:30%"></td>
        <td style="width:30%"></td>
        <td style="width:26.7%; color:white;">s</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:30%"></td>
        <td style="width:30%"></td>
        <td style="width:26.7%; color:white;">s</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:30%"></td>
        <td style="width:30%"></td>
        <td style="width:26.7%; color:white;">s</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:30%"></td>
        <td style="width:30%"></td>
        <td style="width:26.7%; color:white;">s</td>
      </tr>
    </thead>
    <thead>
      <tr>
        <td style="width:30%"><strong>{{ $parameters['nama_1'] }}</strong></td>
        <td style="width:30%"></td>
        <td style="width:26.7%"><strong>{{ $parameters['nama_2'] }}</strong></td>
      </tr>
    </thead>
  </table>

</div>

</body>
</html>
