<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Layanan extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('layanan_model');
		$this->load->model('kategori_model');
	}

	// Main page
	public function index()	{
		$site 		= $this->konfigurasi_model->listing();
		$populer	= $this->layanan_model->populer();
		
		// Layanan dan paginasi
		// Layanan dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'layanan/index/';
		$config['total_rows'] 		= count(array($this->layanan_model->total()));
		$config['use_page_numbers'] = TRUE;
		$config['num_links'] 		= 5;
		$config['uri_segment'] 		= 3;
		$config['full_tag_open'] 	= '<ul class="pagination">';
        $config['full_tag_close'] 	= '</ul>';
        $config['first_link'] 		= '&laquo; Awal';
        $config['first_tag_open'] 	= '<li class="prev page">';
        $config['first_tag_close'] 	= '</li>';

        $config['last_link'] 		= 'Akhir &raquo;';
        $config['last_tag_open'] 	= '<li class="next page">';
        $config['last_tag_close'] 	= '</li>';

        $config['next_link'] 		= 'Selanjutnya &rarr;';
        $config['next_tag_open'] 	= '<li class="next page">';
        $config['next_tag_close'] 	= '</li>';

        $config['prev_link'] 		= '&larr; Sebelumnya';
        $config['prev_tag_open'] 	= '<li class="prev page">';
        $config['prev_tag_close'] 	= '</li>';

        $config['cur_tag_open'] 	= '<li class="active"><a href="">';
        $config['cur_tag_close'] 	= '</a></li>';

        $config['num_tag_open'] 	= '<li class="page">';
        $config['num_tag_close'] 	= '</li>';
		$config['per_page'] 		= 10;
		$config['first_url'] 		= base_url().'layanan/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$layanan 	= $this->layanan_model->layanan($config['per_page'], $page);

		$data = array(	'title'		=> 'Layanan - '.$site->namaweb,
						'deskripsi'	=> 'Layanan - '.$site->namaweb,
						'keywords'	=> 'Layanan - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'layanan'	=> $layanan,
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'layanan/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Search
	public function cari()
	{
		$this->load->helper('security');
		$s 			= $this->input->post('s');
		$keyword 	= xss_clean($s);
		$keywords	= encode_php_tags($keyword);

		if($keywords!="") {
			redirect(base_url('layanan/search?s='.$keywords),'refresh');
		}else{
			redirect(base_url('layanan'),'refresh');
		}
	}

	// Search
	public function search()
	{
		$this->load->helper('security');
		$keyword 	= xss_clean($_GET['s']);
		$keywords	= encode_php_tags($keyword);
		$populer	= $this->layanan_model->populer();

		if($keywords=="") {
			redirect(base_url('layanan'),'refresh');
		}

		$site 		= $this->konfigurasi_model->listing();
		
		// Layanan dan paginasi
		// Layanan dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'layanan/search?s='.$keywords.'/index/';
		$config['total_rows'] 		= count(array($this->layanan_model->total_search($keywords)));
		$config['use_page_numbers'] = TRUE;
		$config['num_links'] 		= 5;
		$config['uri_segment'] 		= 3;
		$config['full_tag_open'] 	= '<ul class="pagination">';
        $config['full_tag_close'] 	= '</ul>';
        $config['first_link'] 		= '&laquo; Awal';
        $config['first_tag_open'] 	= '<li class="prev page">';
        $config['first_tag_close'] 	= '</li>';

        $config['last_link'] 		= 'Akhir &raquo;';
        $config['last_tag_open'] 	= '<li class="next page">';
        $config['last_tag_close'] 	= '</li>';

        $config['next_link'] 		= 'Selanjutnya &rarr;';
        $config['next_tag_open'] 	= '<li class="next page">';
        $config['next_tag_close'] 	= '</li>';

        $config['prev_link'] 		= '&larr; Sebelumnya';
        $config['prev_tag_open'] 	= '<li class="prev page">';
        $config['prev_tag_close'] 	= '</li>';

        $config['cur_tag_open'] 	= '<li class="active"><a href="">';
        $config['cur_tag_close'] 	= '</a></li>';

        $config['num_tag_open'] 	= '<li class="page">';
        $config['num_tag_close'] 	= '</li>';
		$config['per_page'] 		= 10;
		$config['first_url'] 		= base_url().'layanan/search?s='.$keywords;
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$layanan 	= $this->layanan_model->search($keywords,$config['per_page'], $page);

		$data = array(	'title'		=> 'Hasil pencarian: '.$keywords,
						'deskripsi'	=> 'Layanan - '.$site->namaweb,
						'keywords'	=> 'Layanan - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'layanan'	=> $layanan,
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'layanan/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Category
	public function kategori($slug_kategori)	{
		$site 			= $this->konfigurasi_model->listing();
		$kategori 		= $this->kategori_model->read($slug_kategori);
		$populer	= $this->layanan_model->populer();
		if(count(array($kategori)) < 1) {
			redirect(base_url('oops'),'refresh');
		}
		
		
		$id_kategori	= $kategori->id_kategori;


		// Layanan dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'layanan/kategori/'.$slug_kategori.'/index/';
		$config['total_rows'] 		= count(array($this->layanan_model->all_kategori($id_kategori)));
		$config['use_page_numbers'] = TRUE;
		$config['num_links'] 		= 5;
		$config['uri_segment'] 		= 5;
		$config['full_tag_open'] 	= '<ul class="pagination">';
        $config['full_tag_close'] 	= '</ul>';
        $config['first_link'] 		= '&laquo; Awal';
        $config['first_tag_open'] 	= '<li class="prev page">';
        $config['first_tag_close'] 	= '</li>';

        $config['last_link'] 		= 'Akhir &raquo;';
        $config['last_tag_open'] 	= '<li class="next page">';
        $config['last_tag_close'] 	= '</li>';

        $config['next_link'] 		= 'Selanjutnya &rarr;';
        $config['next_tag_open'] 	= '<li class="next page">';
        $config['next_tag_close'] 	= '</li>';

        $config['prev_link'] 		= '&larr; Sebelumnya';
        $config['prev_tag_open'] 	= '<li class="prev page">';
        $config['prev_tag_close'] 	= '</li>';

        $config['cur_tag_open'] 	= '<li class="active"><a href="">';
        $config['cur_tag_close'] 	= '</a></li>';

        $config['num_tag_open'] 	= '<li class="page">';
        $config['num_tag_close'] 	= '</li>';
		$config['per_page'] 		= 10;
		$config['first_url'] 		= base_url().'layanan/kategori/'.$slug_kategori.'/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(5)) ? ($this->uri->segment(5) - 1) * $config['per_page'] : 0;
		$layanan 	= $this->layanan_model->kategori($id_kategori,$config['per_page'], $page);

		$data = array(	'title'		=> 'Kategori layanan: '.$kategori->nama_kategori,
						'deskripsi'	=> 'Kategori layanan: '.$kategori->nama_kategori,
						'keywords'	=> 'Kategori layanan: '.$kategori->nama_kategori,
						'layanan'	=> $layanan,
						'pagin' 	=> $this->pagination->create_links(),
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'layanan/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Read layanan detail
	public function read($slug_layanan)	{
		$site 		= $this->konfigurasi_model->listing();
		$layanan 	= $this->layanan_model->read($slug_layanan);
		$listing 	= $this->layanan_model->listing_read();
		$kategori 	= $this->nav_model->nav_layanan();

		if(count(array($layanan)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		// Update hit
		if($layanan) {
			$newhits 	= $layanan->hits + 1;
			$hit 		= array(	'id_layanan'	=> $layanan->id_layanan,
									'hits'		=> $newhits);
			$this->layanan_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $layanan->judul_layanan,
						'deskripsi'	=> $layanan->judul_layanan,
						'keywords'	=> $layanan->judul_layanan,
						'layanan'	=> $layanan,
						'listing'	=> $listing,
						'site'		=> $site,
						'isi'		=> 'layanan/read');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Profil layanan detail
	public function profil($slug_layanan)	{
		$site 		= $this->konfigurasi_model->listing();
		$layanan 	= $this->layanan_model->read($slug_layanan);
		$profil 	= $this->nav_model->nav_profil();

		if(count(array($layanan)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		$listing 	= $this->layanan_model->listing_profil();

		// Update hit
		if($layanan) {
			$newhits = $layanan->hits + 1;
			$hit = array(	'id_layanan'	=> $layanan->id_layanan,
							'hits'		=> $newhits);
			$this->layanan_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $layanan->judul_layanan,
						'deskripsi'	=> $layanan->judul_layanan,
						'keywords'	=> $layanan->judul_layanan,
						'layanan'	=> $layanan,
						'site'		=> $site,
						'listing'	=> $profil,
						'isi'		=> 'layanan/profil');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Profil layanan detail
	public function layanan($slug_layanan)	{
		$site 		= $this->konfigurasi_model->listing();
		$layanan 	= $this->layanan_model->read($slug_layanan);
		$profil 	= $this->nav_model->nav_layanan();

		if(count(array($layanan)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		$listing 	= $this->layanan_model->listing_layanan();

		// Update hit
		if($layanan) {
			$newhits = $layanan->hits + 1;
			$hit = array(	'id_layanan'	=> $layanan->id_layanan,
							'hits'		=> $newhits);
			$this->layanan_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $layanan->judul_layanan,
						'deskripsi'	=> $layanan->judul_layanan,
						'keywords'	=> $layanan->judul_layanan,
						'layanan'	=> $layanan,
						'site'		=> $site,
						'listing'	=> $profil,
						'isi'		=> 'layanan/layanan');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

}

/* End of file Layanan.php */
/* Location: ./application/controllers/Layanan.php */