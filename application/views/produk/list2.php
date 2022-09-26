<div id="content" role="main">
<div class="page-header dark larger larger-desc">
<div class="container">
<div class="row">
    <div class="col-md-12">
        <h1><?php echo $title ?></h1>
    </div><!-- End .col-md-6 -->
</div><!-- End .row -->
</div><!-- End .container -->
</div><!-- End .page-header -->

<div class="mb40"></div><!-- space -->

<div class="container">
<div class="row">
<div class="max-col-3" id="blog-item-container">
    
    <?php foreach($produk as $produk) { ?>

      <article class="entry entry-box">
        <?php if($produk->gambar != "") { ?>
        <div class="entry-media">
          <figure>
          <a href="<?php echo base_url('produk/read/'.$produk->slug_produk) ?>">
            <img src="<?php echo base_url('assets/upload/image/thumbs/'.$produk->gambar) ?>" alt="<?php echo $produk->judul_produk ?>" class="img-responsive">
          </a>
           </figure>
        </div><!-- End .entry-media -->
        <?php } ?>
        <div class="entry-content-wrapper">
          <span class="entry-date bg-info"><?php echo date('d',strtotime($produk->tanggal_publish)) ?><span><?php echo date('M',strtotime($produk->tanggal_publish)) ?></span></span>

         
            <h2 class="entry-title"><a href="<?php echo base_url('produk/read/'.$produk->slug_produk) ?>" class="color-<?php echo(rand(1,6)); ?>"><?php echo $produk->judul_produk ?></a></h2>

            
            <div class="entry-content">
            <p><?php echo strip_tags(character_limiter($produk->isi,160)) ?></p>
            </div>
        </div>
        
        <footer class="entry-footer clearfix">
            <span class="entry-cats">
                <span class="entry-label"><i class="fa fa-tag"></i></span><a href="<?php echo base_url('produk/kategori/'.$produk->slug_kategori) ?>"><?php echo $produk->nama_kategori ?></a>
            </span><!-- End .entry-tags -->
            <span class="entry-separator">/</span>
            <a href="#" class="entry-comments"><i class="fa fa-eye"></i> <?php echo $produk->hits ?> hits</a>
            <span class="entry-separator">/</span>
            by <a href="#" class="entry-author"><i class="fa fa-user"></i> <?php if($produk->nama =="") { echo "Admin"; }else{ echo $produk->nama; } ?></a>
            
        </footer>

    </article>

    <?php } ?> 

    </div>
</div>

    <div class="clearfix"></div>
        <div class="col-md-12 text-center pagination pagin">
        <div class="clearfix"></div>
        <?php if(isset($pagin)) { echo $pagin; }  ?>
        <div class="clearfix"></div>
        </div>
 
 </div><!-- End .row -->
</div><!-- End .container -->

<div class="mb20"></div><!-- space -->

</div><!-- End #content -->