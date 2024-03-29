<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?php echo base_url('admin/Dashboard') ?>" class="brand-link">
      <span class="brand-text font-weight-light"><?php echo $this->konfigurasi_model->listing()->singkatan; ?></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php 
          $user_aktif = $this->user_model->detail($this->session->userdata('id_user'));

          if($user_aktif->gambar =="") {
          echo $this->website->icon(); }else{ echo base_url('assets/upload/user/thumbs/'.$user_aktif->gambar); } ?>" class="img-circle elevation-2" alt="<?php echo $this->session->userdata('nama'); ?>">
        </div>
        <div class="info">
          <a href="<?php echo base_url('admin/akun') ?>" class="d-block"><?php echo $this->session->userdata('nama'); ?> (<?php echo $this->session->userdata('akses_level'); ?>)
          </a>
        </div>
      </div>


      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <!-- DASHBOARD -->
          <li class="nav-item">
            <a href="<?php echo base_url('admin/Dashboard') ?>" class="nav-link">
              <i class="nav-icon fa fa-dashboard"></i>
              <p>
                DASHBOARD
              </p>
            </a>
          </li>

          
          <!-- LAYANAN -->
          <li class="nav-item">
            <a href="<?php echo base_url('admin/layanan') ?>" class="nav-link">
              <i class="nav-icon fa fa-newspaper"></i>
              <p>LAYANAN</p>
            </a>
          </li> 

          <!-- PRODUK -->
          <li class="nav-item">
            <a href="<?php echo base_url('admin/produk') ?>" class="nav-link">      
              <i class="nav-icon fas fa-box-open"></i>
              <p>PRODUK</p>
            </a>
          </li>

          <!-- STOCK -->
          <li class="nav-item">
            <a href="<?php echo base_url('admin/stock') ?>" class="nav-link">
              <i class="nav-icon fa fa-image"></i>
              <p>STOCK</p>
            </a>
          </li> 

          <!-- SOLD -->
          <li class="nav-item">
            <a href="<?php echo base_url('admin/sold') ?>" class="nav-link">
              <i class="nav-icon fa fa-image"></i>
              <p>SOLD</p>
            </a>
          </li>
          
          <?php if($this->session->userdata('akses_level')=="Admin") { ?>
          <!-- MENU USER -->
          <li class="nav-item">
            <a href="<?php echo base_url('admin/user') ?>" class="nav-link">
              <i class="nav-icon fa fa-lock"></i>
              <p>
                USER SYSTEM
              </p>
            </a>
          </li>

          <!-- KONFIGURASI MENU -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-wrench"></i>
              <p>KONFIGURASI <i class="right fa fa-angle-left"></i></p>
            </a>
            <ul class="nav nav-treeview">
              
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi') ?>" class="nav-link"><i class="fa fa-wrench nav-icon"></i><p>Konfigurasi Umum</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi/email_setting') ?>" class="nav-link"><i class="fa fa-sitemap nav-icon"></i><p>Email Setting</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi/logo') ?>" class="nav-link"><i class="fa fa-home nav-icon"></i><p>Ganti Logo</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi/icon') ?>" class="nav-link"><i class="fa fa-upload nav-icon"></i><p>Ganti Icon</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi/gambar') ?>" class="nav-link"><i class="fa fa-image nav-icon"></i><p>Ganti Foto Profil</p></a>
              </li>
            </ul>
          </li>
        <?php } ?>
          <!-- LOGOUT -->
          <li class="nav-item">
            <a href="<?php echo base_url('login/logout') ?>" class="nav-link">
              <i class="nav-icon fa fa-sign-out"></i>
              <p>
                LOGOUT
              </p>
            </a>
          </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1><?php echo $title ?></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/Dashboard') ?>">Dashboard</a></li>
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/'.$this->uri->segment(2)) ?>"><?php echo ucfirst(str_replace('_',' ',$this->uri->segment(2))) ?></a></li>
              <li class="breadcrumb-item active"><?php echo character_limiter($title,10) ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <!-- /.card-header -->
            <div class="card-body">