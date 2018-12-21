@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-book"></i> Polling</a></li>
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
                        <i class="fa fa-user"></i>
                        <h3 class="box-title">{{$title}}</h3> 
                        <!-- Button add -->
                        <div class="pull-right">
                            <!-- <a type="button" class="add-modal btn btn-success" href="{{ route('pollingPdf',['download'=>'pdf']) }}" target="_blank"><span class="glyphicon glyphicon-print"></span> Cetak</a> -->
                            <a type="button" class="add-modal btn btn-info" href="{{ route('polling.index') }}"><span class="glyphicon glyphicon-search"></span> Detail Data Polling</a>
                        </div>    
                         <!--Include Modal  -->
                        
                    </div>

                    <!-- Box body -->
                    <div class="box-body">
                      
                      <table class="table table-bordered">
                        <!-- <thead>
                          <tr>
                            <th style="width:2%">No</th>
                            <th class="text-center">Kode Matakuliah</th>
                            <th class="text-center">Matakuliah</th>
                            <th class="text-center">SKS</th>
                          </tr>
                        </thead> -->
                        @foreach ($polling as $key => $value)

                          <tbody>
                            <tr>
                              <th style="width:2%">{{ $key + 1 }}</th>
                              <th>Polling : {{ $value['nama_polling'] }}</th>
                            </tr>
                            
                            @foreach ($value->aspek as $keys => $values)
                                <tbody>
                                  <tr>
                                    <th style="width:2%"></th>
                                    <td> <i class="fa fa-plus-circle"></i> Aspek : {{ $values['nama_aspek'] }}</td>
                                  </tr>
                                </tbody>

                                @if($values['item'] != null)
                                    <tbody>
                                      <tr>
                                        <th style="width:2%"></th>
                                        <th>Item </th>
                                        <th>Total Responden</th>
                                        <th>Score 1 </th>
                                        <th>Score 2 </th>
                                        <th>Score 3 </th>
                                        <th>Score 4 </th>
                                        <th>Score 5 </th>
                                      </tr>
                                    </tbody>
                                    @foreach ($values->item as $keyItem => $valueItem)
                                        <tbody>
                                          <tr> 
                                            <th style="width:2%"></th>
                                            <td><i class="fa fa-circle-o"></i> {{ $valueItem['nama_item'] }}</td>
                                            <td style="width:14%">{{ $valueItem['total_responden'] }}</td>
                                            <td style="width:7%">{{ $valueItem['jawaban_1'] }}</td>
                                            <td style="width:7%">{{ $valueItem['jawaban_2'] }}</td>
                                            <td style="width:7%">{{ $valueItem['jawaban_3'] }}</td>
                                            <td style="width:7%">{{ $valueItem['jawaban_4'] }}</td>
                                            <td style="width:7%">{{ $valueItem['jawaban_5'] }}</td>
                                          </tr>
                                        </tbody>
                                    @endforeach
                                    
                                @endif

                                

                            @endforeach
                            

                          </tbody>

                        @endforeach

                       
                        
                      </table>
                        
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

<script type="text/javascript">


</script>


@endsection