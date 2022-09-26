<section class="bg-blog-style-2">
            <div class="container">
                <div class="row">
                    <div class="blog-style-2">
                        <div class="row">
                            <div class="col-md-8">
                                <?php foreach($produk as $produk) { ?>
                                <div class="blog-items">
                                    <div class="blog-img" style="width:770px;height:370px;">
                                        <a href="<?php echo base_url('produk/read/' . $produk->slug_produk); ?>"><img src="<?php echo base_url('assets/upload/image/'.$produk->gambar) ?>" alt="blog-img-10" class="img-responsive" /></a>
                                    </div>
                                    <!-- .blog-img -->
                                    <div class="blog-content-box">
                                        <div class="blog-content">
                                            <h4><a href="<?php echo base_url('produk/read/' . $produk->slug_produk); ?>"><?php echo $produk->judul_produk; ?></a></h4>
                                            <ul class="meta-post">
                                                <li><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo date('d M Y', strtotime($produk->tanggal_publish)); ?></li>
                                                <li><i class="fa fa-user"></i> <?php echo $produk->nama; ?></li>
                                                <!-- <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> <?php echo $produk->hits; ?> Viewer</a></li> -->
                                            </ul>
                                            <p class="text-justify"><?php echo character_limiter(strip_tags($produk->isi), 200); ?></p>
                                            <a href="<?php echo base_url('produk/read/' . $produk->slug_produk); ?>"><i class="fa fa-chevron-right"></i> Selengkapnya</a>
                                        </div>
                                        <!-- .blog-content -->
                                    </div>
                                    <!-- .blog-content-box -->
                                </div>
                                <?php } ?>
                                <div class="pagination-option">
                                    <nav aria-label="Page navigation">
                                        <?php if(isset($pagin)) { echo $pagin; }  ?>
                                        <!-- <ul class="pagination">
                                            <li>
                                                <a href="#" aria-label="Previous">
                                                    <i class="fa fa-angle-double-left" aria-hidden="true"></i>
                                                </a>
                                            </li>
                                            <li><a href="#">1</a></li>
                                            <li class="active"><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">...</a></li>
                                            <li><a href="#">5</a></li>
                                            <li>
                                                <a href="#" aria-label="Next">
                                                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                                </a>
                                            </li>
                                        </ul> -->
                                    </nav>
                                </div>
                                <!-- .pagination_option -->
                            </div>
                            <!-- .col-md-8 -->
                            <div class="col-md-4">
                                <div class="sidebar">
                                    <div class="widget">
                                        <h4 class="sidebar-widget-title">produk Terpopuler</h4>
                                        <div class="widget-content">
                                            <ul class="popular-news-option">
                                                <?php foreach($populer as $populer) { ?>
                                                    <li>
                                                        <div class="popular-news-img" style="width: 80px; height: 80px;">
                                                            <a href="#"><img src="<?php if($populer->gambar=="") { echo base_url('assets/upload/image/thumbs/'.$site->icon); }else{ echo base_url('assets/upload/image/thumbs/'.$populer->gambar); } ?>" alt="popular-news-img-1" /></a>
                                                        </div>
                                                        <!-- .popular-news-img -->
                                                        <div class="popular-news-contant">
                                                            <h5><a href="<?php echo base_url('produk/read/' . $populer->slug_produk); ?>"><?php echo $populer->judul_produk; ?></a></h5>
                                                            <p>
                                                                <i class="fa fa-calendar"></i> <?php echo date('d M Y', strtotime($populer->tanggal_publish)); ?> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i> <?php echo $populer->hits; ?> Viewer</a>
                                                            </p>
                                                        </div>
                                                        <!-- .popular-news-img -->
                                                    </li>
                                                <?php } ?>
                                            </ul>

                                        </div>
                                        <!-- .widget-content -->
                                    </div>
                                </div>
                                <!-- .sidebar -->
                            </div>
                            <!-- .col-md-4 -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .blog-style-2 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
