<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="<?php echo base_url('assets/temaalus/image/mit.png'); ?>" type="image/gif" sizes="20x20">
  <title><?php echo $title; ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/dist/css/AdminLTE.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/dist/fontawesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/dist/ionicons/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/plugins/datatables/dataTables.bootstrap.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/plugins/jQueryUI/jquery-ui.css">
  <!-- Theme style -->
 
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/dist/css/skins/_all-skins.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/temaalus/dist/css/toasty.css">


  <![endif]-->
  <!-- jQuery 2.2.3 -->
  <script src="<?php echo base_url(); ?>assets/temaalus/plugins/jQuery/jquery-2.2.3.min.js"></script>
  <!-- Bootstrap 3.3.6 -->
  <script src="<?php echo base_url(); ?>assets/temaalus/bootstrap/js/bootstrap.min.js"></script>
  <!-- DataTables -->
  <script src="<?php echo base_url(); ?>assets/temaalus/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/temaalus/plugins/datatables/dataTables.bootstrap.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/temaalus/plugins/datepicker/bootstrap-datepicker.js"></script>
  <script src="<?php echo base_url(); ?>assets/temaalus/plugins/jQueryUI/jquery-ui.js"></script>
  <!-- Toasty Notif -->
  <script src="<?php echo base_url(); ?>assets/temaalus/dist/js/toasty.js"></script>

<script src="<?php echo base_url(); ?>assets/Highcharts5012/code/highcharts.js"></script>
<script src="<?php echo base_url(); ?>assets/Highcharts5012/code/highcharts-3d.js"></script>
<script src="<?php echo base_url(); ?>assets/Highcharts5012/code/modules/exporting.js"></script>

  <script type="text/javascript">
      var base_url = "<?php echo base_url(); ?>";
  </script>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue-light sidebar-mini">
<div class="wrapper">

  <header class="main-header">
     <a href="<?php echo base_url('dashboard');?>" class="logo">
        
        <span class="logo-mini"><b>S</b>DM</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>SIMREG</b> Data Makro</span>
      </a>
    <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
              <!-- Menu Toggle Button -->

              <ul class="dropdown-menu">
              
              </ul>
            </li>
          </ul>
        </div> 
        <!-- /.navbar-custom-menu -->
      <!-- /.container-fluid -->
    </nav>
  </header>

   <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
          <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                  <i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
          <li style="border-bottom:1px dotted #3c8dbc;">
            <a href="<?php echo base_url(); ?>home/dm_pertumbuhan_ekonomi"><i class="fa fa fa-bar-chart"></i> <span>Pertumbuhan Ekonomi</span></a>
          </li>
          <li style="border-bottom:1px dotted #3c8dbc;">
            <a href="<?php echo base_url(); ?>home/dm_kemiskinan"><i class="fa fa-frown-o"></i> <span>Kemiskinan</span></a>
          </li>
          <li style="border-bottom:1px dotted #3c8dbc;">
            <a href="<?php echo base_url(); ?>home/dm_pengangguran"><i class="fa fa-meh-o"></i> <span>Pengangguran</span></a>
          </li>
          <li style="border-bottom:1px dotted #3c8dbc;">
            <a href="<?php echo base_url(); ?>home/dm_ipm"><i class="fa fa-leaf"></i> <span>IPM</span></a>
          </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>