<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * @author 		Maulana Rahman <maulana.code@gmail.com>
*/
class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->alus_auth->logged_in())
		{
			redirect('admin/Login','refresh');
		}
		$this->load->model('Dashboard_model','model');
	}

	public function index()
	{
		$head['title'] = "Beranda";
		
		$this->load->view('template/temaalus/header',$head);
		$this->load->view('dashboard/index');
		$this->load->view('template/temaalus/footer');
	}

	function error404()
	{
		if($this->alus_auth->logged_in())
         {
         	$head['title'] = "Ups Page Not Found";

		 	$this->load->view('template/temaalus/header',$head);
		 	$this->load->view('template/temaalus/404');
		 	$this->load->view('template/temaalus/footer');
		}else
		{
			redirect('admin/Login','refresh');
		}
	}

	function read_flag_notif($id)
	{
		$data= array('ptn_read' => 1);
		$this->db->where('ptn_id', $id);
		$this->db->update('pdam_t_notifikasi', $data);
		echo "good";
	}

	function read_all_notif()
	{
		$this->db->where('pmk_user_id', $this->session->userdata('user_id'));
        $this->db->or_where('pmk_user_sek_id', $this->session->userdata('user_id'));
        $siapa_header = $this->db->get('pdam_m_kepada');
            if($siapa_header->num_rows() > 0)
            {
              /*pmk*/
              $data_up = array('ptn_read' => 1);
              $this->db->where('ptn_penerima_pmk_id', $siapa_header->row()->pmk_id);
              $this->db->update('pdam_t_notifikasi', $data_up);
            }else{
              /*user biasa / HTU*/
              $group = $this->session->userdata('group');
              $nama_group = $group[0];

              if($nama_group == "HTU")
              {
                /*maka htu*/
              	$data_up = array('ptn_read' => 1);
                $this->db->where('ptn_penerima_pmk_id', 999);
              	$this->db->update('pdam_t_notifikasi', $data_up);
                
              }else{
              	$data_up = array('ptn_read' => 1);
                $this->db->where('ptn_penerima_user_id', $this->session->userdata('user_id'));
              	$this->db->update('pdam_t_notifikasi', $data_up);
              }
          }
         return true;
	}

}

/* End of file  Home.php */
/* Location: ./application/controllers/ Home.php */