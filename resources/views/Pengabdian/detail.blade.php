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
        <div class="col-md-2">
          
        </div>
        <div class="col-md-8">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
              <div class="box-body">

                <table class="table table-bordered table-striped">
                 
                  <tr>
                    <td style="width: 30%">Judul Penelitian</strong></td>
                    <td style="width: 50%">{{ $result['judul_penelitian'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%"><strong>Peneliti</strong></td>
                  </tr>
                  <tr>
                    <td style="width: 30%">Nama Lengkap</td>
                    <td style="width: 50%">{{ $result['nama_lengkap'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Perguruan Tinggi</td>
                    <td style="width: 50%">{{ $result['perguruan_tinggi'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Nomor Induk</td>
                    <td style="width: 50%">{{ $result['nomor_induk'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Jabatan Fungsional</td>
                    <td style="width: 50%">{{ $result['jabatan_fungsional'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Program Studi</td>
                    <td style="width: 50%">{{ $result['program_studi'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Nomor HP</td>
                    <td style="width: 50%">{{ $result['nomor_tlp'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Alamat Email</td>
                    <td style="width: 50%">{{ $result['alamat_email'] }}</td>   
                  </tr>

                  <tr>
                      <td style="width: 30%"><strong>Anggota (1)</strong></td>
                  </tr>
                  @if($result['dosen_anggota_1'])
                      <tr>
                        <td style="width: 30%">Nama Lengkap</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_1']['nama_lengkap'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%">Nomor Induk</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_1']['nomor_induk'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%">Perguruan Tinggi</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_1']['perguruan_tinggi'] }}</td>   
                      </tr>
                  @endif

                  <tr>
                      <td style="width: 30%"><strong>Anggota (2)</strong></td>
                  </tr>
                  @if($result['dosen_anggota_2'])
                      <tr>
                        <td style="width: 30%">Nama Lengkap</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_2']['nama_lengkap'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%">Nomor Induk</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_2']['nomor_induk'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%">Perguruan Tinggi</td>
                        <td style="width: 50%">{{ $result['dosen_anggota_2']['perguruan_tinggi'] }}</td>   
                      </tr>
                  @endif 
                  
                  <tr>
                      <td style="width: 30%"><strong>Institusi Mitra (jika ada)</strong></td>
                  </tr>

                  <tr>
                    <td style="width: 30%">Nama Institusi Mitra</td>
                    <td style="width: 50%">{{ $result['nama_institusi_mitra'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%">Alamat</td>
                    <td style="width: 50%">{{ $result['alamat_institusi'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%">Penanggung Jawab</td>
                    <td style="width: 50%">{{ $result['penanggung_jawab'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%">Tahun Pelaksanaan</td>
                    <td style="width: 50%">{{ $result['tahun_pelaksanaan'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%">Biaya Tahun Berjalan</td>
                    <td style="width: 50%">{{ $result['biaya_tahun_berjalan'] }}</td>   
                  </tr>

                  <tr>
                    <td style="width: 30%">Biaya Keseluruhan</td>
                    <td style="width: 50%">{{ $result['biaya_keseluruhan'] }}</td>   
                  </tr>

                  <tr>
                      <td style="width: 30%"><strong>Mengetahui</strong></td>
                  </tr>

                  <tr>
                    <td style="width: 30%">Nama</td>
                    <td style="width: 50%">{{ $result['mengetahui']['nama_lengkap'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Nomor Induk</td>
                    <td style="width: 50%">{{ $result['mengetahui']['nomor_induk'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Jabatan</td>
                    <td style="width: 50%">{{ $result['mengetahui']['jabatan_fungsional'] }}</td>   
                  </tr>

                  <tr>
                      <td style="width: 30%"><strong>Menyetujui</strong></td>
                  </tr>

                  <tr>
                    <td style="width: 30%">Nama</td>
                    <td style="width: 50%">{{ $result['menyetujui']['nama_lengkap'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Nomor Induk</td>
                    <td style="width: 50%">{{ $result['menyetujui']['nomor_induk'] }}</td>   
                  </tr>
                  <tr>
                    <td style="width: 30%">Jabatan</td>
                    <td style="width: 50%">{{ $result['menyetujui']['jabatan_fungsional'] }}</td>   
                  </tr>


                </table>
              </div>
            </div>
            <div class="row">
                  <div class="col-xs-3">
                    <button type="button" onclick="window.history.go(-1); return false;" class="btn btn-warning btn-block btn-flat">Kembali</button>
                  </div>
                  <div class="col-xs-3">
                    <a type="button" class="btn btn-success btn-block btn-flat" href="{{ route('penelitianPdf',['id'=> $result['id_penelitian'] ]) }}" target="_blank"><span class="glyphicon glyphicon-print"></span> Cetak Pengesahan</a>
                  </div>
              </div>
          </div>
        </div>
      </div>
      
    </section>
    
@endsection

@section('js')

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script> -->

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








