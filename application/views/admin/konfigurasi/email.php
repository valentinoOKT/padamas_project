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

<?php echo form_open(base_url('admin/konfigurasi/email_setting')) ?>
<div class="row">
<input type="hidden" name="id_konfigurasi" value="<?php echo $site->id_konfigurasi ?>">


<div class="col-md-4">
    <div class="form-group">
    <label>Protocol Email</label>
    <input type="text" name="protocol" placeholder="Protocol Email" value="<?php echo $site->protocol ?>" required class="form-control">
    </div>
    
    <div class="form-group">
    <label>SMTP Host</label>
    <input type="text" name="smtp_host" placeholder="SMTP Host" value="<?php echo $site->smtp_host ?>" class="form-control">
    </div>
    
    <div class="form-group">
    <label>SMTP Port</label>
    <input type="number" name="smtp_port" placeholder="SMTP Port" value="<?php echo $site->smtp_port ?>" class="form-control">
    </div>
</div>

<div class="col-md-8">
    
    <div class="form-group">
    <label>SMTP Debug</label>
    <input type="number" name="smtp_debug" placeholder="SMTP Debug" value="<?php echo $site->smtp_debug ?>" class="form-control" required>
    </div>
  
     <div class="form-group">
    <label>SMTP Username (Email)</label>
    <input type="email" name="smtp_user" placeholder="SMTP User" value="<?php echo $site->smtp_user ?>" class="form-control">
    </div>
    
      <div class="form-group">
    <label>SMTP Password</label>
    <input type="text" name="smtp_pass" placeholder="SMTP Password" value="<?php echo $site->smtp_pass ?>" class="form-control">
    </div>
    
    <div class="form-group btn-group text-right">
		<button type="submit" name="submit" class="btn btn-success btn-lg"><i class="fa fa-save"></i> Save Configuration</button>&nbsp&nbsp
		<button type="reset" name="reset" class="btn btn-primary btn-lg"><i class="fa fa-cut"></i> Reset</button>
	</div>
    </div>
</div>
</div>
</form>

