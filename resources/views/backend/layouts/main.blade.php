<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>eCom - Admin Dashboard</title>

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet"/>
  <link href="https://cdn.materialdesignicons.com/3.0.39/css/materialdesignicons.min.css" rel="stylesheet" />

  <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">

  <!-- PLUGINS CSS STYLE -->
  <link href="{{asset ('assets/plugins/toaster/toastr.min.css') }}" rel="stylesheet" />
  <link href="{{asset ('assets/plugins/nprogress/nprogress.css') }}" rel="stylesheet" />
  <link href="{{asset ('assets/plugins/flag-icons/css/flag-icon.min.css') }}" rel="stylesheet"/>
  <link href="{{asset ('assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css') }}" rel="stylesheet" />
  <link href="{{asset ('assets/plugins/ladda/ladda.min.css') }}" rel="stylesheet" />
  <link href="{{asset ('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet" />
  <link href="{{asset ('assets/plugins/daterangepicker/daterangepicker.css') }}" rel="stylesheet" />


  <!-- SLEEK CSS -->
  <link id="sleek-css" rel="stylesheet" href="{{asset ('assets/css/sleek.css') }}" />

  

  <!-- FAVICON -->
  <link href="{{asset ('assets/img/favicon.png')}}" rel="shortcut icon" />

  <!--
    HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
  -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="{{asset ('assets/plugins/nprogress/nprogress.js') }}"></script>
