
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="image text-center">
          <!-- <img src="{{ url('assets/image_assets/logo.png') }}" class="img-circle" alt="User Image"> -->
        </div>
        
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="{{ Request::segment(1) === 'home' ? 'active' : '' }}" ><a href="{{ url('/home') }}"><i class="fa fa-home"></i> <span>Beranda</span></a></li>
        <li class="treeview {{ $user['is_admin'] }}">
          <a href="#">
            <i class="fa fa-user"></i> <span>Mahasiswa</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ url('mahasiswa/data') }}"><i class="fa fa-circle-o"></i>Data Mahasiswa</a></li>
            <!-- <li><a href="{{ url('profile/inpassing') }}"><i class="fa fa-circle-o"></i> Inpassing</a></li> -->
            <li><a href="{{ url('mahasiswa/nilai') }}"><i class="fa fa-circle-o"></i> Nilai Mahasiswa</a></li>
          </ul>
        </li>

         <li class="{{ Request::segment(1) === 'Matakuliah' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/matakuliah/data') }}"><i class="fa fa-book"></i> <span>Matakuliah</span></a></li>
          <li class="{{ Request::segment(1) === 'Dosen' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/dosen/data') }}"><i class="fa fa-mortar-board"></i> <span>Dosen</span></a></li>
           <li class="{{ Request::segment(1) === 'Kepegawaian' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/kepegawaian/data') }}"><i class="fa fa-briefcase"></i> <span>Kepegawaian</span></a></li>
           <li class="{{ Request::segment(1) === 'Polling' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/auth/logout') }}"><i class="fa fa-pencil-square"></i> <span>Polling</span></a></li>
           


        <li class="{{ Request::segment(1) === 'login' ? 'active' : '' }} {{ $user['is_login'] }}" ><a href="{{ url('/auth/login') }}"><i class="fa fa-lock"></i> <span>Masuk</span></a></li>
        <li class="{{ Request::segment(1) === 'logout' ? 'active' : '' }} {{ $user['is_logout'] }}" ><a href="{{ url('/auth/logout') }}"><i class="fa fa-lock"></i> <span>Ganti Password</span></a></li>
        <li class="{{ Request::segment(1) === 'logout' ? 'active' : '' }} {{ $user['is_logout'] }}" ><a href="{{ url('/auth/logout') }}"><i class="fa fa-sign-out"></i> <span>Keluar</span></a></li>
      </ul>
      
    </section>
    <!-- /.sidebar -->
  </aside>

  