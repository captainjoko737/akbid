@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-briefcase"></i>KRS Mahasiswa</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-2">
          
        </div>

        <div class="col-md-8">
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
                <thead>
                  <tr>
                    <th>Angkatan</th>
                    <td>: {{ $mahasiswa->angkatan }}</td>
                  </tr>
                </thead>
                <thead>
                  <tr>
                    <th>Semester</th>
                    <td>: {{ $mahasiswa->semester }}</td>
                  </tr>
                </thead>
              </table>
            </div>
                         
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th style="width:2%">No</th>
                    <th class="text-center">Kode Matakuliah</th>
                    <th class="text-center">Matakuliah</th>
                    <th class="text-center">SKS</th>
                  </tr>
                </thead>
                @foreach ($krs as $key => $value)

                  <tbody>
                    <tr>
                      <td>{{ $key + 1 }}</td>
                      <td>{{ $value->kode_matakuliah }}</td>
                      <td>{{ $value->nama_matakuliah }}</td>
                      <td class="text-center">{{ $value->jumlah_sks }}</td>
                    </tr>
                  </tbody>

                @endforeach

                <tbody>
                  <tr>
                    <th></th>
                    <th></th>
                    <th class="text-right">Jumlah</th>
                    <td class="text-center">{{ $total_sks }}</td>
                  </tr>
                </tbody>
              </table>
            

          </div>
        </div>

        <div class="col-md-2">
          
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


</script>


@endsection