<?php
// Notifikasi error
echo validation_errors('<p class="alert alert-warning">','</p>');

// Form open
echo form_open(base_url('admin/user/tambah'));
?>
<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<label>Nama User <span class="text-danger">*</span></label>
			<input type="text" name="nama" class="form-control form-control-lg" value="<?php echo set_value('nama') ?>" placeholder="Nama User" required>
		</div>
	</div>
	<div class="col-md-3">
		<div class="form-group">
			<label>Username <span class="text-danger">*</span></label>
			<input type="text" name="username" class="form-control form-control-lg" value="<?php echo set_value('username') ?>" placeholder="username" required>
		</div>
	</div>
	<div class="col-md-3">
		<div class="form-group">
			<label>Password <span class="text-danger">*</span></label>
			<input type="password" name="password" class="form-control form-control-lg" value="<?php echo set_value('password') ?>" placeholder="Password" required>
		</div>
	</div>
	
	<div class="col-md-3">
		<div class="form-group">
			<label>Level Hak Akses</label>
			<input type="text" name="akses_level" class="form-control" value="Admin" placeholder="level hak akses" readonly>
		</div>
	</div>



	<div class="col-md-6">
		<div class="form-group">
			<label>Email <span class="text-danger">*</span></label>
			<input type="email" name="email" class="form-control" value="<?php echo set_value('email') ?>" placeholder="Email" required>
		</div>
	</div>

	<div class="col-md-12">
		<div class="form-group">
			<div class="btn-group">
				<button class="btn btn-success btn-lg" name="submit" type="submit">
					<i class="fa fa-save"></i> Simpan
				</button>&nbsp&nbsp
				<button class="btn btn-info btn-lg" name="reset" type="reset">
					<i class="fa fa-times"></i> Reset
				</button>&nbsp&nbsp
				<a href="<?php echo base_url('admin/user') ?>" class="btn btn-warning btn-lg">
					<i class="fa fa-backward"></i> Kembali
				</a>
			</div>
		</div>
	</div>
</div>
<?php 
// Form close
echo form_close();
?>