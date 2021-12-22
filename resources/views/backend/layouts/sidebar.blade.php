
@php
    $uri_path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
    $uri_segments = explode('/', $uri_path);  
    // Helper::print_exit($uri_segments);
@endphp
<ul class="navbar-nav sidebar sidebar-dark accordion ca-sidebar ca-sidebar" id="accordionSidebar">
    <a class="sidebar-brand d-flex align-items-center justify-content-start" href="{{route('admin')}}">
      <div class="sidebar-brand-icon">
        <img src="{{asset('images/logo.png')}}" alt="" class="img-profile">
      </div>
      {{-- <div class="sidebar-brand-text mx-3">Asker</div> --}}
    </a>
    <hr class="sidebar-divider my-0">
    <li class="nav-item ca-nav-item">
      <a class="nav-link ca-nav-link" href="{{url('admin/users')}}" >
        <i class="fas fa-sitemap"></i>
        <span>Users</span>
      </a>
    </li>
    <li class="nav-item ca-nav-item">
      <a class="nav-link ca-nav-link" href="{{url('admin/question')}}" aria-expanded="true">
        <img src="{{asset('images/question-mark-circle-svgrepo-com.png')}}" alt="" style="height: 18px;width: 18px;">
        {{-- <i class="fa fa-question-circle" aria-hidden="true"></i>  --}}      
        <span>Questions</span> 
      </a>
    </li>
    <li class="nav-item ca-nav-item {{isset($uri_segments[2]) && $uri_segments[2] == "post"}}">
        <a class="nav-link ca-nav-link" href="{{url('admin/video')}}"  aria-expanded="true" >
            <i class="fa fa-tasks"></i>
            <span>Promotional Video</span>
        </a>
    </li>
    <!-- General settings -->
    <li class="nav-item ca-nav-item {{isset($uri_segments[2]) && $uri_segments[2] == "settings"?"active":""}}" >
        <a class="nav-link ca-nav-link" href="{{route('settings')}}">
            <i class="fas fa-cog"></i>
            <span>Settings</span></a>
    </li>
    <div class="text-center d-none">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>