
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
            <li><a href="{{ url('mahasiswa/data') }}"><i class="fa fa-circle-o"></i> Data Mahasiswa</a></li>
            <!-- <li><a href="{{ url('profile/inpassing') }}"><i class="fa fa-circle-o"></i> Inpassing</a></li> -->
            <!-- <li><a href="{{ url('mahasiswa/nilai') }}"><i class="fa fa-circle-o"></i> Nilai Mahasiswa</a></li> -->
            <li><a href="{{ url('mahasiswa/matakuliah/data') }}"><i class="fa fa-circle-o"></i> Matakuliah Mahasiswa</a></li>
            <li><a href="{{ url('mahasiswa/nilai/data') }}"><i class="fa fa-circle-o"></i> Nilai Mahasiswa</a></li>
            <!-- <li><a href="{{ url('mahasiswa/transkrip/data') }}"><i class="fa fa-circle-o"></i> Transkrip Nilai</a></li> -->
            <li><a href="{{ url('khs/data') }}"><i class="fa fa-circle-o"></i> KHS</a></li>
            <!-- <li><a href="{{ url('mahasiswa/rekap/0') }}"><i class="fa fa-circle-o"></i> Rekap Nilai</a></li> -->
            <li><a href="{{ url('/registrasiUlang/data') }}"><i class="fa fa-circle-o"></i> Registrasi Ulang</a></li>
          </ul>
        </li>

        <li class="treeview {{ $user['is_admin'] }}">
          <a href="#">
            <i class="fa fa-book"></i> <span>Mata Kuliah</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <!-- <li><a href="{{ url('mahasiswa/data') }}"><i class="fa fa-circle-o"></i> Data Mahasiswa</a></li> -->
            <li class="{{ Request::segment(1) === 'Matakuliah' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/matakuliah/data') }}"><i class="fa fa-circle-o"></i> <span>Data Mata Kuliah</span></a></li>
            <li class="{{ Request::segment(1) === 'Kurikulum' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/kurikulum/data') }}"><i class="fa fa-circle-o"></i> <span>Data Kurikulum</span></a></li>
          </ul>
        </li>

        <!-- <li class="{{ Request::segment(1) === 'Matakuliah' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/matakuliah/data') }}"><i class="fa fa-book"></i> <span>Matakuliah</span></a></li> -->
        <li class="{{ Request::segment(1) === 'Dosen' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/dosen/data') }}"><i class="fa fa-mortar-board"></i> <span>Dosen</span></a></li>
        <li class="{{ Request::segment(1) === 'Dosen' ? 'active' : '' }} {{ $user['is_admin_lpm'] }}" ><a href="{{ url('/dosen/data') }}"><i class="fa fa-mortar-board"></i> <span>Dosen</span></a></li>
        <li class="{{ Request::segment(1) === 'Kepegawaian' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/kepegawaian/data') }}"><i class="fa fa-briefcase"></i> <span>Kepegawaian</span></a></li>
        <li class="{{ Request::segment(1) === 'Polling' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/polling/rekap') }}"><i class="fa fa-pencil-square"></i> <span>Polling</span></a></li>
        <li class="{{ Request::segment(1) === 'Pengumuman' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/pengumuman/data') }}"><i class="fa fa-bullhorn"></i> <span>Pengumuman</span></a></li>
        <!-- <li class="{{ Request::segment(1) === 'periode' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/periode/data') }}"><i class="fa fa-calendar"></i> <span>Periode</span></a></li> -->
        

        <li class="{{ Request::segment(1) === 'Penelitian' ? 'active' : '' }} {{ $user['is_admin_lpm'] }}" ><a href="{{ url('/penelitian/data') }}"><i class="fa fa-sticky-note-o"></i> <span>Penelitian</span></a></li>
        <li class="{{ Request::segment(1) === 'Pengabdian' ? 'active' : '' }} {{ $user['is_admin_lpm'] }}" ><a href="{{ url('/pengabdian/data') }}"><i class="fa fa-industry"></i> <span>Pengabdian</span></a></li>

        <li class="{{ Request::segment(1) === 'Biodata' ? 'active' : '' }} {{ $user['is_mahasiswa'] }}" ><a href="{{ url('/mahasiswa/biodata') }}"><i class="fa fa-user"></i> <span>Biodata</span></a></li>
        <li class="{{ Request::segment(1) === 'KHS' ? 'active' : '' }} {{ $user['is_mahasiswa'] }}" ><a href="{{ url('/mahasiswa/khs/0') }}"><i class="fa fa-archive"></i> <span>KHS</span></a></li>
        <li class="{{ Request::segment(1) === 'KRS' ? 'active' : '' }} {{ $user['is_mahasiswa'] }}" ><a href="{{ url('/mahasiswa/krs') }}"><i class="fa fa-briefcase"></i> <span>KRS</span></a></li>
        <li class="{{ Request::segment(1) === 'Rekap' ? 'active' : '' }} {{ $user['is_pimpinan'] }}" ><a href="{{ url('/rekap') }}"><i class="fa fa-users"></i> <span>Rekap Mahasiswa</span></a></li>
        <li class="{{ Request::segment(1) === 'Rekap' ? 'active' : '' }} {{ $user['is_pimpinan'] }}" ><a href="{{ url('/mahasiswa/rekap/0') }}"><i class="fa fa-book"></i> <span>Rekap Nilai Mahasiswa</span></a></li>
        <li class="{{ Request::segment(1) === 'Rekap' ? 'active' : '' }} {{ $user['is_pimpinan'] }}" ><a href="{{ url('/rekap/matakuliah') }}"><i class="fa fa-book"></i> <span>Rekap Matakuliah</span></a></li>


        <li class="{{ Request::segment(1) === 'login' ? 'active' : '' }} {{ $user['is_login'] }}" ><a href="{{ url('/auth/login') }}"><i class="fa fa-lock"></i> <span>Masuk</span></a></li>
        <li class="{{ Request::segment(1) === 'Ganti Password' ? 'active' : '' }} {{ $user['is_admin'] }}" ><a href="{{ url('/gantiPassword') }}"><i class="fa fa-lock"></i> <span>Ganti Password</span></a></li>
        <li class="{{ Request::segment(1) === 'Ganti Password' ? 'active' : '' }} {{ $user['is_admin_lpm'] }}" ><a href="{{ url('/gantiPassword') }}"><i class="fa fa-lock"></i> <span>Ganti Password</span></a></li>
        <li class="{{ Request::segment(1) === 'logout' ? 'active' : '' }} {{ $user['is_logout'] }}" ><a href="{{ url('/auth/logout') }}"><i class="fa fa-sign-out"></i> <span>Keluar</span></a></li>
      </ul>
      
    </section>
    <!-- /.sidebar -->
  </aside>

  