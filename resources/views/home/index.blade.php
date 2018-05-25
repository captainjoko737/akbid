@extends ('layout.app')

@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Beranda
      </h1>
      <ol class="breadcrumb">
        <li class="active"><a href="#"><i class="fa fa-home"></i> Beranda</a></li>
      </ol>
    </section>
    <hr>
    
    <section>
      
      <div class="row">
        <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Pengumuman</h3>
            </div>

            <div class="box-body">
              <div class="box-group" id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                
                @foreach ($pengumuman as $key => $value)

                    <div class="panel box box-primary">
                      <div class="box-header with-border">
                        <h4 class="box-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#{{ $value->id_pengumuman }}" style="color:black;">
                            - {{ $value->judul }}
                          </a>
                          
                        </h4>
                        <a href="" class="pull-right"><i class="fa fa-bullhorn"></i></a>
                      </div>
                      <div id="{{ $value->id_pengumuman }}" class="panel-collapse collapse">
                        <div class="box-body">
                          <div>
                              <label class="control-label" style="font-weight: 400;">{!! $value->konten !!}</label>
                          </div>
                        </div>
                      </div>
                    </div>

                @endforeach
                
              </div>
            </div>
          </div>
        </div>
      </div>

        
    </section>  
@endsection

@section('js')
  <!-- Chart -->
  <script src="{{ url('assets/bower_components/morris.js/morris.min.js') }}"></script>

@endsection