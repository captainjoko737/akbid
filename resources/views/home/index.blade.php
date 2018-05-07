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
      
    </section>
@endsection

@section('js')
  <!-- Chart -->
  <script src="{{ url('assets/bower_components/morris.js/morris.min.js') }}"></script>

@endsection