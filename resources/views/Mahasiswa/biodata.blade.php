@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-user"></i>Biodata Mahasiswa</a></li>
      </ol>
    </section>

    <!-- Modal -->
    <div class="modal fade modal-warning" id="myModal" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Perhatian</h4>
          </div>
          <div class="modal-body">
            <p>Anda yakin akan menghapus data ini ?</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal" onclick="deleteConfirm()">Hapus</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-lg-6 col-xs-12">
                <div class="box box-primary">
                  <div class="box-body">

                    <table class="table table-bordered table-striped">
                     
                      <tr>
                        <td style="width: 30%"><strong>Nomor Induk Mahasiswa</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['nomor_id'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Nama Lengkap</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['nama_lengkap'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Alamat</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['alamat'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Tanggal Lahir</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['tanggal_lahir'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Agama</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['agama'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Jenis Kelamin</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['jenis_kelamin'] }}</td>   
                      </tr>


                      <tr>
                        <td style="width: 30%"><strong>Alamat Email</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['alamat_email'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Jurusan</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['jurusan'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Kelas</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['kelas'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Angkatan</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['angkatan'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Semester</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['semester'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Status Pembayaran</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['status_pembayaran'] }}</td>   
                      </tr>
                      <tr>
                        <td style="width: 30%"><strong>Status Mahasiswa</strong></td>
                        <td style="width: 50%">: {{ $mahasiswa['status_mahasiswa'] }}</td>   
                      </tr>
            
                    </table>

                    
                  </div>
                  
                </div>

                <div class="panel panel-default">
                        <div class="panel-body"><h4><strong>Perhatian</strong></h4>
                            <p>Apabila ada data yang tidak sesuai, harap menghubungi pihak terkait</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        
    </section>
@endsection
