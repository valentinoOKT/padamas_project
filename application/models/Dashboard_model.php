<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Total berita
	public function berita()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('berita');
		$query = $this->db->get();
		return $query->row();
	}

	// Total staff
	public function staff()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('staff');
		$query = $this->db->get();
		return $query->row();
	}

	// Total client
	public function client()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('client');
		$query = $this->db->get();
		return $query->row();
	}

	// Total agenda
	public function agenda()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('agenda');
		$query = $this->db->get();
		return $query->row();
	}

	// Total galeri
	public function galeri()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('galeri');
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

/* End of file Dasboar_model.php */
/* Location: ./application/models/Dasboar_model.php */