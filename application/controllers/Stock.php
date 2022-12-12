<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stock extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('stock_model');
		$this->load->model('kategori_galeri_model');
	}

	// Main page galeri
	public function index()	{
		$site 		= $this->konfigurasi_model->listing();
		$kategori 	= $this->stock_model->kategori();

		// Galeri dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'stock/index/';
		$config['total_rows'] 		= count($this->stock_model->total_stock());
		$config['use_page_numbers'] = TRUE;
		$config['num_links'] 		= 5;
		$config['uri_segment'] 		= 3;
		$config['per_page'] 		= 12;
		$config['first_url'] 		= base_url().'stock/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$stock 	= $this->stock_model->stock($config['per_page'], $page);
		// End paginasi

		$data = array(	'title'		=> 'Stock ',
						'deskripsi'	=> 'Stock - '.$site->namaweb,
						'keywords'	=> 'Stock - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'stock'		=> $stock,
						'kategori'	=> $kategori,
						'isi'		=> 'stock/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Category
	public function kategori($slug_kategori_galeri)	{
		$site 					= $this->konfigurasi_model->listing();
		$kategori_galeri 		= $this->kategori_galeri_model->read($slug_kategori_galeri);
		
		if(count($kategori_galeri) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		$id_kategori_galeri		= $kategori_galeri->id_kategori_galeri;

		// Layanan dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'stock/kategori/'.$slug_kategori_galeri.'/index/';
		$config['total_rows'] 		= count($this->stock_model->all_kategori($id_kategori_galeri));
		$config['use_page_numbers'] = TRUE;
		$config['num_links'] 		= 5;
		$config['uri_segment'] 		= 5;
		$config['full_tag_open'] 	= '<ul class="pagination">';
        $config['full_tag_close'] 	= '</ul>';
        $config['first_link'] 		= '&laquo; First';
        $config['first_tag_open'] 	= '<li class="prev page">';
        $config['first_tag_close'] 	= '</li>';

        $config['last_link'] 		= 'Last &raquo;';
        $config['last_tag_open'] 	= '<li class="next page">';
        $config['last_tag_close'] 	= '</li>';

        $config['next_link'] 		= 'Next &rarr;';
        $config['next_tag_open'] 	= '<li class="next page">';
        $config['next_tag_close'] 	= '</li>';

        $config['prev_link'] 		= '&larr; Prev';
        $config['prev_tag_open'] 	= '<li class="prev page">';
        $config['prev_tag_close'] 	= '</li>';

        $config['cur_tag_open'] 	= '<li class="active"><a href="">';
        $config['cur_tag_close'] 	= '</a></li>';

        $config['num_tag_open'] 	= '<li class="page">';
        $config['num_tag_close'] 	= '</li>';
		$config['per_page'] 		= 12;
		$config['first_url'] 		= base_url().'stock/kategori/'.$slug_kategori_galeri.'/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(5)) ? ($this->uri->segment(5) - 1) * $config['per_page'] : 0;
		$stock 	= $this->stock_model->kategori_galeri($id_kategori_galeri,$config['per_page'], $page);

		$data = array(	'title'				=> 'Kategori galeri: '.$kategori_galeri->nama_kategori_galeri,
						'deskripsi'			=> 'Kategori galeri: '.$kategori_galeri->nama_kategori_galeri,
						'keywords'			=> 'Kategori galeri: '.$kategori_galeri->nama_kategori_galeri,
						'stock'				=> $stock,
						'kategori'			=> $kategori_galeri,
						'pagin' 			=> $this->pagination->create_links(),
						'site'				=> $site,
						'isi'				=> 'stock/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Read galeri
	public function read($id_galeri) {
		$site 		= $this->konfigurasi_model->listing();
		$stock 		= $this->stock_model->detail($id_galeri);
		$listing 	= $this->stock_model->stock_home();

		if(count(array($stock)) < 1) {
			redirect(base_url('oops'),'refresh');
		}
		
		// Update hit
		if($stock) {
			$newhits = $stock->hits + 1;
			$hit = array(	'id_galeri'	=> $stock->id_galeri,
							'hits'		=> $newhits);
			$this->stock_model->update_hit($hit);
		}
		//  End update hit

		$data = array(	'title'		=> $stock->judul_galeri,
						'deskripsi'	=> $stock->judul_galeri,
						'keywords'	=> $stock->judul_galeri,
						'stock'		=> $stock,
						'listing'	=> $listing,
						'site'		=> $site,
						'isi'		=> 'stock/read');
		$this->load->view('layout/wrapper', $data, FALSE);
	}
}

/* End of file Stock.php */
/* Location: ./application/controllers/Stock.php */