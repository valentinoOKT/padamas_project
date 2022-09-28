<section class="bg-single-blog">
    <div class="container">
        <div class="row">
            <div class="single-blog">
                <div class="row">
                    <div class="col-md-8">

                        <div class="blog-items">
                            <?php if($produk->gambar !="") { ?>
                                <div class="blog-img" style="width:770px;height:370px;">
                                    <a href="#"><img src="<?php echo base_url('assets/upload/image/'.$produk->gambar) ?>" alt="blog-img-10" class="img-responsive" /></a>
                                </div>
                            <?php } ?>
                            <!-- .blog-img -->
                            <div class="blog-content-box">
                                <div class="meta-box">
                                    <div class="event-author-option">
                                        <div class="event-author-name">
                                            <p>Posted by : <a href="#"> <?php echo $produk->nama; ?></a></p>
                                        </div>
                                        <!-- .author-name -->
                                    </div>
                                    <!-- .author-option -->
                                    <ul class="meta-post">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo date('d M Y', strtotime($produk->tanggal_publish)); ?></li>
                                        <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> <?php echo $produk->hits; ?> Viewer</a></li>
                                    </ul>
                                </div>
                                <!-- .meta-box -->
                                <div class="blog-content">
                                    <h4><?php echo $produk->judul_produk; ?></h4>

                                    <p class="text-justify"><?php echo $produk->isi; ?></p>
                                </div>
                                <!-- .blog-content -->
                            </div>
                            <!-- .blog-content-box -->
                        </div>
                        <!-- .blog-items -->
                    </div>
                    <!-- .col-md-8 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .single-blog -->
        </div>
        <!-- .row -->
    </div>
    <!-- .container -->
</section>