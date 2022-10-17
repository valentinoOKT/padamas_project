<?php
$site   = $this->konfigurasi_model->listing();
echo form_open(base_url('admin/produk/proses'));
?>
<p class="btn-group">
  <a href="<?php echo base_url('admin/produk/tambah') ?>" class="btn btn-success btn-lg">
  <i class="fa fa-plus"></i> Tambah Produk</a>&nbsp&nbsp

  <button class="btn btn-warning btn-lg" type="submit" name="draft" onClick="check();" >
      <i class="fa fa-times"></i> Jangan Publikasikan
  </button>&nbsp&nbsp

   <button class="btn btn-primary btn-lg" type="submit" name="publish" onClick="check();" >
      <i class="fa fa-check"></i> Publikasikan
  </button>&nbsp&nbsp

  <button class="btn btn-danger btn-lg" type="submit" name="hapus" onClick="check();" >
      <i class="fa fa-trash"></i> Hapus
    </button>&nbsp&nbsp
<?php 
$url_navigasi = $this->uri->segment(2); 
if($this->uri->segment(3) != "") { 
 ?>
<a href="<?php echo base_url('admin/'.$url_navigasi) ?>"  class="btn btn-primary btn-lg">
 <i class="fa fa-backward"></i> Kembali</a>
 <?php } ?>
</p>
<div class="table-responsive mailbox-messages">
<table id="example1" class="display table table-bordered table-hover" cellspacing="0" width="100%">
<thead>
<tr>
    <th width="5%">
        <div class="mailbox-controls">
            <!-- Check all button -->
            <button type="button" class="btn btn-default btn-xs checkbox-toggle"><i class="fa fa-square-o"></i>
            </button>
        </div>
    </th>
    <th width="10%">GAMBAR</th>
    <th width="35%">JUDUL</th>
    <th width="10%">JENIS</th>
    <th width="10%">STATUS</th>
    <th width="10%">AUTHOR</th>
    <th width="15%">ACTION</th>
</tr>
</thead>
<tbody>

<?php $i=1; foreach($produk as $produk) { ?>

<tr class="odd gradeX">
    <td>
      <div class="mailbox-star text-center"><div class="text-center">
        <input type="checkbox" class="icheckbox_flat-blue " name="id_produk[]" value="<?php echo $produk->id_produk ?>">
        <span class="checkmark"></span>
      </div>
    </td>
    <td>
    <?php if($produk->gambar!="") { ?>
      <img src="<?php echo base_url('assets/upload/image/thumbs/'.$produk->gambar) ?>" class="img img-thumbnail img-responsive" width="60">
      <?php }else{ ?>
      <img src="<?php echo base_url('assets/upload/image/thumbs/'.$site->icon) ?>" class="img img-thumbnail img-responsive" width="60">
      <?php } ?>
    </td>
    <td>
    <a href="<?php echo base_url('admin/produk/edit/'.$produk->id_produk) ?>">
    <?php echo $produk->judul_produk ?> <sup><i class="fa fa-pencil"></i></sup>
    </a>
      <small>
        <br>Published: <?php echo date('d M Y H:i: s',strtotime($produk->tanggal_publish)) ?>
      </small>
    </td>
    <td>
    <a href="<?php echo base_url('admin/produk/jenis_produk/'.$produk->jenis_produk) ?>">
    <?php echo $produk->jenis_produk ?><sup><i class="fa fa-link"></i></sup>
    </a></td>
    <td><a href="<?php echo base_url('admin/produk/status_produk/'.$produk->status_produk) ?>"><?php echo $produk->status_produk ?><sup><i class="fa fa-link"></i></sup>
    </a></td>
    <td>
    <?php echo $produk->nama ?>
    </td>
    <td>
      <div class="btn-group">
        <a href="<?php echo base_url('admin/produk/edit/'.$produk->id_produk) ?>" 
        class="btn btn-warning btn-xs"><i class="fa fa-edit"></i>Edit</a>&nbsp&nbsp

        <a href="<?php echo base_url('admin/produk/delete/'.$produk->id_produk) ?>" class="btn btn-danger btn-xs" onclick="confirmation(event)"><i class="fa fa-trash"></i>Hapus</a>
      </div>
    </td>
</tr>

<?php $i++; } ?>

</tbody>
</table>
</div>
<?php echo form_close(); ?>