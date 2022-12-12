<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Layanan extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('layanan_model');
		$this->load->model('kategori_model');
		$this->load->model('stock_model');
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);

	}

	// Halaman layanan
	public function index()	{
		$layanan = $this->layanan_model->listing();
		$site 	= $this->konfigurasi_model->listing();

		$data = array(	'title'			=> 'Layanan ('.count($layanan).')',
						'layanan'		=> $layanan,
						'site'			=> $site,
						'isi'			=> 'admin/layanan/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Jenis layanan
	public function jenis_layanan($jenis_layanan)	{
		$layanan = $this->layanan_model->jenis_admin($jenis_layanan);
		$data = array(	'title'			=> 'Jenis layanan: '.$jenis_layanan.' ('.count($layanan).')',
						'layanan'		=> $layanan,
						'isi'			=> 'admin/layanan/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Status layanan
	public function status_layanan($status_layanan)	{
		$layanan = $this->layanan_model->status_admin($status_layanan);
		$data = array(	'title'			=> 'Status layanan: '.$status_layanan.' ('.count($layanan).')',
						'layanan'		=> $layanan,
						'isi'			=> 'admin/layanan/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Proses
	public function proses()
	{
		$site = $this->konfigurasi_model->listing();
		// PROSES HAPUS MULTIPLE
		if(isset($_POST['hapus'])) {
			$inp 				= $this->input;
			$id_layanannya		= $inp->post('id_layanan');

   			for($i=0; $i < sizeof($id_layanannya);$i++) {
   				$layanan 	= $this->layanan_model->detail($id_layanannya[$i]);
   				if($layanan->gambar !='') {
					unlink('./assets/upload/image/'.$layanan->gambar);
					unlink('./assets/upload/image/thumbs/'.$layanan->gambar);
				}
				$data = array(	'id_layanan'	=> $id_layanannya[$i]);
   				$this->layanan_model->delete($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah dihapus');
   			redirect(base_url('admin/layanan'),'refresh');
   		// PROSES SETTING DRAFT
   		}elseif(isset($_POST['draft'])) {
   			$inp 				= $this->input;
			$id_layanannya		= $inp->post('id_layanan');

   			for($i=0; $i < sizeof($id_layanannya);$i++) {
   				$layanan 	= $this->layanan_model->detail($id_layanannya[$i]);
				$data = array(	'id_layanan'		=> $id_layanannya[$i],
								'status_layanan'	=> 'Draft');
   				$this->layanan_model->edit($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah diset untuk tidak dipublikasikan');
   			redirect(base_url('admin/layanan'),'refresh');
   		// PROSES SETTING PUBLISH
   		}elseif(isset($_POST['publish'])) {
   			$inp 				= $this->input;
			$id_layanannya		= $inp->post('id_layanan');

   			for($i=0; $i < sizeof($id_layanannya);$i++) {
   				$layanan 	= $this->layanan_model->detail($id_layanannya[$i]);
				$data = array(	'id_layanan'		=> $id_layanannya[$i],
								'status_layanan'	=> 'Publish');
   				$this->layanan_model->edit($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah dipublikasikan');
   			redirect(base_url('admin/layanan'),'refresh');
   		}
	}

	// Author layanan
	public function author($id_user)	{
		$layanan 	= $this->layanan_model->author_admin($id_user);
		$user 		= $this->user_model->detail($id_user);

		$data = array(	'title'			=> 'Penulis layanan: '.$user->nama.' ('.count($layanan).')',
						'layanan'		=> $layanan,
						'isi'			=> 'admin/layanan/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Tambah layanan
	public function tambah()	{
		// $this->session->set_userdata('upload_image_file_manager',true);
		$kategori = $this->kategori_model->listing();
		$this->session->set_userdata('upload_image_file_manager',true);

		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('judul_layanan','Judul','required',
			array(	'required'	=> 'Judul harus diisi'));

		$valid->set_rules('isi','Isi','required',
			array(	'required'	=> 'Isi layanan harus diisi'));

		if($valid->run()) {
			if(!empty($_FILES['gambar']['name'])) {
			$config['upload_path']   = './assets/upload/image/';
      		$config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
      		$config['max_size']      = '12000'; // KB  
			$this->load->library('upload', $config);
      		if(! $this->upload->do_upload('gambar')) {
		// End validasi

		$data = array(	'title'			=> 'Tambah Layanan',
						'kategori'		=> $kategori,
						'error'    		=> $this->upload->display_errors(),
						'isi'			=> 'admin/layanan/tambah');
		$this->load->view('admin/layout/wrapper', $data, FALSE);
		// Masuk database
		}else{
			$upload_data        		= array('uploads' =>$this->upload->data());
	        // Image Editor
	        $config['image_library']  	= 'gd2';
	        $config['source_image']   	= './assets/upload/image/'.$upload_data['uploads']['file_name']; 
	        $config['new_image']     	= './assets/upload/image/thumbs/';
	        $config['create_thumb']   	= TRUE;
	        $config['quality']       	= "100%";
	        $config['maintain_ratio']   = TRUE;
	        $config['width']       		= 360; // Pixel
	        $config['height']       	= 360; // Pixel
	        $config['x_axis']       	= 0;
	        $config['y_axis']       	= 0;
	        $config['thumb_marker']   	= '';
	        $this->load->library('image_lib', $config);
	        $this->image_lib->resize();

	        $i 		= $this->input;
	        $slug 	= url_title($i->post('judul_layanan'),'dash',TRUE);

	        $data = array(	
	        				'id_user'			=> $this->session->userdata('id_user'),
	        				'slug_layanan'		=> $slug,
	        				'judul_layanan'		=> $i->post('judul_layanan'),
	        				'isi'				=> $i->post('isi'),
	        				'jenis_layanan'		=> $i->post('jenis_layanan'),
	        				'status_layanan'	=> $i->post('status_layanan'),
	        				'gambar'			=> $upload_data['uploads']['file_name'],
	        				'keywords'			=> $i->post('keywords'),
	        				'tanggal_publish'	=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				'tanggal_post'		=> date('Y-m-d H:i:s'),
	        				);
	        $this->layanan_model->tambah($data);
	        $this->session->set_flashdata('sukses', 'Data telah ditambah');
	        redirect(base_url('admin/layanan/jenis_layanan/'.$i->post('jenis_layanan')),'refresh');
		}}else{
			$i 		= $this->input;
	        $slug 	= url_title($i->post('judul_layanan'),'dash',TRUE);

	        $data = array(	
	        				'id_user'			=> $this->session->userdata('id_user'),
	        				'slug_layanan'		=> $slug,
	        				'judul_layanan'		=> $i->post('judul_layanan'),
	        				'isi'				=> $i->post('isi'),
	        				'jenis_layanan'		=> $i->post('jenis_layanan'),
	        				'status_layanan'	=> $i->post('status_layanan'),
	        				'keywords'			=> $i->post('keywords'),
	        				'tanggal_publish'	=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				'tanggal_post'		=> date('Y-m-d H:i:s'),
	        				);
	        $this->layanan_model->tambah($data);
	        $this->session->set_flashdata('sukses', 'Data telah ditambah');
	        redirect(base_url('admin/layanan/jenis_layanan/'.$i->post('jenis_layanan')),'refresh');
		}}
		// End masuk database
		$data = array(	'title'			=> 'Tambah Layanan',
						'kategori'		=> $kategori,
						'isi'			=> 'admin/layanan/tambah');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Edit layanan
	public function edit($id_layanan)	{
		$this->session->set_userdata('upload_image_file_manager',true);
		$kategori 	= $this->kategori_model->listing();
		$layanan 	= $this->layanan_model->detail($id_layanan); 
		$this->session->set_userdata('upload_image_file_manager',true);
		
		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('judul_layanan','Judul','required',
			array(	'required'	=> 'Judul harus diisi'));

		$valid->set_rules('isi','Isi','required',
			array(	'required'	=> 'Isi layanan harus diisi'));

		if($valid->run()) {

			if(!empty($_FILES['gambar']['name'])) {

			$config['upload_path']   = './assets/upload/image/';
      		$config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
      		$config['max_size']      = '12000'; // KB  
			$this->load->library('upload', $config);
      		if(! $this->upload->do_upload('gambar')) {
		// End validasi

		$data = array(	'title'			=> 'Edit Layanan',
						'kategori'		=> $kategori,
						'layanan'		=> $layanan,
						'error'    		=> $this->upload->display_errors(),
						'isi'			=> 'admin/layanan/edit');
		$this->load->view('admin/layout/wrapper', $data, FALSE);
		// Masuk database
		}else{
			$upload_data        		= array('uploads' =>$this->upload->data());
	        // Image Editor
	        $config['image_library']  	= 'gd2';
	        $config['source_image']   	= './assets/upload/image/'.$upload_data['uploads']['file_name']; 
	        $config['new_image']     	= './assets/upload/image/thumbs/';
	        $config['create_thumb']   	= TRUE;
	        $config['quality']       	= "100%";
	        $config['maintain_ratio']   = TRUE;
	        $config['width']       		= 360; // Pixel
	        $config['height']       	= 360; // Pixel
	        $config['x_axis']       	= 0;
	        $config['y_axis']       	= 0;
	        $config['thumb_marker']   	= '';
	        $this->load->library('image_lib', $config);
	        $this->image_lib->resize();

	        //Hapus gambar
	        if($layanan->gambar != "") {
	        	unlink('./assets/upload/image/'.$layanan->gambar);
				unlink('./assets/upload/image/thumbs/'.$layanan->gambar);
	        }
	        // End hapus

	        $i 		= $this->input;
	        $slug 	= url_title($i->post('judul_layanan'),'dash',TRUE);

	        $data = array(	'id_layanan'		=> $id_layanan,
	        				'id_kategori'		=> $i->post('id_kategori'),
	        				'id_user'			=> $this->session->userdata('id_user'),
	        				'slug_layanan'		=> $slug,
	        				'judul_layanan'		=> $i->post('judul_layanan'),
	        				'isi'				=> $i->post('isi'),
	        				'jenis_layanan'		=> $i->post('jenis_layanan'),
	        				'status_layanan'	=> $i->post('status_layanan'),
	        				'gambar'			=> $upload_data['uploads']['file_name'],
	        				'keywords'			=> $i->post('keywords'),
	        				'tanggal_publish'	=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				'urutan'			=> $i->post('urutan'),
	        				);
	        $this->layanan_model->edit($data);
	        $this->session->set_flashdata('sukses', 'Data telah diedit');
	        redirect(base_url('admin/layanan/jenis_layanan/'.$i->post('jenis_layanan')),'refresh');
		}}else{
			$i 		= $this->input;
	        $slug 	= url_title($i->post('judul_layanan'),'dash',TRUE);

	        $data = array(	'id_layanan'		=> $id_layanan,
	        				'id_kategori'		=> $i->post('id_kategori'),
	        				'id_user'			=> $this->session->userdata('id_user'),
	        				'slug_layanan'		=> $slug,
	        				'judul_layanan'		=> $i->post('judul_layanan'),
	        				'isi'				=> $i->post('isi'),
	        				'jenis_layanan'		=> $i->post('jenis_layanan'),
	        				'status_layanan'	=> $i->post('status_layanan'),
	        				'keywords'			=> $i->post('keywords'),
	        				'tanggal_publish'	=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				'urutan'			=> $i->post('urutan'),
	        				);
	        $this->layanan_model->edit($data);
	        $this->session->set_flashdata('sukses', 'Data telah diedit');
	        redirect(base_url('admin/layanan/jenis_layanan/'.$i->post('jenis_layanan')),'refresh');
		}}
		// End masuk database
		$data = array(	'title'			=> 'Edit Layanan',
						'kategori'		=> $kategori,
						'layanan'		=> $layanan,
						'isi'			=> 'admin/layanan/edit');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}


	// Delete
	public function delete($id_layanan) {
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);

		
		$layanan = $this->layanan_model->detail($id_layanan);
		// Proses hapus gambar
		if($layanan->gambar != "") {
			unlink('./assets/upload/image/'.$layanan->gambar);
			unlink('./assets/upload/image/thumbs/'.$layanan->gambar);
		}
		// End hapus gambar
		$data = array('id_layanan'	=> $id_layanan);
		$this->layanan_model->delete($data);
	    $this->session->set_flashdata('sukses', 'Data telah dihapus');
	    redirect(base_url('admin/layanan'),'refresh');
	}
}
/* End of file Layanan.php */
/* Location: ./application/controllers/admin/Layanan.php */