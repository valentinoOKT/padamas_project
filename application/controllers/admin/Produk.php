<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produk extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
		$this->load->model('kategori_model');
		$this->load->model('download_model');
		$this->load->model('galeri_model');
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);

	}

	// Halaman produk
	public function index()	{
		$produk = $this->produk_model->listing();
		$site 	= $this->konfigurasi_model->listing();

		$data = array(	'title'			=> 'Produk ('.count($produk).')',
						'produk'		=> $produk,
						'site'			=> $site,
						'isi'			=> 'admin/produk/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Jenis produk
	public function jenis_produk($jenis_produk)	{
		$produk = $this->produk_model->jenis_admin($jenis_produk);
		$data = array(	'title'			=> 'Jenis Produk: '.$jenis_produk.' ('.count($produk).')',
						'produk'		=> $produk,
						'isi'			=> 'admin/produk/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Status produk
	public function status_produk($status_produk)	{
		$produk = $this->produk_model->status_admin($status_produk);
		$data = array(	'title'			=> 'Status produk: '.$status_produk.' ('.count($produk).')',
						'produk'		=> $produk,
						'isi'			=> 'admin/produk/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Proses
	public function proses()
	{
		$site = $this->konfigurasi_model->listing();
		// PROSES HAPUS MULTIPLE
		if(isset($_POST['hapus'])) {
			$inp 				= $this->input;
			$id_produknya		= $inp->post('id_produk');

   			for($i=0; $i < sizeof($id_produknya);$i++) {
   				$produk 	= $this->produk_model->detail($id_produknya[$i]);
   				if($produk->gambar !='') {
					unlink('./assets/upload/produk/'.$produk->gambar);
					unlink('./assets/upload/produk/thumbs/'.$produk->gambar);
				}
				$data = array(	'id_produk'	=> $id_produknya[$i]);
   				$this->produk_model->delete($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah dihapus');
   			redirect(base_url('admin/produk'),'refresh');
   		// PROSES SETTING DRAFT
   		}elseif(isset($_POST['draft'])) {
   			$inp 				= $this->input;
			$id_produknya		= $inp->post('id_produk');

   			for($i=0; $i < sizeof($id_produknya);$i++) {
   				$produk 	= $this->produk_model->detail($id_produknya[$i]);
				$data = array(	'id_produk'		=> $id_produknya[$i],
								'status_produk'	=> 'Draft');
   				$this->produk_model->edit($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah diset untuk tidak dipublikasikan');
   			redirect(base_url('admin/produk'),'refresh');
   		// PROSES SETTING PUBLISH
   		}elseif(isset($_POST['publish'])) {
   			$inp 				= $this->input;
			$id_produknya		= $inp->post('id_produk');

   			for($i=0; $i < sizeof($id_produknya);$i++) {
   				$produk 	= $this->produk_model->detail($id_produknya[$i]);
				$data = array(	'id_produk'		=> $id_produknya[$i],
								'status_produk'	=> 'Publish');
   				$this->produk_model->edit($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah dipublikasikan');
   			redirect(base_url('admin/produk'),'refresh');
   		}
	}

	// Author produk
	public function author($id_user)	{
		$produk 	= $this->produk_model->author_admin($id_user);
		$user 		= $this->user_model->detail($id_user);

		$data = array(	'title'			=> 'Penulis produk: '.$user->nama.' ('.count($produk).')',
						'produk'		=> $produk,
						'isi'			=> 'admin/produk/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	public function tambah()	{
		// $this->session->set_userdata('upload_image_file_manager',true);
		$kategori = $this->kategori_model->listing();
		$this->session->set_userdata('upload_image_file_manager',true);

		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('judul_produk','Judul','required',
			array(	'required'	=> 'Judul harus diisi'));

		$valid->set_rules('isi','Isi','required',
			array(	'required'	=> 'Isi berita harus diisi'));

		if($valid->run()) {
			if(!empty($_FILES['gambar']['name'])) {
			$config['upload_path']   = './assets/upload/image/';
      		$config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
      		$config['max_size']      = '12000'; // KB  
			$this->load->library('upload', $config);
      		if(! $this->upload->do_upload('gambar')) {
		// End validasi

		$data = array(	'title'			=> 'Tambah Berita/Profil',
						'kategori'		=> $kategori,
						'error'    		=> $this->upload->display_errors(),
						'isi'			=> 'admin/produk/tambah');
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
	        $slug 	= url_title($i->post('judul_produk'),'dash',TRUE);

	        $data = array(	
	        				'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_produk'	=> $slug,
	        				'judul_produk'	=> $i->post('judul_produk'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_produk'	=> $i->post('jenis_produk'),
	        				'status_produk'	=> $i->post('status_produk'),
	        				'gambar'		=> $upload_data['uploads']['file_name'],
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'tanggal_post'	=> date('Y-m-d H:i:s'),
	        				);
	        $this->produk_model->tambah($data);
	        $this->session->set_flashdata('sukses', 'Data telah ditambah');
	        redirect(base_url('admin/produk/jenis_produk/'.$i->post('jenis_produk')),'refresh');
		}}else{
			$i 		= $this->input;
	        $slug 	= url_title($i->post('judul_produk'),'dash',TRUE);

	        $data = array(	
	        				'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_produk'	=> $slug,
	        				'judul_produk'	=> $i->post('judul_produk'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_produk'	=> $i->post('jenis_produk'),
	        				'status_produk'	=> $i->post('status_produk'),
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'tanggal_post'	=> date('Y-m-d H:i:s'),
	        				);
	        $this->produk_model->tambah($data);
	        $this->session->set_flashdata('sukses', 'Data telah ditambah');
	        redirect(base_url('admin/produk/jenis_produk/'.$i->post('jenis_produk')),'refresh');
		}}
		// End masuk database
		$data = array(	'title'			=> 'Tambah Berita/Profil',
						'kategori'		=> $kategori,
						'isi'			=> 'admin/produk/tambah');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}
	
	// Edit produk
	public function edit($id_produk)	{
		$this->session->set_userdata('upload_image_file_manager',true);
		$kategori 	= $this->kategori_model->listing();
		$produk 	= $this->produk_model->detail($id_produk); 
		$this->session->set_userdata('upload_image_file_manager',true);
		
		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('judul_produk','Judul','required',
			array(	'required'	=> 'Judul harus diisi'));

		$valid->set_rules('isi','Isi','required',
			array(	'required'	=> 'Isi produk harus diisi'));

		if($valid->run()) {

			if(!empty($_FILES['gambar']['name'])) {

			$config['upload_path']   = './assets/upload/image/';
      		$config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
      		$config['max_size']      = '12000'; // KB  
			$this->load->library('upload', $config);
      		if(! $this->upload->do_upload('gambar')) {
		// End validasi

		$data = array(	'title'			=> 'Edit Produk/Profil',
						'kategori'		=> $kategori,
						'produk'		=> $produk,
						'error'    		=> $this->upload->display_errors(),
						'isi'			=> 'admin/produk/edit');
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
	        if($produk->gambar != "") {
	        	unlink('./assets/upload/image/'.$produk->gambar);
				unlink('./assets/upload/image/thumbs/'.$produk->gambar);
	        }
	        // End hapus

	        $i 		= $this->input;
	        $slug 	= url_title($i->post('judul_produk'),'dash',TRUE);

	        $data = array(	'id_produk'		=> $id_produk,
	        				'id_kategori'	=> $i->post('id_kategori'),
	        				'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_produk'	=> $slug,
	        				'judul_produk'	=> $i->post('judul_produk'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_produk'	=> $i->post('jenis_produk'),
	        				'status_produk'	=> $i->post('status_produk'),
	        				'gambar'		=> $upload_data['uploads']['file_name'],
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				);
	        $this->produk_model->edit($data);
	        $this->session->set_flashdata('sukses', 'Data telah diedit');
	        redirect(base_url('admin/produk/jenis_produk/'.$i->post('jenis_produk')),'refresh');
		}}else{
			$i 		= $this->input;
	        $slug 	= url_title($i->post('judul_produk'),'dash',TRUE);

	        $data = array(	'id_produk'		=> $id_produk,
	        				'id_kategori'	=> $i->post('id_kategori'),
	        				'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_produk'	=> $slug,
	        				'judul_produk'	=> $i->post('judul_produk'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_produk'	=> $i->post('jenis_produk'),
	        				'status_produk'	=> $i->post('status_produk'),
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				);
	        $this->produk_model->edit($data);
	        $this->session->set_flashdata('sukses', 'Data telah diedit');
	        redirect(base_url('admin/produk/jenis_produk/'.$i->post('jenis_produk')),'refresh');
		}}
		// End masuk database
		$data = array(	'title'			=> 'Edit Produk/Profil',
						'kategori'		=> $kategori,
						'produk'		=> $produk,
						'isi'			=> 'admin/produk/edit');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}


	// Delete
	public function delete($id_produk) {
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);

		
		$produk = $this->produk_model->detail($id_produk);
		// Proses hapus gambar
		if($produk->gambar != "") {
			unlink('./assets/upload/image/'.$produk->gambar);
			unlink('./assets/upload/image/thumbs/'.$produk->gambar);
		}
		// End hapus gambar
		$data = array('id_produk'	=> $id_produk);
		$this->produk_model->delete($data);
	    $this->session->set_flashdata('sukses', 'Data telah dihapus');
	    redirect(base_url('admin/produk'),'refresh');
	}
}

/* End of file Produk.php */
/* Location: ./application/controllers/admin/Produk.php */