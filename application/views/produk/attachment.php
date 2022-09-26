<section class="bg-single-events">
  <div class="container">
    <div class="row">
      <div class="single-events">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div class="single-event-item">
              <?php if($produk->gambar != "" || $produk->gambar != NULL) { ?>
                <div class="single-event-img">
                  <img style="width: 100%;height: 450px;" src="<?php echo base_url('assets/upload/image/' . $produk->gambar); ?>" alt="single-event-img-1" class="img-responsive" />
                </div>
              <?php } ?>
              <!-- .single-event-img -->
              <div class="single-event-content">
                <h3><?php echo $produk->judul_produk; ?></h3><hr>
                <?php echo $produk->isi; ?>
              </div>
              <!-- .single-event-content -->
            </div>
            <!-- .single-event-item -->
          </div>
          <!-- .col-md-12 -->
        </div>
        <!-- .row -->
      </div>
      <!-- .single-events -->
    </div>
    <!-- .row -->
  </div>
  <!-- .container -->
</section>