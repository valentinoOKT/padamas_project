<!-- Info boxes -->
<div class="row">
  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box">
      <span class="info-box-icon bg-info elevation-1"><i class="fa fa-newspaper-o"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Layanan</span>
        <span class="info-box-number">
          <?php echo $this->Dashboard_model->berita()->total; ?>
          <small>Post</small>
        </span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
</div>

  <!-- fix for small devices only -->
  <div class="clearfix hidden-md-up"></div>

  <!-- /.col -->
  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box mb-3">
      <span class="info-box-icon bg-warning elevation-1"><i class="fa fa-image"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Galeri</span>
        <span class="info-box-number"><?php echo $this->Dashboard_model->galeri()->total; ?></span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->


  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box">
      <span class="info-box-icon bg-info elevation-1"><i class="fa fa-lock"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Pengguna</span>
        <span class="info-box-number">
          <?php echo $this->Dashboard_model->user()->total; ?>
          <small>User</small>
        </span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->
<!-- /.row -->

