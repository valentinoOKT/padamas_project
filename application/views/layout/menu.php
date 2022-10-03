<?php 
$site                       = $this->konfigurasi_model->listing(); 
$site_nav                   = $this->konfigurasi_model->listing();
$nav_topik                  = $this->nav_model->nav_topik();
$nav_layanan                 = $this->nav_model->nav_layanan();
$nav_layanan                = $this->nav_model->nav_layanan();
$nav_att                    = $this->nav_model->nav_att();
$nav_acc                    = $this->nav_model->nav_acc();
$nav_related                = $this->nav_model->nav_related();
$nav_spare                  = $this->nav_model->nav_spare();
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
            
            <!-- ATTACHMENT -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ATTACHMENT<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_att as $nav_att) { ?>
                    <li class="sub-active"><a href="<?php echo base_url('produk/attachment/'.$nav_att->slug_produk) ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <?php echo $nav_att->judul_produk ?></a></li>
                    <?php } ?> 
                </ul>
            </li>

            <!-- ACCECORIES -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ACCECORIES<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_acc as $nav_acc) { ?>
                    <li class="sub-active"><a href="<?php echo base_url('produk/accecories/'.$nav_acc->slug_produk) ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <?php echo $nav_acc->judul_produk ?></a></li>
                    <?php } ?> 
                </ul>
            </li>

            <!-- SPARE PARTS -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PARTS<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_spare as $nav_spare) { ?>
                    <li class="sub-active"><a href="<?php echo base_url('produk/spare/'.$nav_spare->slug_produk) ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <?php echo $nav_spare->judul_produk ?></a></li>
                    <?php } ?> 
                </ul>
            </li>

            <!-- RELATED PRODUCTS -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">RELATED<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_related as $nav_related) { ?>
                    <li class="sub-active"><a href="<?php echo base_url('produk/accecories/'.$nav_related->slug_produk) ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <?php echo $nav_related->judul_produk ?></a></li>
                    <?php } ?> 
                </ul>
            </li>

            <!-- RENTAL -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">RENTAL<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_layanan as $nav_layanan) { ?>
                    <li class="sub-active"><a href="<?php echo base_url('layanan/layanan/'.$nav_layanan->slug_layanan) ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <?php echo $nav_layanan->judul_layanan ?></a></li>
                    <?php } ?> 
                </ul>
            </li>

            <!-- SERVICE -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SERVICE<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_topik as $nav_topik) { ?>
                    <li class="sub-active"><a href="<?php echo base_url('layanan/profil/'.$nav_topik->slug_layanan) ?>"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <?php echo $nav_topik->judul_layanan ?></a></li>
                    <?php } ?> 
                </ul>
            </li>



            <!-- IN STOCK -->
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

