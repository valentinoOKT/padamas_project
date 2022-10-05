<section class="bg-recent-project-home3">
            <div class="container">
                <div class="section-header">
                    <h2><?php //echo $title ?> STOCK IMAGE</h2>
                </div>
                <div class="row">
                    <div class="recent-project photo-gallery">
                        
                        <div class="portfolio-items portfolio-items-home3">
                            <?php foreach($stock as $stock) { ?>
                            <div class="item <?php echo $stock->slug_kategori_galeri ?>" data-category="<?php echo $stock->nama_kategori_galeri ?>">
                                <div class="item-inner">
                                    <div class="portfolio-img">
                                        <div class="overlay-project"></div>
                                        <!-- .overlay-project -->
                                        <img src="<?php echo base_url('assets/upload/image/thumbs/'.$stock->gambar) ?>" alt="recent-project-img-1" class="img img-fluid img-thumbnail">
                                        <div class="recent-project-content">
                                            <p><a href="#"><?php echo $stock->judul_galeri; ?></a></p>
                                        </div>
                                        <!-- .latest-port-content -->
                                    </div>
                                    <!-- /.portfolio-img -->
                                </div>
                                <!-- .item-inner -->
                            </div>
                            <?php } ?>
                            <!-- .items -->
                        </div>
                        <!-- .isotope-items -->
                        <div class="load-more-option">
                            <?php if(isset($pagin)) { echo $pagin; }  ?>
                        <!-- .load-more-option -->
                    </div>
                    <!-- .recent-project -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>