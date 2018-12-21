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
                      <div id="barchart_material"></div>
                      
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

  var dt = {!! json_encode($matakuliah) !!};

  var arr = [
     ['Matakuliah', 'Total Mahasiswa'],
     ['Teknik Informatika', 200],
     ['2015', 400],
     ['2016', 660],
     ['Teknik Informatika', 200],
     ['2015', 400],
     ['2016', 660],
     ['Teknik Informatika', 200],
     ['2015', 400],
     ['2016', 660],
     ['Teknik Informatika', 200],
     ['2015', 400],
     ['2016', 660],
     ['Teknik Informatika', 200],
     ['2015', 400],
     ['2016', 660]
   ];

   google.charts.load('current', {
     'packages': ['bar']
   });
   google.charts.setOnLoadCallback(drawChart);

 function drawChart() {
   var data = google.visualization.arrayToDataTable(dt);
   var options = {
     chart: {
       title: 'Diagram Matakuliah Mahasiswa',
       subtitle: '',
     },
     bars: 'horizontal', // Required for Material Bar Charts.
     hAxis: {
       format: 'decimal'
     },
     height: 400,
     colors: ['#001cd8', '#00d839']
   };

   var chart = new google.charts.Bar(document.getElementById('barchart_material'));
   

   chart.draw(data, google.charts.Bar.convertOptions(options));
   

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