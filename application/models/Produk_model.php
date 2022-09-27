<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produk_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Listing data
	public function listing() {
		$this->db->select('produk.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function Dashboard() {
		$this->db->select('produk.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->order_by('id_produk','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function bulanan($bulan) {
		$this->db->select('produk.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(produk.tanggal,"%Y-%m")',$bulan);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function tahunan($tahun) {
		$this->db->select('produk.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(produk.tanggal,"%Y")',$tahun);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan produk teramai
	public function populer()
	{
		$this->db->select('*');
		$this->db->from('produk');
		$this->db->where(array(	'produk.status_produk'	=> 'Publish'));
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan produk teramai
	public function hits()
	{
		$this->db->select('*');
		$this->db->from('produk');
		$this->db->order_by('hits','DESC');
		$this->db->limit(100);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function kategori_admin($id_kategori) {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.id_kategori'	=> $id_kategori));
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function status_admin($status_produk) {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> $status_produk));
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function jenis_admin($jenis_produk) {
		$this->db->select('produk.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.jenis_produk'	=> $jenis_produk));
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function author_admin($id_user) {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.id_user'	=> $id_user));
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function kategori($id_kategori,$limit,$start) {
		$this->db->select('produk.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.id_kategori'	=> $id_kategori,
								'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Produk'));
		$this->db->order_by('id_produk','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori
	public function all_kategori($id_kategori) {
		$this->db->select('produk.*, users.nama, kategori.nama_kategori, kategori.slug_kategori');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.id_kategori'	=> $id_kategori,
								'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Produk'));
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->result();
	}


	// Listing produk
	public function produk($limit,$start) {
		$this->db->select('produk.*, 
					users.nama, 
					kategori.nama_kategori, kategori.slug_kategori,
					kategori.slug_kategori
					');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Produk'));
		$this->db->order_by('produk.tanggal_publish','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total() {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Produk'));
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing produk
	public function search($keywords,$limit,$start) {
		$this->db->select('produk.*, 
					users.nama, 
					kategori.nama_kategori, kategori.slug_kategori,
					kategori.slug_kategori
					');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Produk'));
		$this->db->like('produk.judul_produk',$keywords);
		$this->db->or_like('produk.isi',$keywords);
		$this->db->group_by('id_produk');
		$this->db->order_by('id_produk','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total_search($keywords) {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Produk'));
		$this->db->like('produk.judul_produk',$keywords);
		$this->db->or_like('produk.isi',$keywords);
		$this->db->group_by('id_produk');
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing read
	public function listing_read() {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Produk'));
		$this->db->order_by('id_produk','DESC');
		$this->db->limit(10);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing Attachment
	public function listing_att() {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Attachment'));
		$this->db->order_by('id_produk','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing Accecories
	public function listing_acc() {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Accecories'));
		$this->db->order_by('id_produk','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing Accecories
	public function listing_spare() {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Spare Part'));
		$this->db->order_by('id_produk','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing Related Products
	public function listing_related() {
		$this->db->select('produk.*, users.nama');
		$this->db->from('produk');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		// End join
		$this->db->where(array(	'produk.status_produk'	=> 'Publish',
								'produk.jenis_produk'	=> 'Related'));
		$this->db->order_by('id_produk','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}


	// Read data
	public function read($slug_produk) {
		$this->db->select('produk.*, 
					users.nama, 
					kategori.nama_kategori, kategori.slug_kategori,
					kategori.slug_kategori
					');
		$this->db->from('produk');
		// Join dg 2 tabel
		$this->db->join('kategori','kategori.id_kategori = produk.id_kategori','LEFT');
		$this->db->join('users','users.id_user = produk.id_user','LEFT');
		$this->db->where('slug_produk',$slug_produk);
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Detail data
	public function detail($id_produk) {
		$this->db->select('*');
		$this->db->from('produk');
		$this->db->where('id_produk',$id_produk);
		$this->db->order_by('id_produk','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Tambah
	public function tambah($data) {
		$this->db->insert('produk',$data);
	}

	// Edit
	public function edit($data) {
		$this->db->where('id_produk',$data['id_produk']);
		$this->db->update('produk',$data);
	}

	// Edit hit
	public function update_hit($hit) {
		$this->db->where('id_produk',$hit['id_produk']);
		$this->db->update('produk',$hit);
	}

	// Delete
	public function delete($data) {
		$this->db->where('id_produk',$data['id_produk']);
		$this->db->delete('produk',$data);
	}
}

/* End of file Produk_model.php */
/* Location: ./application/models/Produk_model.php */
