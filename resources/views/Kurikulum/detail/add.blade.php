@extends ('layout.app')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       {{ $title }}
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-calendar"></i> Kurikulum</a></li>
      </ol>
    </section>

    <!-- PROFILE -->

    <section class="content">
      
      <div class="row">
        <div class="col-md-12">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>

            {!! csrf_field() !!}
            
            {!! Form::open(array('route' => 'postDetailKurikulum','files'=>true, 'id' => 'contact_form')) !!}
            <div class="box-body"> 

                <div class="form-group" hidden>
                  <label>Kurikulum</label>  
                  <input name="id_kurikulum" id="id_kurikulum" required placeholder="Masukkan Tahun Kurikulum" class="form-control" type="text" value="{{ $id_kurikulum }}">
                </div>

                <table id="example" class="display" style="width:100%">
                    <thead>
                        <tr>
                            <th style="width:2%">No</th>
                            <th>Kode Matakuliah</th>
                            <th>Nama Matakuliah</th>
                            <th>SKS</th>
                            <th>Ceklis</th>
                        </tr>
                    </thead>
                    <tbody>

                      @foreach ($matakuliah as $key => $value)
                          <tr>
                            <td class="text-center">{{ $key + 1 }}</td>
                            <td>{{ $value->kode_matakuliah }}</td>
                            <td>{{ $value->nama_matakuliah }}</td>
                            <td>{{ $value->jumlah_sks }}</td>
                            <td>
                              <center>
                                <div class="checkbox">
                                  <label><input required type="checkbox" name="select[]" value="{{ $value->kode_matakuliah }}"></label>
                                </div>
                              </center>
                            </td>
                          </tr>
                      @endforeach
                       
                    </tbody>
                    
                </table>
                <br>
                <div class="row">
                  <div class="col-xs-2">
                    <button type="button" onclick="window.history.go(-1); return false;" class="btn btn-warning btn-block btn-flat">Kembali</button>
                  </div>
                  <div class="col-xs-2">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Simpan Data</button>
                  </div>
              </div>
            </div>
            {!! Form::close() !!}
          </div>
        </div>
      </div>
      
    </section>
    
@endsection

@section('css')
<!-- Fixed Column DataTables -->
    
    

<link href="{{ url('https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css') }}" rel="stylesheet">
<link href="{{ url('https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css') }}" rel="stylesheet">

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

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script> -->

<script type="text/javascript">

$(document).ready(function() {
        $('#example').DataTable( {
            dom: 'Bfrtip',
            buttons: [
            ]
        } );
    } );

  $(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            angkatan: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Tahun angkatan'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },semester: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Semester'
                    },
                    integer: {
                        message: 'Masukkan Nomor yang valid'
                    }
                }
            },kurikulum: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Kurikulum'
                    }
                }
            }
          }
        })
        
});

</script>

@endsection








