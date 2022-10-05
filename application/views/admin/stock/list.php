<script>
  $("button").click(function(){
    $("textarea").select();
    document.execCommand('copy');
});
</script>
<?php
echo form_open(base_url('admin/stock/proses'));
?>
<p class="btn-group">
  <a href="<?php echo base_url('admin/stock/tambah') ?>" class="btn btn-success btn-lg">
  <i class="fa fa-plus"></i> Tambah Stock</a>

  <button class="btn btn-danger" type="submit" name="hapus" onClick="check();" >
      <i class="fa fa-trash"></i> Hapus
    </button> 

</p>


<div class="table-responsive mailbox-messages">
<table id="example1" class="display table table-bordered table-hover" cellspacing="0" width="100%">
<thead>
<tr>
    <th>
        <div class="mailbox-controls">
            <!-- Check all button -->
            <button type="button" class="btn btn-default btn-xs checkbox-toggle"><i class="fa fa-square-o"></i>
            </button>
        </div>
    </th>
    <th>Gambar</th>
    <th>Judul</th>
    <th>Kategori - Posisi</th>
    <th>Author</th>
    <th>Tanggal</th>
    <th width="15%">Action</th>
</tr>
</thead>
<tbody>

<?php $i=1; foreach($stock as $stock) { ?>

<tr class="odd gradeX">
    <td>
      <div class="mailbox-star text-center"><div class="text-center">
        <input type="checkbox" class="icheckbox_flat-blue " name="id_galeri[]" value="<?php echo $stock->id_galeri ?>">
        <span class="checkmark"></span>
      </div>
    </td>
    <td>
      <img src="<?php echo base_url('assets/upload/image/thumbs/'.$stock->gambar) ?>" width="60">
    </td>
    <td><?php echo $stock->judul_galeri ?>
      
      <br><small>
        Urutan: <?php echo $stock->urutan ?>
      <br>
      Status Tampil Teks: <?php echo $stock->status_text ?><br>
      <textarea name="aa"><?php echo base_url('assets/upload/image/'.$stock->gambar) ?></textarea>
      </small>

    </td>
    <td><?php echo $stock->nama_kategori_galeri ?> - <?php echo $stock->jenis_galeri ?></td>
    <td><?php echo $stock->nama ?></td>
    <td><?php echo $stock->tanggal ?></td>
    <td>
      <div class="btn-group">
      <a href="<?php echo base_url('stock/read/'.$stock->id_galeri) ?>" 
      class="btn btn-success btn-xs" target="_blank"><i class="fa fa-eye"></i></a>

      <a href="<?php echo base_url('admin/stock/edit/'.$stock->id_galeri) ?>" 
      class="btn btn-warning btn-xs"><i class="fa fa-edit"></i></a>

       <a href="<?php echo base_url('admin/stock/delete/'.$stock->id_galeri) ?>" 
      class="btn btn-danger btn-xs " onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
    </div>
    </td>
</tr>

<?php $i++; } ?>

</tbody>
</table>