</head>


  <body class="sidebar-fixed sidebar-dark header-light header-fixed" id="body">
    <script>
      NProgress.configure({ showSpinner: false });
      NProgress.start();
    </script>

    <div class="mobile-sticky-body-overlay"></div>

    <div class="wrapper">
      
              <!--
          ====================================
          ——— LEFT SIDEBAR WITH FOOTER
          =====================================
        -->
        <aside class="left-sidebar bg-sidebar">
          <div id="sidebar" class="sidebar sidebar-with-footer">
            <!-- Aplication Brand -->
            <div class="app-brand">
              <a href="/index.html">
                <svg
                  class="brand-icon"
                  xmlns="http://www.w3.org/2000/svg"
                  preserveAspectRatio="xMidYMid"
                  width="30"
                  height="33"
                  viewBox="0 0 30 33"
                >
                  <g fill="none" fill-rule="evenodd">
                    <path
                      class="logo-fill-blue"
                      fill="#7DBCFF"
                      d="M0 4v25l8 4V0zM22 4v25l8 4V0z"
                    />
                    <path class="logo-fill-white" fill="#FFF" d="M11 4v25l8 4V0z" />
                  </g>
                </svg>
                <span class="brand-name">Admin Dashboard</span>
              </a>
            </div>
            <!-- begin sidebar scrollbar -->
            <div class="sidebar-scrollbar">

              <!-- sidebar menu -->
              <ul class="nav sidebar-inner" id="sidebar-menu">


                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#ui-elements"
                      aria-expanded="false" aria-controls="ui-elements">
                      <i class="mdi mdi-folder-multiple-outline"></i>
                      <span class="nav-text">Products</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="ui-elements"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                        <li  class="has-sub" >
                          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#Products"
                            aria-expanded="false" aria-controls="Products">
                            <span class="nav-text">Products</span> <b class="caret"></b>
                          </a>
                          <ul  class="collapse"  id="Products">
                            <div class="sub-menu">
                              
                              <li >
                                <a href="{{ route('admin.products') }}">All Products</a>
                              </li>
                              
                              <li >
                                <a href="#">Add Product</a>
                              </li>

                            </div>
                          </ul>
                        </li>


                        
                        <li  class="has-sub" >
                          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#Categories"
                            aria-expanded="false" aria-controls="Categories">
                            <span class="nav-text">Categories</span> <b class="caret"></b>
                          </a>
                          <ul  class="collapse"  id="Categories">
                            <div class="sub-menu">
                              
                              <li >
                                <a href="{{ route('admin.categories') }}">All Categories</a>
                              </li>
                              
                              <li >
                                <a href="{{ route('category.add') }}">Add Category</a>
                              </li>

                            </div>
                          </ul>
                        </li>

                        
                        <li  class="has-sub" >
                          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#Brands"
                            aria-expanded="false" aria-controls="Brands">
                            <span class="nav-text">Brands</span> <b class="caret"></b>
                          </a>
                          <ul  class="collapse"  id="Brands">
                            <div class="sub-menu">
                              
                              <li >
                                <a href="{{ route('admin.brands') }}">All Brands</a>
                              </li>
                              
                              <li >
                                <a href="{{ route('brands.add') }}">Add Brand</a>
                              </li>

                            </div>
                          </ul>
                        </li>

                        <li  class="has-sub" >
                          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#Suppliers"
                            aria-expanded="false" aria-controls="Suppliers">
                            <span class="nav-text">Suppliers</span> <b class="caret"></b>
                          </a>
                          <ul  class="collapse"  id="Suppliers">
                            <div class="sub-menu">
                              
                              <li >
                                <a href="#">All Suppliers</a>
                              </li>
                              
                              <li >
                                <a href="#">Add Supplier</a>
                              </li>

                            </div>
                          </ul>
                        </li>

                        

                  
                      </div>
                    </ul>
                  </li>

                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#ui-setting"
                      aria-expanded="false" aria-controls="ui-setting">
                      <i class="mdi mdi-settings"></i>
                      <span class="nav-text">Site Setting</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="ui-setting"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                        <li  class="has-sub" >
                          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#Identity"
                            aria-expanded="false" aria-controls="Identity">
                            <span class="nav-text">Identity</span> <b class="caret"></b>
                          </a>
                          <ul  class="collapse"  id="Identity">
                            <div class="sub-menu">
                              
                              <li >
                                <a href="#">Header</a>
                              </li>
                              
                              <li >
                                <a href="#">Footer</a>
                              </li>
                              <li >
                                <a href="#">Copyright</a>
                              </li>

                            </div>
                          </ul>
                        </li>
                        

                  
                      </div>
                    </ul>
                  </li>

                

                
              </ul>

            </div>

            
          </div>
        </aside>

      

      <div class="page-wrapper">
                  <!-- Header -->
          <header class="main-header " id="header">
            <nav class="navbar navbar-static-top navbar-expand-lg">
              <!-- Sidebar toggle button -->
              <button id="sidebar-toggler" class="sidebar-toggle">
                <span class="sr-only">Toggle navigation</span>
              </button>
              <!-- search form -->
              <div class="search-form d-none d-lg-inline-block">
                <div class="input-group">
                  <button type="button" name="search" id="search-btn" class="btn btn-flat">
                    <i class="mdi mdi-magnify"></i>
                  </button>
                  <input type="text" name="query" id="search-input" class="form-control" placeholder="'button', 'chart' etc."
                    autofocus autocomplete="off" />
                </div>
                <div id="search-results-container">
                  <ul id="search-results"></ul>
                </div>
              </div>

              <div class="navbar-right ">
                <ul class="nav navbar-nav">
                {{--                  
                  <li class="dropdown notifications-menu">
                    <button class="dropdown-toggle" data-toggle="dropdown">
                      <i class="mdi mdi-bell-outline"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <li class="dropdown-header">You have 5 notifications</li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-account-plus"></i> New user registered
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-account-remove"></i> User deleted
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 07 AM</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-chart-areaspline"></i> Sales report is ready
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 12 PM</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-account-supervisor"></i> New client
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-server-network-off"></i> Server overloaded
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 05 AM</span>
                        </a>
                      </li>
                      <li class="dropdown-footer">
                        <a class="text-center" href="#"> View All </a>
                      </li>
                    </ul>
                  </li> --}}
                  <!-- User Account -->
                  <li class="dropdown user-menu">
                    <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                      <img src="{{asset ('assets/img/user/user.png') }}" class="user-image" alt="User Image" />
                      <span class="d-none d-lg-inline-block">{{ Auth::user()->name }}</span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <!-- User image -->
                      <li class="dropdown-header">
                        <img src="{{asset ('assets/img/user/user.png') }}" class="img-circle" alt="User Image" />
                        <div class="d-inline-block">
                          {{ Auth::user()->name }} <small class="pt-1">{{ Auth::user()->email }}</small>
                        </div>
                      </li>

                      <li>
                        <a href="profile.html">
                          <i class="mdi mdi-account"></i> My Profile
                        </a>
                      </li>
                      <li>
                        <a href="email-inbox.html">
                          <i class="mdi mdi-email"></i> Message
                        </a>
                      </li>
                      <li>
                        <a href="#"> <i class="mdi mdi-diamond-stone"></i> Projects </a>
                      </li>
                      <li>
                        <a href="#"> <i class="mdi mdi-settings"></i> Account Setting </a>
                      </li>

                      <li class="dropdown-footer">
                        <a href="{{ route('logout') }}"> <i class="mdi mdi-logout"></i> Log Out </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </nav>


          </header>

          <div class="content">
            <div class="row">
                <div class="col-12">
        
                    @if(Session::has('message'))
                    <div class="alert {{ Session::get('alert-class') }} fade-in" id="alert">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                    {{ Session::get('message') }}
                    </div>
                    @endif

        @yield('content')


      </div>
    </div>
