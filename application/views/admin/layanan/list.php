<?php
$site   = $this->konfigurasi_model->listing();
echo form_open(base_url('admin/layanan/proses'));
?>
<p class="btn-group">
<a href="<?php echo base_url('admin/layanan/tambah') ?>" class="btn btn-success btn-lg">
<i class="fa fa-plus"></i> Tambah Layanan</a>&nbsp&nbsp

<button class="btn btn-warning btn-lg" type="submit" name="draft" onClick="check();" >
    <i class="fa fa-times"></i> Jangan Publikasikan
</button>&nbsp&nbsp

<button class="btn btn-primary btn-lg" type="submit" name="publish" onClick="check();" >
    <i class="fa fa-check"></i> Publikasikan
</button>&nbsp&nbsp

<button class="btn btn-danger btn-lg" type="submit" name="hapus" onClick="check();" >
    <i class="fa fa-trash"></i> Hapus
</button> &nbsp&nbsp
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

    <?php $i=1; foreach($layanan as $layanan) { ?>

    <tr class="odd gradeX">
        <td>
        <div class="mailbox-star text-center"><div class="text-center">
            <input type="checkbox" class="icheckbox_flat-blue " name="id_layanan[]" value="<?php echo $layanan->id_layanan ?>">
            <span class="checkmark"></span>
        </div>
        </td>
        <td>
        <?php if($layanan->gambar!="") { ?>
        <img src="<?php echo base_url('assets/upload/image/thumbs/'.$layanan->gambar) ?>" class="img img-thumbnail img-responsive" width="60">
        <?php }else{ ?>
        <img src="<?php echo base_url('assets/upload/image/thumbs/'.$site->icon) ?>" class="img img-thumbnail img-responsive" width="60">
        <?php } ?>
        </td>
        <td>
        <a href="<?php echo base_url('admin/layanan/edit/'.$layanan->id_layanan) ?>">
        <?php echo $layanan->judul_layanan ?> <sup><i class="fa fa-pencil"></i></sup>
        </a>
        <small>
            <br>Published: <?php echo date('d M Y H:i: s',strtotime($layanan->tanggal_publish)) ?>
        </small>
        </td>
        <td>
        <a href="<?php echo base_url('admin/layanan/jenis_layanan/'.$layanan->jenis_layanan) ?>">
        <?php echo $layanan->jenis_layanan ?><sup><i class="fa fa-link"></i></sup>
        </a></td>
        <td><a href="<?php echo base_url('admin/layanan/status_layanan/'.$layanan->status_layanan) ?>"><?php echo $layanan->status_layanan ?><sup><i class="fa fa-link"></i></sup>
        </a></td>
        <td>
        <a href="<?php echo base_url('admin/layanan/author/'.$layanan->id_user) ?>">
        <?php echo $layanan->nama ?><sup><i class="fa fa-link"></i></sup>
        </a></td>
        <td>
        <div class="btn-group">
            <a href="<?php echo base_url('admin/layanan/edit/'.$layanan->id_layanan) ?>" 
            class="btn btn-warning btn-xs"><i class="fa fa-edit"></i>Edit</a>&nbsp&nbsp
            <a href="<?php echo base_url('admin/layanan/delete/'.$layanan->id_layanan) ?>" class="btn btn-danger btn-xs" onclick="confirmation(event)"><i class="fa fa-trash"></i>Hapus</a>
        </div>
        </td>
    </tr>
    <?php $i++; } ?>

    </tbody>
    </table>
</div>
<?php echo form_close(); ?>