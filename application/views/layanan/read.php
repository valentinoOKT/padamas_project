<section class="bg-single-blog">
    <div class="container">
        <div class="row">
            <div class="single-blog">
                <div class="row">
                    <div class="col-md-8">

                        <div class="blog-items">
                            <?php if($layanan->gambar !="") { ?>
                                <div class="blog-img" style="width:770px;height:370px;">
                                    <a href="#"><img src="<?php echo base_url('assets/upload/image/'.$layanan->gambar) ?>" alt="blog-img-10" class="img-responsive" /></a>
                                </div>
                            <?php } ?>
                            <!-- .blog-img -->
                            <div class="blog-content-box">
                                <div class="meta-box">
                                    <div class="event-author-option">
                                        <div class="event-author-name">
                                            <p>Posted by : <a href="#"> <?php echo $layanan->nama; ?></a></p>
                                        </div>
                                        <!-- .author-name -->
                                    </div>
                                    <!-- .author-option -->
                                    <ul class="meta-post">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo date('d M Y', strtotime($layanan->tanggal_publish)); ?></li>
                                        <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> <?php echo $layanan->hits; ?> Viewer</a></li>
                                    </ul>
                                </div>
                                <!-- .meta-box -->
                                <div class="blog-content">
                                    <h4><?php echo $layanan->judul_layanan; ?></h4>

                                    <p class="text-justify"><?php echo $layanan->isi; ?></p>
                                </div>
                                <!-- .blog-content -->
                            </div>
                            <!-- .blog-content-box -->
                        </div>
                        <!-- .blog-items -->
                    </div>
                    <!-- .col-md-8 -->
            
                    <!-- .col-md-4 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .single-blog -->
        </div>
        <!-- .row -->
    </div>
    <!-- .container -->
</section>