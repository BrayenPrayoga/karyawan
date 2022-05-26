<style type="text/css">
    .logo-icon { 
       width: 70px !important; margin-right: -12px; 
    }
    #sidebar-wrapper {
       background-color: rgba(25, 25, 25);
    }
    .sidebar-menu>li>a {
       color: rgb(255 255 255 / 0.75);
    }
    .sidebar-menu>li:hover>a, .sidebar-menu>li.active>a {
       color: white;
       background: #cc1616;
    }
    .sidebar-menu .sidebar-submenu>li>a {
       color: rgb(255 255 255 / 0.75);
    }
    .sidebar-menu .sidebar-submenu>li.active>a, .sidebar-menu .sidebar-submenu>li>a:hover {
       color: white;
    }
    .simplebar-track.vertical {
       top: 60px;
    }
</style>
 
<div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
    <div class="brand-logo">
        @if(Auth::guard('user')->check()) {{-- User --}}
       <a href="{{ route('user.dashboard') }}">
          <img src="{{ asset('assets/img/logo.png') }}" class="logo-icon" alt="logo icon">
          <h5 class="logo-text text-white">SELEKSI KARYAWAN</h5>
       </a>
       @elseif(Auth::guard('admin')->check()) {{-- Admin --}}
       <a href="{{ route('admin.dashboard') }}">
          <img src="{{ asset('assets/img/logo.png') }}" class="logo-icon" alt="logo icon">
          <h5 class="logo-text text-white">SELEKSI KARYAWAN</h5>
       </a>
       @endif
    </div>
    <ul class="sidebar-menu">
        @if(Auth::guard('user')->check()) {{-- User --}}
            <li>
                <a href="{{route('user.dashboard')}}" class="waves-effect">
                <i class="fa fa-tachometer"></i> <span>Dasboard</span>
                </a>
            </li>
            <li>
                <a href="{{route('user.profil')}}" class="waves-effect">
                <i class="fa fa-tachometer"></i> <span>Profil</span>
                </a>
            </li>
            <li>
                <a href="{{route('user.pertanyaan', 1)}}" class="waves-effect">
                <i class="fa fa-tachometer"></i> <span>Tes Kepribadian</span>
                </a>
            </li>
            <li>
                <a href="{{route('user.hasil', 1)}}" class="waves-effect">
                <i class="fa fa-tachometer"></i> <span>Hasil Tes</span>
                </a>
            </li>
        @elseif(Auth::guard('admin')->check()) {{-- Admin --}}
            <li>
                <a href="{{route('admin.dashboard')}}" class="waves-effect">
                <i class="fa fa-tachometer"></i> <span>Dasboard</span>
                </a>
            </li>
            <li>
                <a href="{{route('admin.pertanyaan')}}" class="waves-effect">
                <i class="fa fa-tachometer"></i> <span>Pertanyaan</span>
                </a>
            </li>
            <li>
                <a href="{{route('admin.hasil')}}" class="waves-effect">
                <i class="fa fa-tachometer"></i> <span>Hasil Tes</span>
                </a>
            </li>
            <li>
                <a href="{{route('admin.user_management')}}" class="waves-effect">
                <i class="fa fa-tachometer"></i> <span>User Management</span>
                </a>
            </li>
        @endif
    </ul>
</div>