<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produk extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
		$this->load->model('kategori_model');
	}

	// Main page
	public function index()	{
		$site 		= $this->konfigurasi_model->listing();
		$populer	= $this->produk_model->populer();
		
		// Produk dan paginasi
		// Produk dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'produk/index/';
		$config['total_rows'] 		= count(array($this->produk_model->total()));
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
		$config['first_url'] 		= base_url().'produk/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$produk 	= $this->produk_model->produk($config['per_page'], $page);

		$data = array(	'title'		=> 'Produk - '.$site->namaweb,
						'deskripsi'	=> 'Produk - '.$site->namaweb,
						'keywords'	=> 'Produk - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'produk'	=> $produk,
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'produk/list');
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
			redirect(base_url('produk/search?s='.$keywords),'refresh');
		}else{
			redirect(base_url('produk'),'refresh');
		}
	}

	// Search
	public function search()
	{
		$this->load->helper('security');
		$keyword 	= xss_clean($_GET['s']);
		$keywords	= encode_php_tags($keyword);
		$populer	= $this->produk_model->populer();

		if($keywords=="") {
			redirect(base_url('produk'),'refresh');
		}

		$site 		= $this->konfigurasi_model->listing();
		
		// Produk dan paginasi
		// Produk dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'produk/search?s='.$keywords.'/index/';
		$config['total_rows'] 		= count(array($this->produk_model->total_search($keywords)));
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
		$config['first_url'] 		= base_url().'produk/search?s='.$keywords;
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$produk 	= $this->produk_model->search($keywords,$config['per_page'], $page);

		$data = array(	'title'		=> 'Hasil pencarian: '.$keywords,
						'deskripsi'	=> 'Produk - '.$site->namaweb,
						'keywords'	=> 'Produk - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'produk'	=> $produk,
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'produk/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Category
	public function kategori($slug_kategori)	{
		$site 			= $this->konfigurasi_model->listing();
		$kategori 		= $this->kategori_model->read($slug_kategori);
		$populer	= $this->produk_model->populer();
		if(count(array($kategori)) < 1) {
			redirect(base_url('oops'),'refresh');
		}
		
		
		$id_kategori	= $kategori->id_kategori;


		// Produk dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'produk/kategori/'.$slug_kategori.'/index/';
		$config['total_rows'] 		= count(array($this->produk_model->all_kategori($id_kategori)));
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
		$config['first_url'] 		= base_url().'produk/kategori/'.$slug_kategori.'/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(5)) ? ($this->uri->segment(5) - 1) * $config['per_page'] : 0;
		$produk 	= $this->produk_model->kategori($id_kategori,$config['per_page'], $page);

		$data = array(	'title'		=> 'Kategori produk: '.$kategori->nama_kategori,
						'deskripsi'	=> 'Kategori produk: '.$kategori->nama_kategori,
						'keywords'	=> 'Kategori produk: '.$kategori->nama_kategori,
						'produk'	=> $produk,
						'pagin' 	=> $this->pagination->create_links(),
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'produk/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Read produk detail
	public function read($slug_produk)	{
		$site 		= $this->konfigurasi_model->listing();
		$produk 	= $this->produk_model->read($slug_produk);
		$listing 	= $this->produk_model->listing_read();

		if(count(array($produk)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		// Update hit
		if($produk) {
			$newhits 	= $produk->hits + 1;
			$hit 		= array(	'id_produk'	=> $produk->id_produk,
									'hits'		=> $newhits);
			$this->produk_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $produk->judul_produk,
						'deskripsi'	=> $produk->judul_produk,
						'keywords'	=> $produk->judul_produk,
						'produk'	=> $produk,
						'listing'	=> $listing,
						'site'		=> $site,
						'isi'		=> 'produk/read');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	//  produk attachment
	public function attachment($slug_produk)	{
		$site 		= $this->konfigurasi_model->listing();
		$produk 	= $this->produk_model->read($slug_produk);
		$attachment 	= $this->nav_model->nav_att();

		if(count(array($produk)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		$listing 	= $this->produk_model->listing_att();

		// Update hit
		if($produk) {
			$newhits = $produk->hits + 1;
			$hit = array(	'id_produk'	=> $produk->id_produk,
							'hits'		=> $newhits);
			$this->produk_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $produk->judul_produk,
						'deskripsi'	=> $produk->judul_produk,
						'keywords'	=> $produk->judul_produk,
						'produk'	=> $produk,
						'site'		=> $site,
						'listing'	=> $attachment,
						'isi'		=> 'produk/attachment');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	//  produk related
	public function related($slug_produk)	{
		$site 		= $this->konfigurasi_model->listing();
		$produk 	= $this->produk_model->read($slug_produk);
		$related 	= $this->nav_model->nav_related();

		if(count(array($produk)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		$listing 	= $this->produk_model->listing_related();

		// Update hit
		if($produk) {
			$newhits = $produk->hits + 1;
			$hit = array(	'id_produk'	=> $produk->id_produk,
							'hits'		=> $newhits);
			$this->produk_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $produk->judul_produk,
						'deskripsi'	=> $produk->judul_produk,
						'keywords'	=> $produk->judul_produk,
						'produk'	=> $produk,
						'site'		=> $site,
						'listing'	=> $related,
						'isi'		=> 'produk/related');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	//  produk spare parts
	public function spare($slug_produk)	{
		$site 		= $this->konfigurasi_model->listing();
		$produk 	= $this->produk_model->read($slug_produk);
		$spare 		= $this->nav_model->nav_spare();

		if(count(array($produk)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		$listing 	= $this->produk_model->listing_spare();

		// Update hit
		if($produk) {
			$newhits = $produk->hits + 1;
			$hit = array(	'id_produk'	=> $produk->id_produk,
							'hits'		=> $newhits);
			$this->produk_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $produk->judul_produk,
						'deskripsi'	=> $produk->judul_produk,
						'keywords'	=> $produk->judul_produk,
						'produk'	=> $produk,
						'site'		=> $site,
						'listing'	=> $spare,
						'isi'		=> 'produk/spare');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// produk accecories
	public function accecories($slug_produk)	{
		$site 		= $this->konfigurasi_model->listing();
		$produk 	= $this->produk_model->read($slug_produk);
		$accecories = $this->nav_model->nav_acc();

		if(count(array($produk)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		$listing 	= $this->produk_model->listing_acc();

		// Update hit
		if($produk) {
			$newhits = $produk->hits + 1;
			$hit = array(	'id_produk'	=> $produk->id_produk,
							'hits'		=> $newhits);
			$this->produk_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $produk->judul_produk,
						'deskripsi'	=> $produk->judul_produk,
						'keywords'	=> $produk->judul_produk,
						'produk'	=> $produk,
						'site'		=> $site,
						'listing'	=> $accecories,
						'isi'		=> 'produk/accecories');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

}

/* End of file Produk.php */
/* Location: ./application/controllers/Produk.php */