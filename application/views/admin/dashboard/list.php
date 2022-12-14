<!-- Info boxes -->
<div class="row">
  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box">
      <span class="info-box-icon bg-info elevation-1"><i class="fa fa-newspaper"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Layanan</span>
        <span class="info-box-number">
          <?php echo $this->Dashboard_model->layanan()->total; ?>
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
      <span class="info-box-icon bg-success elevation-1"><i class="fas fa-box-open"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Produk</span>
        <span class="info-box-number"><?php echo $this->Dashboard_model->produk()->total; ?></span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->

  <!-- /.col -->
  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box mb-3">
      <span class="info-box-icon bg-warning elevation-1"><i class="fa fa-image"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Stock</span>
        <span class="info-box-number"><?php echo $this->Dashboard_model->stock()->total; ?></span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->

  <!-- /.col -->
  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box mb-3">
      <span class="info-box-icon bg-danger elevation-1"><i class="fa fa-image"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Sold</span>
        <span class="info-box-number"><?php echo $this->Dashboard_model->sold()->total; ?></span>
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
        <span class="info-box-text">User</span>
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

