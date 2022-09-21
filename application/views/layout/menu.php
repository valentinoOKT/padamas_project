<?php 
$site                       = $this->konfigurasi_model->listing(); 
$site_nav                   = $this->konfigurasi_model->listing();
$nav_topik                 = $this->nav_model->nav_topik();
$nav_berita                 = $this->nav_model->nav_berita();
$nav_layanan                = $this->nav_model->nav_layanan();
?>
<!-- Start Menu -->
<div class="bg-main-menu menu-scroll">
<div class="container">
<div class="row">
<div class="main-menu">
<a class="show-res-logo" href="<?php echo base_url() ?>"><img src="<?php echo $this->website->logo() ?>" alt="logo" class="img-responsive" style="max-height: 76px; width: auto;" /></a>
<nav class="navbar">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
        <a class="navbar-brand" href="<?php echo base_url() ?>"><img src="<?php echo $this->website->logo() ?>" alt="logo" class="img-responsive" style="max-height: 56px; width: auto;" /></a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <!-- HOME -->
            <li><a href="<?php echo base_url() ?>" class="active">BERANDA</a></li>

            <!-- RENTAL -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">RENTAL<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_layanan as $nav_layanan) { ?>
                    <li class="sub-active"><a href="<?php echo base_url('berita/layanan/'.$nav_layanan->slug_berita) ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <?php echo $nav_layanan->judul_berita ?></a></li>
                    <?php } ?> 
                </ul>
            </li>

            <!-- SERVICE -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SERVICE<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_topik as $nav_topik) { ?>
                    <li class="sub-active"><a href="<?php echo base_url('berita/profil/'.$nav_topik->slug_berita) ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <?php echo $nav_topik->judul_berita ?></a></li>
                    <?php } ?> 
                </ul>
            </li>

            <!-- GALERI -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">GALERI <span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    
                    <li class="sub-active"><a href="<?php echo base_url('galeri'); ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> In Stock</a></li>
                    <li class="sub-active"><a href="<?php echo base_url('sold'); ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Sold</a></li>                   
                </ul>
            </li>
            
            <!-- KONTAK  -->
            <li><a href="<?php echo base_url('kontak') ?>">KONTAK</a></li>
        </ul>
    </div>
    <!-- .navbar-collapse -->
</nav>
</div>
<!-- .main-menu -->
</div>
<!-- .row -->
</div>
<!-- .container -->
</div>
<!-- .bg-main-menu -->
</header>

