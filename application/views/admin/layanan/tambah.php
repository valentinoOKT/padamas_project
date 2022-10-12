
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
echo form_open_multipart(base_url('admin/layanan/tambah'));
?>

<div class="row">

<div class="col-md-8">

<div class="form-group form-group-lg">
<label>Judul layanan</label>
<input type="text" name="judul_layanan" class="form-control" placeholder="Judul layanan" required="required" value="<?php echo set_value('judul_layanan') ?>">
</div>

</div>

<div class="col-md-6">

<div class="form-group form-group-lg">

<div class="row">
  <div class="col-md-6">
    <label>Tanggal Publish</label>
    <input type="text" name="tanggal_publish" class="form-control tanggal" placeholder="Tanggal publikasi" value="<?php if(isset($_POST['tanggal_publish'])) { echo set_value('tanggal_publish'); }else{ echo date('d-m-Y'); } ?>" data-date-format="dd-mm-yyyy">
  </div>
  <div class="col-md-6">
  <label>Jam Publish</label>
  <input type="text" name="jam_publish" class="form-control time-picker" placeholder="Jam publikasi" value="<?php if(isset($_POST['jam_publish'])) { echo set_value('jam_publish'); }else{ echo date('H:i:s'); } ?>">
  </div>
</div>
</div>

</div>

<div class="col-md-6">

<div class="form-group form-group-lg">
<label>Status Layanan</label>
<select name="status_layanan" class="form-control">
	<option value="Publish">Publikasikan</option>
	<option value="Draft">Simpan sebagai draft</option>}
</select>

</div>
</div>

<div class="col-md-3">

<div class="form-group">
<label>Jenis Layanan</label>
<select name="jenis_layanan" class="form-control">
	<option value="Rental">Rental</option>
	<option value="Service">Service</option>
  <option value="Profil">Profil</option>
</select>

</div>
</div>


<div class="col-md-3">
<div class="form-group">
<label>Upload gambar</label>
<input type="file" name="gambar" class="form-control" placeholder="Upload gambar">
</div>
</div>

<div class="col-md-12">


<div class="form-group">
<label>Keywords dan Ringkasan (untuk pencarian Google)</label>
<textarea name="keywords" class="form-control" placeholder="Keywords (untuk pencarian Google)"><?php echo set_value('keywords') ?></textarea>
</div>

<div class="form-group">
<label>Isi layanan</label>
<textarea name="isi" class="form-control" id="isi" placeholder="Isi layanan"><?php echo set_value('isi') ?></textarea>
</div>

<div class="form-group text-right">
<button type="submit" name="submit" class="btn btn-success btn-lg"><i class="fa fa-save"></i> Simpan Data</button>
<input type="reset" name="reset" class="btn btn-default btn-lg" value="Reset">
</div>

</div>

<?php
// Form close
echo form_close();
?>



<!-- Modal -->
<div class="modal fade" id="file" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        </div><!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- Modal -->
<div class="modal fade" id="gambar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        </div><!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

</div>

<script>
  $('body').on('click', '[data-toggle="modal"]', function(){
        $($(this).data("target")+' .modal-body').load($(this).data("remote"));
    });  
</script>