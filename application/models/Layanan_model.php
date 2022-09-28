<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Layanan_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Listing data
	public function listing() {
		$this->db->select('layanan.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function Dashboard() {
		$this->db->select('layanan.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->order_by('id_layanan','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function bulanan($bulan) {
		$this->db->select('layanan.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(layanan.tanggal,"%Y-%m")',$bulan);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function tahunan($tahun) {
		$this->db->select('layanan.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(layanan.tanggal,"%Y")',$tahun);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan layanan teramai
	public function populer()
	{
		$this->db->select('*');
		$this->db->from('layanan');
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish'));
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan layanan teramai
	public function hits()
	{
		$this->db->select('*');
		$this->db->from('layanan');
		$this->db->order_by('hits','DESC');
		$this->db->limit(100);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function kategori_admin($id_kategori) {
		$this->db->select('layanan.*, users.nama');
		$this->db->from('layanan');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.id_kategori'	=> $id_kategori));
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function status_admin($status_layanan) {
		$this->db->select('layanan.*, users.nama');
		$this->db->from('layanan');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> $status_layanan));
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function jenis_admin($jenis_layanan) {
		$this->db->select('layanan.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.jenis_layanan'	=> $jenis_layanan));
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function author_admin($id_user) {
		$this->db->select('layanan.*, users.nama');
		$this->db->from('layanan');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.id_user'	=> $id_user));
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function kategori($id_kategori,$limit,$start) {
		$this->db->select('layanan.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.id_kategori'	=> $id_kategori,
								'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Layanan'));
		$this->db->order_by('id_layanan','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function all_kategori($id_kategori) {
		$this->db->select('layanan.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.id_kategori'	=> $id_kategori,
								'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Layanan'));
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->result();
	}


	// Listing layanan
	public function layanan($limit,$start) {
		$this->db->select('layanan.*, 
					users.nama, 
					kategori.nama_kategori, kategori.slug_kategori,
					kategori.slug_kategori
					');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Layanan'));
		$this->db->order_by('layanan.tanggal_publish','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total() {
		$this->db->select('layanan.*, users.nama');
		$this->db->from('layanan');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Layanan'));
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing layanan
	public function search($keywords,$limit,$start) {
		$this->db->select('layanan.*, 
					users.nama, 
					kategori.nama_kategori, kategori.slug_kategori,
					kategori.slug_kategori
					');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Layanan'));
		$this->db->like('layanan.judul_layanan',$keywords);
		$this->db->or_like('layanan.isi',$keywords);
		$this->db->group_by('id_layanan');
		$this->db->order_by('id_layanan','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total_search($keywords) {
		$this->db->select('layanan.*, users.nama');
		$this->db->from('layanan');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Layanan'));
		$this->db->like('layanan.judul_layanan',$keywords);
		$this->db->or_like('layanan.isi',$keywords);
		$this->db->group_by('id_layanan');
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing read
	public function listing_read() {
		$this->db->select('layanan.*, users.nama');
		$this->db->from('layanan');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Layanan'));
		$this->db->order_by('id_layanan','DESC');
		$this->db->limit(10);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing profil
	public function listing_profil() {
		$this->db->select('layanan.*, users.nama');
		$this->db->from('layanan');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Profil'));
		$this->db->order_by('id_layanan','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing layanan
	public function listing_layanan() {
		$this->db->select('layanan.*, users.nama');
		$this->db->from('layanan');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Layanan'));
		$this->db->order_by('id_layanan','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing headline
	public function listing_headline() {
		$this->db->select('layanan.*, 
					users.nama, 
					kategori.nama_kategori, kategori.slug_kategori,
					kategori.slug_kategori
					');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		// End join
		$this->db->where(array(	'layanan.status_layanan'	=> 'Publish',
								'layanan.jenis_layanan'	=> 'Headline'));
		$this->db->order_by('id_layanan','DESC');
		$this->db->limit(9);
		$query = $this->db->get();
		return $query->result();
	}


	// Read data
	public function read($slug_layanan) {
		$this->db->select('layanan.*, 
					users.nama, 
					kategori.nama_kategori, kategori.slug_kategori,
					kategori.slug_kategori
					');
		$this->db->from('layanan');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = layanan.id_kategori','LEFT');
		$this->db->join('users','users.id_user = layanan.id_user','LEFT');
		$this->db->where('slug_layanan',$slug_layanan);
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Detail data
	public function detail($id_layanan) {
		$this->db->select('*');
		$this->db->from('layanan');
		$this->db->where('id_layanan',$id_layanan);
		$this->db->order_by('id_layanan','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Tambah
	public function tambah($data) {
		$this->db->insert('layanan',$data);
	}

	// Edit
	public function edit($data) {
		$this->db->where('id_layanan',$data['id_layanan']);
		$this->db->update('layanan',$data);
	}

	// Edit hit
	public function update_hit($hit) {
		$this->db->where('id_layanan',$hit['id_layanan']);
		$this->db->update('layanan',$hit);
	}

	// Delete
	public function delete($data) {
		$this->db->where('id_layanan',$data['id_layanan']);
		$this->db->delete('layanan',$data);
	}
}

/* End of file Layanan_model.php */
/* Location: ./application/models/Layanan_model.php */
