@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-briefcase"></i> Rekap</a></li>
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
            <div class="col-lg-12 col-xs-12">
                <div class="box box-primary">
                    <!-- Box header -->
                    <div class="box-header">
                        <!-- <i class="fa fa-user"></i> -->
                        <!-- <h3 class="box-title">{{$title}}</h3>  -->
                        <!-- Button add -->
                        <div class="pull-right">
                            <!-- <a type="button" class="add-modal btn btn-warning" href="{{ route('polling.rekap') }}"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a> -->
                            <!-- <button type="button" class="add-modal btn btn-success" onclick="add()"><span class="glyphicon glyphicon-plus"></span> Tambah Data</button> -->
                        </div>    
                         <!--Include Modal  -->
                    </div>

                    <!-- Box body -->
                    <div class="box-body">
                        <div class="col-md-12">
                          <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                              <li class="active"><a href="#mahasiswa" data-toggle="tab">Mahasiswa</a></li>
                              <li><a href="#matakuliah" data-toggle="tab">Matakuliah</a></li>
                              <li><a href="#dosen" data-toggle="tab">Dosen</a></li>
                            </ul>
                            <div class="tab-content">
                              <div class="active tab-pane" id="mahasiswa">
                                
                                <!-- <h3>MAHASISWA</h3> -->
                                <div id="barchart_material"></div>
                                <hr>
                                <div id="barchart_materials"></div>
                              </div>
                              <!-- /.tab-pane -->
                              <div class="tab-pane" id="matakuliah">
                                <h3>MATAKULIAH</h3>
                              </div>
                              <!-- /.tab-pane -->

                              <div class="tab-pane" id="dosen">
                                <h3>DOSEN</h3>
                              </div>
                              <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content -->
                          </div>
                          <!-- /.nav-tabs-custom -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('css')
<!-- Fixed Column DataTables -->

<style>
td{
    white-space: nowrap;
    max-width: 150px;
    overflow: hidden;
    text-overflow: ellipsis;
}
textarea{
  resize:none
}
table.dataTable {
    margin-top: 0px !important;
    margin-bottom: 0px !important;
}
div.DTFC_LeftWrapper table.dataTable,div.DTFC_RightWrapper table.dataTable{
    background-color: white;
}
</style>
@endsection

@section('js')
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

  var dt = {!! json_encode($chart) !!};
  var dtPembayaran = {!! json_encode($pembayaran) !!};

  var arr = [
     ['Tahun', 'Total Mahasiswa', 'Aktif', 'Tidak Aktif', 'Cuti', 'Keluar', 'Lulus'],
     ['2014', 200, 400, 200, 200, 400, 200],
     ['2015', 400, 460, 250, 200, 400, 200],
     ['2016', 660, 300, 300, 200, 400, 200]
   ];

   google.charts.load('current', {
     'packages': ['bar']
   });
   google.charts.setOnLoadCallback(drawChart);

 function drawChart() {
   var data = google.visualization.arrayToDataTable(dt);
   var options = {
     chart: {
       title: 'Diagram Status Mahasiswa',
       subtitle: 'Data Mahasiswa per Tahun',
     },
     bars: 'vertical', // Required for Material Bar Charts.
     hAxis: {
       format: 'decimal'
     },
     height: 400,
     colors: ['#001cd8', '#00d839', '#e2d704', '#e25d04', '#fc0505', '#05fcf8']
   };

   var dataPembayaran = google.visualization.arrayToDataTable(dtPembayaran);
   var optionsPembayaran = {
     chart: {
       title: 'Diagram Status Pembayaran Mahasiswa',
       subtitle: 'Data Pembayaran Mahasiswa per Tahun',
     },
     bars: 'vertical', // Required for Material Bar Charts.
     hAxis: {
       format: 'decimal'
     },
     height: 400,
     colors: ['#001cd8', '#00d839', '#fc0505']
   };

   var chart = new google.charts.Bar(document.getElementById('barchart_material'));
   var charts = new google.charts.Bar(document.getElementById('barchart_materials'));

   chart.draw(data, google.charts.Bar.convertOptions(options));
   charts.draw(dataPembayaran, google.charts.Bar.convertOptions(optionsPembayaran));

   var btns = document.getElementById('btn-group');

   btns.onclick = function(e) {

     if (e.target.tagName === 'BUTTON') {
       options.hAxis.format = e.target.id === 'none' ? '' : e.target.id;
       chart.draw(data, google.charts.Bar.convertOptions(options));
     }
   }
 }

</script>


@endsection