</div>
        <footer class="footer mt-auto">
            <div class="copyright bg-white">
              <p>
                &copy; <span id="copy-year">2019</span> Copyright Sleek Dashboard Bootstrap Template by
                <a
                  class="text-primary"
                  href="http://www.iamabdus.com/"
                  target="_blank"
                  >Abdus</a
                >.
              </p>
            </div>
            <script>
                var d = new Date();
                var year = d.getFullYear();
                document.getElementById("copy-year").innerHTML = year;
            </script>
          </footer>

      </div>
    </div>

    
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCn8TFXGg17HAUcNpkwtxxyT9Io9B_NcM" defer></script>
<script src="{{asset ('assets/plugins/jquery/jquery.min.js') }}"></script>
<script src="{{asset ('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{asset ('assets/plugins/toaster/toastr.min.js') }}"></script>
<script src="{{asset ('assets/plugins/slimscrollbar/jquery.slimscroll.min.js') }}"></script>
<script src="{{asset ('assets/plugins/charts/Chart.min.js') }}"></script>
<script src="{{asset ('assets/plugins/ladda/spin.min.js') }}"></script>
<script src="{{asset ('assets/plugins/ladda/ladda.min.js') }}"></script>
<script src="{{asset ('assets/plugins/jquery-mask-input/jquery.mask.min.js') }}"></script>
<script src="{{asset ('assets/plugins/select2/js/select2.min.js') }}"></script>
<script src="{{asset ('assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js') }}"></script>
<script src="{{asset ('assets/plugins/jvectormap/jquery-jvectormap-world-mill.js') }}"></script>
<script src="{{asset ('assets/plugins/daterangepicker/moment.min.js') }}"></script>
<script src="{{asset ('assets/plugins/daterangepicker/daterangepicker.js') }}"></script>
<script src="{{asset ('assets/plugins/jekyll-search.min.js') }}"></script>
<script src="{{asset ('assets/js/sleek.js') }}"></script>
<script src="{{asset ('assets/js/chart.js') }}"></script>
<script src="{{asset ('assets/js/date-range.js') }}"></script>
<script src="{{asset ('assets/js/map.js') }}"></script>
<script src="{{asset ('assets/js/custom.js') }}"></script>

<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>



<script>
  $("#alert").fadeTo(10000, 500).slideUp(500, function(){
  $("#alert").slideUp(500);
});
</script>
  </body>
</html>

