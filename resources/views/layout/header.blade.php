
  <header class="main-header">
    <!-- Logo -->
    <a href="{{ url('/home') }}" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">A Ar</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">Akbid Ar-Rahmah</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="" class="dropdown-toggle" data-toggle="dropdown">
              <img src="{{ url('public/assets/photo_profile/').'/'.Auth::user()->photo }}" class="user-image" alt="">
              <span class="hidden-xs">Hallo, {{ Auth::user()->nama_lengkap }}</span>
            </a>
            
          </li>
        </ul>
      </div>
    </nav>
  </header>