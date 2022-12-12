<?php
// Session 
if($this->session->flashdata('sukses')) { 
	echo '<div class="alert alert-success  alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>';
	echo $this->session->flashdata('sukses');
	echo '</div>';
} 
// Error
echo validation_errors('<div class="alert alert-success  alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><div class="alert alert-success">','</div></div>'); 
?>

<?php echo form_open(base_url('admin/konfigurasi')) ?>
<div class="row">
    <input type="hidden" name="id_konfigurasi" value="<?php echo $site->id_konfigurasi ?>">

    <div class="col-md-12">
        <div class="form-group">
            <label>Summary of the company</label>
            <textarea name="tentang" class="form-control" placeholder="Summary of the company" id="isi"><?php echo $site->tentang ?></textarea>
        </div>
        
        <div class="form-group">
            <label>Description</label>
            <textarea name="deskripsi" rows="3" class="form-control textarea" placeholder="Company Description"><?php echo $site->deskripsi ?></textarea>
        </div>

        <div class="form-group">
            <label>Address</label>
            <textarea name="alamat" rows="3" class="form-control textarea" placeholder="Alamat perusahaan/organisasi"><?php echo $site->alamat ?></textarea>
        </div>
    </div>

    <div class="col-md-6">
        <h3>Basic information:</h3><hr>
        <div class="form-group">
            <label>Company name <i class="fa fa-building"></i></label>
            <input type="text" name="namaweb" placeholder="Nama organisasi/perusahaan" value="<?php echo $site->namaweb ?>" required class="form-control">
        </div>

        <div class="form-group">
            <label>Singkatan</label>
            <input type="text" name="singkatan" placeholder="Singkatan organisasi/perusahaan" value="<?php echo $site->singkatan ?>" required class="form-control">
        </div>
        
        <div class="form-group">
            <label>Company tagline/motto</label>
            <input type="text" name="tagline" placeholder="Company tagline/motto" value="<?php echo $site->tagline ?>" class="form-control">
        </div>
        
        <div class="form-group">
            <label>Website address <i class="fa fa-globe"></i></label>
            <input type="url" name="website" placeholder="<?php echo base_url() ?>" value="<?php echo $site->website ?>" class="form-control">
        </div>
        
        <div class="form-group">
            <label>Official email <i class="fa fa-envelope"></i></label>
            <input type="email" name="email" placeholder="youremail@address.com" value="<?php echo $site->email ?>" class="form-control" required>
        </div>
        
        <div class="form-group">
            <label>Phone number <i class="fa fa-mobile"></i></label>
            <input type="text" name="telepon" placeholder="081-000000" value="<?php echo $site->telepon ?>" class="form-control">
        </div>
        
        <div class="form-group">
            <label>Fax <i class="fa fa-fax"></i></label>
            <input type="text" name="fax" placeholder="021-000000" value="<?php echo $site->fax ?>" class="form-control">
        </div>
        
        <h3>Social network</h3><hr>

        <div class="form-group">
            <label>Whatsapp <i class="fab fa-whatsapp"></i></label>
            <input type="url" name="whatsapp" placeholder="https://api.whatsapp.com/send?phone=nomorkamu" value="<?php echo $site->whatsapp ?>" class="form-control">
        </div>
        
        <div class="form-group">
            <label>Facebook <i class="fab fa-facebook"></i></label>
            <input type="url" name="facebook" placeholder="http://facebook.com/namakamu" value="<?php echo $site->facebook ?>" class="form-control">
        </div>
        
        <div class="form-group">
            <label>Instagram <i class="fab fa-instagram"></i></label>
            <input type="url" name="instagram" placeholder="http://instagram.com/namakamu" value="<?php echo $site->instagram ?>" class="form-control">
        </div>

        <div class="form-group">
            <label>Youtube <i class="fab fa-youtube"></i></label>
            <input type="url" name="youtube" placeholder="http://youtube.com/namakamu" value="<?php echo $site->youtube ?>" class="form-control">
        </div>
        
    </div>

    <div class="col-md-6">
        <h3>Modul SEO (Search Engine Optimization)</h3><hr>
        <div class="form-group">
            <label>Keywords (Keyword search for Google, Bing, etc)</label>
            <textarea name="keywords" rows="3" class="form-control" placeholder="Kata kunci / keywords"><?php echo $site->keywords ?></textarea>
        </div>
        
        <h3>Google Map</h3><hr>
        <div class="form-group">
            <label>Google Map <i class="fa fa-map"></i></label>
            <textarea name="google_map" rows="5" class="form-control" placeholder="Kode dari Google Map"><?php echo $site->google_map ?></textarea>
        </div>
        
        <div class="form-group map">
            <style type="text/css" media="screen">
                iframe {
                    width: 100%;
                    max-height: 200px;
                }
            </style>
        <?php echo $site->google_map ?>

        <hr>
        <div class="form-group btn-group text-right">
            <button type="submit" name="submit" class="btn btn-success btn-lg"><i class="fa fa-save"></i> Save Configuration</button>&nbsp&nbsp
            <button type="reset" name="reset" class="btn btn-primary btn-lg"><i class="fa fa-cut"></i> Reset</button>
        </div>
    </div>
</div>
</form>

