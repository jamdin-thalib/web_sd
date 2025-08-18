<?php
<<<<<<< HEAD:application/controllers/About.php
class About extends CI_Controller
{
	function __construct()
	{
=======
class Sambutan extends CI_Controller{
	function __construct(){
>>>>>>> 01bd0a42beba455f21806a9a5ff6fd3bf33450f0:application/controllers/Sambutan.php
		parent::__construct();
		$this->load->model('m_pengunjung');
		$this->m_pengunjung->count_visitor();
	}

	function index()
	{
		$x['tot_guru'] = $this->db->get('tbl_guru')->num_rows();
		$x['tot_siswa'] = $this->db->get('tbl_siswa')->num_rows();
		$x['tot_files'] = $this->db->get('tbl_files')->num_rows();
		$x['tot_agenda'] = $this->db->get('tbl_agenda')->num_rows();
		$this->load->view('depan/v_about', $x);
	}
}
