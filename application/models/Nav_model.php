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

	// Sub menu
	public function nav_sub_menu($id_menu) {
		$this->db->select('*');
		$this->db->from('sub_menu');
		$this->db->where('id_menu',$id_menu);
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}
	
	// Listing
	public function nav_anggota()
	{
		$this->db->select('anggota.*,
							COUNT(staff.id_staff) AS total_staff,
							provinsi.nama_provinsi');
		$this->db->from('anggota');
		$this->db->join('provinsi', 'provinsi.id_provinsi = anggota.id_provinsi', 'left');
		$this->db->join('staff', 'staff.id_anggota = anggota.id_anggota', 'left');
        $this->db->group_by('anggota.id_anggota');
		$this->db->order_by('urutan', 'ASC');
		$query = $this->db->get();
		return $query->result();
	}

	public function nav_mitra()
	{
		$this->db->select('*');
		$this->db->from('mitra');
		$this->db->order_by('urutan', 'ASC');
		$query = $this->db->get();
		return $query->result();
	}

	

	// Navigasi profil
	public function nav_profil() {
		$this->db->select('*');
		$this->db->from('berita');
		$this->db->where(array(	'jenis_berita'	=> 'Profil',
								'status_berita'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi profil
	public function nav_layanan() {
		$this->db->select('*');
		$this->db->from('berita');
		$this->db->where(array(	'jenis_berita'	=> 'Rental',
								'status_berita'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi profil
	public function nav_topik() {
		$this->db->select('*');
		$this->db->from('berita');
		$this->db->where(array(	'jenis_berita'	=> 'Service',
								'status_berita'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data slider
	public function nav_galeri() {
		$this->db->select('galeri.*, kategori_galeri.nama_kategori_galeri, kategori_galeri.slug_kategori_galeri');
		$this->db->from('galeri');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = galeri.id_kategori_galeri','LEFT');
		// End join
		$this->db->where('jenis_galeri','Galeri');
		$this->db->group_by('galeri.id_kategori_galeri');
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

	// Navigasi berita
	public function nav_berita() {
		$this->db->select('berita.*,kategori.nama_kategori,kategori.slug_kategori');
		$this->db->from('berita');
		$this->db->join('kategori','kategori.id_kategori = berita.id_kategori');
		$this->db->where(array(	'jenis_berita'	=> 'Berita',
								'status_berita'	=> 'Publish'));
		$this->db->group_by('berita.id_kategori');
		$this->db->order_by('kategori.urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

}

/* End of file Nav_model.php */
/* Location: ./application/models/Nav_model.php */