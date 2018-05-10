<!DOCTYPE html>
<html lang="en">
<head>
  <title>Print Data Penelitian</title>
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

      * {
          box-sizing: border-box;
      }

      /* Create two equal columns that floats next to each other */
      .column {
          float: left;
          width: 50%;
          padding: 10px;
          height: 150px; /* Should be removed. Only for demonstration */
      }

      /* Clear floats after the columns */
      .row:after {
          content: "";
          display: table;
          clear: both;
      }
  </style>
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="{{ url('assets/bower_components/jquery/dist/jquery.min.js') }}"></script>
  <script src="{{ url('assets/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
</head>
<body>



<div class="container">
  
  <h3><center><u><strong>HALAMAN PENGESAHAN</strong></u></center></h3>            
  <table class="table table-bordered table-striped">
                 
                  <tr>
                    <td style="width: 30%" valign="top">Judul</strong></td>
                    <td style="width: 2%" valign="top">:</td>
                    <td style="width: 50%">{{ $result['judul_penelitian'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%"><strong>Peneliti</strong></td>
                  </tr>
                  <tr>
                    <td style="width: 30%" valign="top">Nama Lengkap</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['nama_lengkap'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%" valign="top">Perguruan Tinggi</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['perguruan_tinggi'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%" valign="top">Nomor Induk</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['nomor_induk'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%" valign="top">Jabatan Fungsional</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['jabatan_fungsional'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%" valign="top">Program Studi</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['program_studi'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%" valign="top">Nomor HP</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['nomor_tlp'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%" valign="top">Alamat Email</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['alamat_email'] }}</td>   
                  </tr>

                  <tr>
                      <td style="width: 30%"><strong>Anggota (1)</strong></td>
                  </tr>
                  @if($result['dosen_anggota_1'])
                      <tr>
                        <td style="width: 30%" valign="top">Nama Lengkap</td>
                        <td style="width: 2%">:</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_1']['nama_lengkap'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%" valign="top">Nomor Induk</td>
                        <td style="width: 2%">:</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_1']['nomor_induk'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%" valign="top">Perguruan Tinggi</td>
                        <td style="width: 2%">:</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_1']['perguruan_tinggi'] }}</td>   
                      </tr>
                  @endif

                  <tr>
                      <td style="width: 30%"><strong>Anggota (2)</strong></td>
                  </tr>
                  @if($result['dosen_anggota_2'])
                      <tr>
                        <td style="width: 30%" valign="top">Nama Lengkap</td>
                        <td style="width: 2%">:</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_2']['nama_lengkap'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%" valign="top">Nomor Induk</td>
                        <td style="width: 2%">:</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_2']['nomor_induk'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%" valign="top">Perguruan Tinggi</td>
                        <td style="width: 2%">:</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_2']['perguruan_tinggi'] }}</td>   
                      </tr>
                  @endif 
                  
                  <tr>
                      <td style="width: 30%"><strong>Institusi Mitra (jika ada)</strong></td>
                  </tr>

                  <tr>
                    <td style="width: 30%" valign="top">Nama Institusi Mitra</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['nama_institusi_mitra'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%" valign="top">Alamat</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['alamat_institusi'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%" valign="top">Penanggung Jawab</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['penanggung_jawab'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%" valign="top">Tahun Pelaksanaan</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['tahun_pelaksanaan'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%" valign="top">Biaya Tahun Berjalan</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['biaya_tahun_berjalan'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%" valign="top">Biaya Keseluruhan</td>
                    <td style="width: 2%">:</td>
                    <td style="width: 50%">{{ $result['biaya_keseluruhan'] }}</td>   
                  </tr>

                </table>

              </div>

              
              <center>
                <div class="row">
                    <div class="column">
                      <center>
                        <p>Mengetahui,</p> 
                        {{ $result['mengetahui']['jabatan_fungsional'] }}
                      </center>
                      
                      <br>
                      <center>
                        <p>( {{ $result['mengetahui']['nama_lengkap'] }} )</p>
                        NIP/NIK {{ $result['mengetahui']['nomor_induk'] }} 
                      </center>
                      
                    </div>
                    <div class="column">
                      <center><p>Bandung, {{ $result['date'] }}</p>Ketua</center>
                      <br>
                      
                      <center>
                        <p>( {{ $result['nama_lengkap'] }} )</p>
                        NIP/NIK {{ $result['nomor_induk'] }}
                      </center>
                     
                    </div>
                </div>
                         
                <center>
                  <p>Menyetujui,</p> 
                  {{ $result['menyetujui']['jabatan_fungsional'] }}
                </center>
                <br>
                <center><p>( {{ $result['menyetujui']['nama_lengkap'] }} )</p
                  >NIP/NIK {{ $result['menyetujui']['nomor_induk'] }} 
                </center>
                      
              </center>
            </div>
</div>

</body>
</html>
