<?php
// Validasi error
echo validation_errors('<div class="alert alert-warning">','</div>');

// Error upload
if(isset($error)) {
	echo '<div class="alert alert-warning">';
	echo $error;
	echo '</div>';
}

// Form open
echo form_open_multipart(base_url('admin/sold/edit/'.$sold->id_galeri));
?>
<div class="row">
	<div class="col-md-6">
		<div class="form-group form-group-lg">
			<label>Judul galeri</label>
			<input type="text" name="judul_galeri" class="form-control" placeholder="Judul galeri" value="<?php echo $sold->judul_galeri ?>">
		</div>
	</div>

	<div class="col-md-3">
		<div class="form-group form-group-lg">
			<label>Urutan</label>
			<input type="number" name="urutan" class="form-control" placeholder="No urut tampil"  value="<?php echo $sold->urutan ?>">
		</div>
	</div>

	<div class="col-md-3">
		<div class="form-group form-group-lg">
			<label>Tampilkan teks pada slider?</label>
			<select name="status_text" class="form-control">
				<option value="Ya">Ya, tampilkan</option>
				<option value="Tidak" <?php if($sold->status_text=="Tidak") { echo "selected"; } ?>>Tidak, jangan tampilkan teks</option>
			</select>
		</div>
	</div>

	<div class="col-md-4">
		<div class="form-group">
			<label>Jenis Galeri</label>
			<select name="jenis_galeri" class="form-control">
				<option value="Galeri" <?php if($sold->jenis_galeri=="Galeri") { echo "selected"; } ?>>Galeri</option>
			</select>
		</div>
	</div>

	<div class="col-md-4">
		<div class="form-group">
			<label>Kategori Galeri</label>
			<select name="id_kategori_galeri" class="form-control">
				<?php foreach($kategori_galeri as $kategori_galeri) { ?>
				<option value="<?php echo $kategori_galeri->id_kategori_galeri ?>" 
				<?php if($sold->id_kategori_galeri==$kategori_galeri->id_kategori_galeri) { echo "selected"; } ?>
				><?php echo $kategori_galeri->nama_kategori_galeri ?></option>
				<?php } ?>
			</select>
		</div>
	</div>

	<div class="col-md-4">
		<div class="form-group">
			<label>Upload gambar</label>
			<input type="file" name="gambar" class="form-control" placeholder="Upload gambar">
		</div>
	</div>

	<div class="col-md-12">
		<div class="form-group">
			<label>Isi galeri</label>
			<textarea name="isi" id="isi" class="form-control konten" placeholder="Isi galeri"><?php echo $sold->isi ?></textarea>
		</div>
		
		<div class="form-group">
			<input type="submit" name="submit" class="btn btn-success btn-lg" value="Simpan Data">
			<input type="reset" name="reset" class="btn btn-default btn-lg" value="Reset">
		</div>
	</div>
</div>
<?php
// Form close
echo form_close();
?>