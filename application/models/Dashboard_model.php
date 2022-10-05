<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Total layanan
	public function layanan()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('layanan');
		$query = $this->db->get();
		return $query->row();
	}


	// Total Produk
	public function produk()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('produk');
		$query = $this->db->get();
		return $query->row();
	}


	// Total galeri
	public function stock()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('stock');
		$query = $this->db->get();
		return $query->row();
	}

	// Total galeri sold
	public function sold()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('sold');
		$query = $this->db->get();
		return $query->row();
	}

	// Total user
	public function user()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('users');
		$query = $this->db->get();
		return $query->row();
	}

}

/* End of file Dashboard_model.php */
/* Location: ./application/models/Dashboard_model.php */