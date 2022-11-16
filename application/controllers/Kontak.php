<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
  
require 'vendor/autoload.php';
  

class Kontak extends CI_Controller {

	// Database
	public function __construct()
	{
		parent::__construct();
	}

	// Main page kontak
	public function index()	{
		$mail = new PHPMailer(true);
		$site 			= $this->konfigurasi_model->listing();
		
		// Validasi
		$valid = $this->form_validation;
		$valid->set_rules('nama','Nama','required',
			array(	'required'		=> 'Nama harus diisi'));

		$valid->set_rules('subject','subject','required',
			array(	'required'		=> 'Subject harus diisi'));
		
		$valid->set_rules('email','Email','required',
			array(	'required'		=> 'Email harus diisi'));
		
		$valid->set_rules('pesan','Pesan','required',
			array(	'required'		=> 'Pesan harus diisi'));
		
		if($valid->run() === FALSE) {
		// End validasi

		$data = array(	'title'		=> 'Kontak ',
						'deskripsi'	=> 'Kontak '.$site->namaweb.' | '.$site->tagline.' '.$site->tentang,
						'keywords'	=> 'Kontak '.$site->namaweb.' | '.$site->tagline.' '.$site->keywords,
						'site'		=> $site,
						'isi'		=> 'kontak/list');
		$this->load->view('layout/wrapper', $data, FALSE);
		//Kirim ke pemilik website
		}else{
			$i 			= $this->input;
			$email		= $i->post('email');
			$subject	= $i->post('subject');
			$message	= 'Nama pengirim: '.$i->post('nama').'<br>'.
						  'Nama perusahaan: '.$i->post('nama_company').'<br>'.
						  'Nomor telepon: '.$i->post('phone').'<br>
						  Email: '.$i->post('email').'<br>
						  Berikut isi pesan:<hr>'.
						  $i->post('pesan');
			$nama		= $i->post('nama');
			
			// $this->load->library('email');

			$mail->SMTPDebug = $site->smtp_timeout;                                       
			$mail->isSMTP(true);                                            
			$mail->Host       = $site->smtp_host;                    
			$mail->SMTPAuth   = true;                             
			$mail->Username   = $site->smtp_user;                 
			$mail->Password   = $site->smtp_pass;                        
			$mail->SMTPSecure = $site->protocol;                              
			$mail->Port       = $site->smtp_port;  
		
			$mail->setFrom($email, $nama);           
			$mail->addAddress($site->email);
			
			$mail->isHTML(true);                                  
			$mail->Subject = $subject;
			$mail->Body    = $message;
			$mail->AltBody = $message;
			$mail->send();
				
			// $config['protocol']     = $site->protocol;
			// $config['smtp_host']    = $site->smtp_host;
			// $config['smtp_port']    = $site->smtp_port;
			// $config['smtp_timeout'] = $site->smtp_timeout;
			// $config['smtp_user']    = $site->smtp_user;
			// $config['smtp_pass']    = $site->smtp_pass;
			// $config['charset']      = 'utf-8';
			// $config['newline']      = "\r\n";
			// $config['mailtype']     = 'html'; // or html
			// $config['validate']   = TRUE;

			// $this->email->initialize($config);
			// $this->email->from($email, $nama);
			// $this->email->to($site->email);
			// $this->email->cc($email);
			// $this->email->bcc($site->email);
			
			// $this->email->subject($subject);
			// $this->email->message($message);
			
			// $this->email->send();
			
			// Redirect page
			$this->session->set_flashdata('sukses','Pesan Anda sudah terkirim, Terima kasih');
			redirect(base_url('kontak'));
		}
		// End kirim
	}

}

/* End of file Kontak.php */
/* Location: ./application/controllers/Kontak.php */
