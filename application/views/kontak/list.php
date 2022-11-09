<!-- Start Contact us Section -->
<section class="bg-contact-us">
    <div class="container">
        <div class="row">
            <div class="contact-us">
                <div class="row">
                    <div class="col-md-8">
                        <h3 class="contact-title">HUBUNGI KAMI</h3>
                        <?php
echo validation_errors('<div class="alert alert-warning">','</div>');

// Notifikasi
if($this->session->flashdata('sukses')) {
    echo '<div class="alert alert-success">';
    echo $this->session->flashdata('sukses');
    echo '</div>';
}

?>

                        <form action="<?php echo base_url('kontak') ?>" method="POST" class="contact-form">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="nameId" name="nama" placeholder="Full Name">
                                    </div>
                                    <!-- .form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="nameCompId" name="nama_company" placeholder="Company Name">
                                    </div>
                                    <!-- .form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="phoneId" name="phone" placeholder="Phone Number">
                                    </div>
                                    <!-- .form-group -->
                                </div>
                                <!-- .col-md-6 -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="emailId" name="email" placeholder="Email Address">
                                    </div>
                                </div>
                                <!-- .col-md-6 -->
                            </div>
                            <!-- .row -->
                            <div class="form-group">
                                <input type="text" class="form-control" id="subjectId" name="subject" placeholder="Subject">
                            </div>
                            <!-- <div class="form-group">
                            <select name="location" class="form-control">
                                <option value="Choose Location">Choose Location</option>
                                <option value="DKI Jakarta">DKI Jakrata</option>
                                <option value="Banten">Banten</option>
                                <option value="Jawa Barat">Jawa Barat</option>
                                <option value="Jawa Timur">Jawa Timur</option>
                                <option value="Jawa Tengah">Jawa Tengah</option>
                                <option value="DI Yogyakarta">DI Yogyakarta</option>
                                <option value="Bangka Belitung">Bangka Belitung</option>
                                <option value="Banda Aceh">Banda Aceh</option>
                                <option value="Gorontalo">Gorontalo</option>
                                <option value="Bangkulu">Bengkulu</option>
                                <option value="Jambi">Jambi</option>
                                <option value="Riau">Riau</option>
                                <option value="Bali">Bali</option>
                                <option value="Maluku Utara">Maluku Utara</option>
                                <option value="Sumatera Utara">Sumatera Utara</option>
                                <option value="Sumatera Barat">Sumatera Barat</option>
                                <option value="Sumatera Selatan">Sumatera Selatan</option>
                                <option value="Sulawesi Utara">Sulawesi Utara</option>
                                <option value="Sulawesi Barat">Sulawesi Barat</option>
                                <option value="Sulawesi Tengah">Sulawesi Tengah</option>
                                <option value="Sulawesi Selatan">Sulawesi Selatan</option>
                                <option value="Sulawesi Tenggara">Sulawesi Tenggara</option>
                                <option value="Kalimantan Utara">Kalimantan Utara</option>
                                <option value="Kalimantan Barat">Kalimantan Barat</option>
                                <option value="Kalimantan Tengah">Kalimantan Tengah</option>
                                <option value="Kalimantan Selatan">Kalimantan Selatan</option>
                                <option value="kalimantan Timur">Kalimantan Timur</option>
                                <option value="Nusa Tenggara Timur">Nusa Tenggara Timur</option>
                                <option value="Nusa Tenggara Barat">Nusa Tenggara Barat</option>
                            </select>
                            </div> -->
                            <textarea class="form-control text-area" name="pesan" rows="3" placeholder="Message"></textarea>
                            <button type="submit" class="btn btn-default">Send Email</button>
                        </form>
                    </div>
                    <!-- .col-md-8 -->
                    <div class="col-md-4">
                        <h3 class="contact-title">KONTAK KAMI</h3>
                        <ul class="contact-address">
                            <li>
                                <i class="flaticon-placeholder"></i>
                                <div class="contact-content">
                                    <p><?php echo $site->alamat; ?></p>
                                </div>
                            </li>
                            <li>
                                <i class="flaticon-vibrating-phone"></i>
                                <div class="contact-content">
                                    <p><?php echo $site->telepon; ?></p>
                                    </br>
                                    <p><?php echo $site->fax; ?></p>
                                </div>
                            </li>
                        </ul>
                        <!-- .contact-address -->
                        <ul class="social-icon-rounded contact-social-icon">
                            <li><a href="<?php echo $site->facebook; ?>"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="<?php echo $site->instagram; ?>" style="background-color:  #cd486b"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="<?php echo $site->youtube; ?> " class="bg-color-3"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="<?php echo $site->whatsapp; ?>" style="background-color:  #25D366"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <!-- .col-md-4 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .contact-us -->
        </div>
        <!-- .row -->
    </div>
    <!-- .container -->
</section>
<!-- End Contact us Section -->


<!-- Start Maps Section -->
<style type="text/css" media="screen">
    iframe {
        width: 100%;
        height: auto;
        min-height: 400px;
    }
</style>
<div id="map"><?php echo $site->google_map; ?></div>
<!-- End Maps Section -->
