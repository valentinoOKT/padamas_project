<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('konfigurasi_model');
		$this->load->model('layanan_model');
		$this->load->model('stock_model');
		$this->load->model('sold_model');
		$this->load->model('produk_model');
	}

	public function index()
	{
		$site 			= $this->konfigurasi_model->listing();
		$slider 		= $this->stock_model->slider();
		$popup 			= $this->stock_model->popup_aktif();
		$stock 			= $this->stock_model->stock_home();
		$sold			= $this->sold_model->sold_home();
		$kategori_galeri= $this->stock_model->kategori();
		$rental 		= $this->nav_model->nav_layanan();
		$profil 		= $this->nav_model->nav_profil();
		$service		= $this->nav_model->nav_topik();
		$attachment		= $this->nav_model->nav_att();
		$accecories		= $this->nav_model->nav_acc();
		$spare			= $this->nav_model->nav_spare();
		$related		= $this->nav_model->nav_related();

		// Layanan dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'home/index/';
		$config['total_rows'] 		= count($this->layanan_model->total());
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
		$config['per_page'] 		= 8;
		$config['first_url'] 		= base_url().'home/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$layanan 	= $this->layanan_model->layanan($config['per_page'], $page);

		$data = array(	'title'				=> $site->singkatan.' - '.$site->tagline,
						'deskripsi'			=> $site->deskripsi,
						'keywords'			=> $site->keywords,
						'site'				=> $site,
						'slider'			=> $slider,
						'pagin' 			=> $this->pagination->create_links(),
						'rental'			=> $rental,
						'popup'				=> $popup,
						'stock'				=> $stock,
						'sold'				=> $sold,
						'kategori_galeri'	=> $kategori_galeri,
						'service'			=> $service,
						'attachment'		=> $attachment,
						'accecories'		=> $accecories,
						'spare'				=> $spare,
						'related'			=> $related,
						'layanan'			=> $layanan,
						'profil'			=> $profil,
						'isi'				=> 'home/list'
			);
		$this->load->view('layout/wrapper', $data);
	}

	// Oops
	public function oops()
	{
		$site 			= $this->konfigurasi_model->listing();
		$data = array(	'title'				=> 'Not found',
						'deskripsi'			=> $site->deskripsi,
						'keywords'			=> $site->keywords,
						'site'				=> $site,
						'isi'				=> 'home/oops'
			);
		$this->load->view('layout/wrapper', $data);
	}
}