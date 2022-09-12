<!-- Start About Greenforest Section -->
<section class="bg-about-greenforest">
    <div class="container">
        <div class="row">
            <div class="about-greenforest">
                <?php $noprof=1; foreach($profil as $profil) { if($noprof==1) { ?>
                <div class="row">
                    <div class="col-md-8">
                        <div class="about-greenforest-content">
                            <h2><?php echo $profil->judul_berita ?></h2>
                            <p>Established in 1993, PADAMAS-Forklift has grown as JAPAN authorized dealer in providing forklift’s spare parts and services for the past decade. We have been continually focusing on JAPAN forklift development in order to provide superior services to our all customers. In 2014, we started a new division “Rental and RMD(#LikeBrandNew) equipment” to meet the SHIFTING environment in Indonesia’s forklift consumers.</p>
                </br>
                <p>Today, we are committed to delivering our quality, top of the line forklift products which include:
                  <ol type="1">
                    <li>FORKLIFT-RMD equipment</li>
                    <li>FORKLIFT-Rental equipment</li>
                    <li>FORKLIFT-New equipment</li>
                    <li>FORKLIFT-CAM Attachment (Sideshift, Clamp, Rotary, Push-Pull, Extension Fork, etc)</li>
                    <li>FORKLIFT-Related Products (Oil, Tyres, Battery, Accu, etc)</li>
                    <li>FORKLIFT-Safety Accessories (Mirror, Camera, Lamp, Sensor, Belt, etc)</li>
                    <li>FORKLIFT-Maintenance Service</li>
                    <li>FORKLIFT-Spare Parts</li>
                  </ol>
                </br>
                <p>Our years of experience and reliable expertise in the forklift industry have allowed us to confidently serve our customers with outstanding performances. We are looking forward to helping you!</p>
                </br>

                <h2>Company Vision</h2>
                <p>To provide superior quality material-handling services that: CLIENTS recommend to friends and colleagues, EMPLOYEES are proud of, INVESTORS seek for a great long-term returns, and NATION contribution.</p>

                        </div>
                        <!-- .about-greenforest-content -->
                    </div>
                    <!-- .col-md-8 -->
                    <div class="col-md-4">
                        <div class="about-greenforest-img">
                            <img src="<?php echo base_url('assets/upload/image/'.$profil->gambar) ?>" alt="about-greenforet-img" class="img-responsive" />
                        </div>
                        <!-- .about-greenforest-img -->
                    </div>
                    <!-- .col-md-4 -->
                </div>
                <?php }$noprof++; } ?>
            </div>
            <!-- .about-greenforest -->
        </div>
        <!-- .row -->
    </div>
    <!-- .container -->
</section>
