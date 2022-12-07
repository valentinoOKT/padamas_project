<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);
		$this->load->model('Dashboard_model');
	}

	// Halaman Dashboard
	public function index()
	{
		$data = array(	'title'					=> 'Halaman Dashboard',
						'isi'					=> 'admin/Dashboard/list'
					);
		$this->load->view('admin/layout/wrapper', $data, FALSE);
	}
}

/* End of file Dashboard.php */
/* Location: ./application/controllers/admin/Dashboard.php */