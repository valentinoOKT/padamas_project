<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nav_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	
	// Menu utama
	public function nav_menu() {
		$this->db->select('*');
		$this->db->from('menu');
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}


	// Navigasi profil
	public function nav_profil() {
		$this->db->select('*');
		$this->db->from('layanan');
		$this->db->where(array(	'jenis_layanan'	=> 'Profil',
								'status_layanan'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi profil
	public function nav_layanan() {
		$this->db->select('*');
		$this->db->from('layanan');
		$this->db->where(array(	'jenis_layanan'	=> 'Rental',
								'status_layanan'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi Service
	public function nav_topik() {
		$this->db->select('*');
		$this->db->from('layanan');
		$this->db->where(array(	'jenis_layanan'	=> 'Service',
								'status_layanan'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi Attachment
	public function nav_att() {
		$this->db->select('*');
		$this->db->from('produk');
		$this->db->where(array(	'jenis_produk'	=> 'Attachment',
								'status_produk'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi Related
	public function nav_related() {
		$this->db->select('*');
		$this->db->from('produk');
		$this->db->where(array(	'jenis_produk'	=> 'Related',
								'status_produk'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi Accecories
	public function nav_acc() {
		$this->db->select('*');
		$this->db->from('produk');
		$this->db->where(array(	'jenis_produk'	=> 'Accecories',
								'status_produk'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi Spare Part
	public function nav_spare() {
		$this->db->select('*');
		$this->db->from('produk');
		$this->db->where(array(	'jenis_produk'	=> 'Spare',
								'status_produk'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data slider
	public function nav_stock() {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, kategori_galeri.slug_kategori_galeri');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		// End join
		$this->db->where('jenis_galeri','Galeri');
		$this->db->group_by('stock.id_kategori_galeri');
		$this->db->order_by('id_galeri','DESC');
		$this->db->limit(8);
		$query = $this->db->get();
		return $query->result();
	}

	// listing 
	public function nav_aplikasi() {
		$this->db->select('*');
		$this->db->from('aplikasi');
		$this->db->order_by('urutan','ASC');
		$this->db->limit(20);
		$query	=	$this->db->get();
		return $query->result();
	}


	// Kategori
	public function nav_bidang() {
		$this->db->select('bidang.*, kategori_bidang.nama_kategori_bidang, users.first_name AS nama, 
						kategori_bidang.slug_kategori_bidang');
		$this->db->from('bidang');
		// Join dg 2 tabel
		$this->db->join('kategori_bidang','kategori_bidang.id_kategori_bidang = bidang.id_kategori_bidang');
		$this->db->join('users','users.id = bidang.id_user','LEFT');
		// End join
		$this->db->where('status_bidang','Publish');
		$this->db->group_by('bidang.id_kategori_bidang');
		$this->db->order_by('id_bidang','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori_bidang
	public function kategori_bidang($id_kategori_bidang) {
		$this->db->select('bidang.*, users.first_name AS nama, kategori_bidang.nama_kategori_bidang, kategori_bidang.slug_kategori_bidang');
		$this->db->from('bidang');
		// Join dg 2 tabel
		$this->db->join('kategori_bidang','kategori_bidang.id_kategori_bidang = bidang.id_kategori_bidang','LEFT');
		$this->db->join('users','users.id = bidang.id_user','LEFT');
		// End join
		$this->db->where(array(	'bidang.id_kategori_bidang'	=> $id_kategori_bidang,
								'bidang.status_bidang'		=> 'Publish'));
		$this->db->order_by('id_bidang','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	

}

/* End of file Nav_model.php */
/* Location: ./application/models/Nav_model.php */