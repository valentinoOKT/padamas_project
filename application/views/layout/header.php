<?php
$site = $this->konfigurasi_model->listing();
?>
<style>
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite; /* Safari */
  animation: spin 2s linear infinite;
}

/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
<div class="box-style">
<div class="color-btn">
<a href="#"><i class="fa fa-cog fa-spin" aria-hidden="true"></i></a>
</div>
<div class="box-style-inner">
<h3>Box Layout</h3>
<div class="box-element">
<div class="box-heading">
<h5>HTML Layout</h5>
</div>
<div class="box-content">
<ul class="box-customize">
<li><a class="boxed-btn" href="#">Boxed</a></li>
<li><a class="wide-btn" href="#">Wide</a></li>
<li><a class="rtl-btn" href="#">Rtl</a></li>
<li><a class="ltl-btn" href="#">Ltl</a></li>
</ul>
</div>
</div>
<div class="box-element">
<div class="box-heading">
<h5>Backgroud Images</h5>
</div>
<div class="box-content">
<ul class="box-bg-img">
<li>
    <a class="bg-1" href="#"><img src="<?php echo base_url() ?>assets/tema/assets/images/box-style/01.jpg" alt=""></a>
</li>
<li>
    <a class="bg-2" href="#"><img src="<?php echo base_url() ?>assets/tema/assets/images/box-style/02.jpg" alt=""></a>
</li>
<li>
    <a class="bg-3" href="#"><img src="<?php echo base_url() ?>assets/tema/assets/images/box-style/03.jpg" alt=""></a>
</li>
<li>
    <a class="bg-4" href="#"><img src="<?php echo base_url() ?>assets/tema/assets/images/box-style/04.jpg" alt=""></a>
</li>
<li>
    <a class="bg-5" href="#"><img src="<?php echo base_url() ?>assets/tema/assets/images/box-style/05.jpg" alt=""></a>
</li>
<li>
    <a class="bg-6" href="#"><img src="<?php echo base_url() ?>assets/tema/assets/images/box-style/06.jpg" alt=""></a>
</li>
<li>
    <a class="bg-7" href="#"><img src="<?php echo base_url() ?>assets/tema/assets/images/box-style/07.jpg" alt=""></a>
</li>
<li>
    <a class="bg-8" href="#"><img src="<?php echo base_url() ?>assets/tema/assets/images/box-style/08.jpg" alt=""></a>
</li>
</ul>
</div>
</div>
<div class="box-element">
<div class="box-heading">
<h5>Backgroud Pattern</h5>
</div>
<div class="box-content">
<ul class="box-pattern-img">
<li>
    <a class="pt-1" href="#"><img src="../../../../www.codexcoder.com/images/auror/pt-image/01.png"" alt=""></a>
</li>
<li>
    <a class="pt-2" href="#"><img src="../../../../www.codexcoder.com/images/auror/pt-image/02.png"" alt=""></a>
</li>
<li>
    <a class="pt-3" href="#"><img src="../../../../www.codexcoder.com/images/auror/pt-image/03.png"" alt=""></a>
</li>
<li>
    <a class="pt-4" href="#"><img src="../../../../www.codexcoder.com/images/auror/pt-image/04.png"" alt=""></a>
</li>
<li>
    <a class="pt-5" href="#"><img src="../../../../www.codexcoder.com/images/auror/pt-image/05.png"" alt=""></a>
</li>
<li>
    <a class="pt-6" href="#"><img src="../../../../www.codexcoder.com/images/auror/pt-image/06.png"" alt=""></a>
</li>
<li>
    <a class="pt-7" href="#"><img src="../../../../www.codexcoder.com/images/auror/pt-image/07.png"" alt=""></a>
</li>
<li>
    <a class="pt-8" href="#"><img src="../../../../www.codexcoder.com/images/auror/pt-image/08.png"" alt=""></a>
</li>
</ul>
</div>
</div>
</div>
</div>


<!-- Start Pre-Loader-->

<div id="loading">
<div id="loading-center">
<div id="loading-center-absolute">
<div class="loader"></div>
</div>
</div>
</div>


<div class="box-layout">

<!-- End Pre-Loader -->

<header class="header-style-2">
<div class="bg-header-top">
<div class="container">
<div class="row">
<div class="header-top">
    <ul class="h-contact">
        <li><i class="fa fa-building-o"></i> <?php echo $site->namaweb ?></li>
    </ul>
</div>
<!-- .header-top -->
</div>
<!-- .header-top -->
</div>
<!-- .container -->
</div>
<!-- .bg-header-top -->
