<style type="text/css" media="screen">
  .thumbnail img {
    height: auto !important;
  }
</style>
<!-- PAGE TITLE SECTION-->
<section class="pageTitleSection">
<div class="container">
<div class="pageTitleInfo">
  <h2><?php echo $title ?></h2>
  <ol class="breadcrumb">
    <li><a href="<?php echo base_url() ?>">Home</a></li>
    <li class="active"><?php echo $title ?></li>
  </ol>
</div>
</div>
</section>

<!-- MAIN SECTION -->
<section class="mainContent full-width clearfix">
<div class="container">
<div class="row">

  <div class="col-md-9 col-sm-8 col-xs-12 block">
    <div class="thumbnail thumbnailContent">
      <img src="<?php echo base_url('assets/upload/image/'.$produk->gambar) ?>" alt="image" class="img-responsive">
      <div class="sticker-round bg-color-1"><?php echo date('d',strtotime($produk->tanggal)) ?> <br><?php echo date('M',strtotime($produk->tanggal)) ?></div>
      <div class="caption border-color-1 singleBlog">
        <h3 class="color-1"><?php echo $title ?></h3>
        <ul class="list-inline blogInfo">
          <li><i class="fa fa-user" aria-hidden="true"></i><?php echo $produk->nama ?></li>
          <li><i class="fa fa-tags" aria-hidden="true"></i><?php echo $produk->nama_kategori ?></li>
        </ul>
        <?php echo $produk->isi ?>
        <ul class="list-inline socailLink">
          <li><a href="<?php echo $site->facebook ?>" class="bg-color-1" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
          <li><a href="<?php echo $site->youtube ?>" class="bg-color-2"  target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
          <li><a href="<?php echo $site->instagram ?>" class="bg-color-3"  target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
</div>
</section>
