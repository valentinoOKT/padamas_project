<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stock_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Listing data
	public function listing() {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, users.nama');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where('jenis_galeri <>','Pop up');
		$this->db->order_by('id_galeri','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data slider
	public function slider() {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, users.nama');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where('jenis_galeri','Homepage');
		$this->db->order_by('urutan','ASC');
		$this->db->limit(5);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data slider
	public function stock_home() {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, kategori_galeri.slug_kategori_galeri, , users.nama');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where('jenis_galeri','Galeri');
		// $this->db->group_by('galeri.id_kategori_galeri');
		$this->db->order_by('id_galeri','DESC');
		$this->db->limit(6);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data popup
	public function popup() {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, users.nama');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where('jenis_galeri','Pop up');
		$this->db->order_by('popup_status','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data popup
	public function popup_aktif() {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, users.nama');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where(array(	'jenis_galeri' 	=> 'Pop up',
								'popup_status'	=> 'Publish'));
		$this->db->order_by('id_galeri','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Listing data slider
	public function stock($limit,$start) {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, users.nama, 
						kategori_galeri.slug_kategori_galeri');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where('jenis_galeri','Galeri');
		$this->db->order_by('id_galeri','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data slider
	public function total_stock() {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, users.nama');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where('jenis_galeri','Galeri');
		$this->db->order_by('id_galeri','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Kategori
	public function kategori() {
		$this->db->select('stock.*, kategori_galeri.nama_kategori_galeri, users.nama, 
						kategori_galeri.slug_kategori_galeri');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where('jenis_galeri','Galeri');
		$this->db->group_by('stock.id_kategori_galeri');
		$this->db->order_by('id_galeri','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori_galeri
	public function kategori_galeri($id_kategori_galeri,$limit,$start) {
		$this->db->select('stock.*, users.nama, kategori_galeri.nama_kategori_galeri, kategori_galeri.slug_kategori_galeri');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where(array(	'stock.id_kategori_galeri'	=> $id_kategori_galeri,
								'stock.jenis_galeri'	=> 'Stock'));
		$this->db->order_by('id_galeri','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kategori_galeri
	public function all_kategori($id_kategori_galeri) {
		$this->db->select('stock.*, users.nama, kategori_galeri.nama_kategori_galeri, kategori_galeri.slug_kategori_galeri');
		$this->db->from('stock');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = stock.id_kategori_galeri','LEFT');
		$this->db->join('users','users.id_user = stock.id_user','LEFT');
		// End join
		$this->db->where(array(	'stock.id_kategori_galeri'	=> $id_kategori_galeri,
								'stock.jenis_galeri'	=> 'Stock'));
		$this->db->order_by('id_galeri','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Detail data
	public function detail($id_galeri) {
		$this->db->select('*');
		$this->db->from('stock');
		$this->db->where('id_galeri',$id_galeri);
		$this->db->order_by('id_galeri','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Tambah
	public function tambah($data) {
		$this->db->insert('stock',$data);
	}

	// Edit
	public function edit($data) {
		$this->db->where('id_galeri',$data['id_galeri']);
		$this->db->update('stock',$data);
	}

	// Edit
	public function edit2($data2) {
		$this->db->where('jenis_galeri','Pop up');
		$this->db->update('stock',$data2);
	}

	// Edit hit
	public function update_hit($hit) {
		$this->db->where('id_galeri',$hit['id_galeri']);
		$this->db->update('stock',$hit);
	}

	// Delete
	public function delete($data) {
		$this->db->where('id_galeri',$data['id_galeri']);
		$this->db->delete('stock',$data);
	}
}

/* End of file Stock_model.php */
/* Location: ./application/models/Stock_model.php */
