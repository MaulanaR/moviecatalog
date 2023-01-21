<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * @author      Maulana Rahman <maulana.code@gmail.com>
 */

class Beranda extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Beranda_model');
    }

    public function index()
    {
            $title_head = "Beranda";
            $data_gambar['title'] = $title_head;
			$data_gambar['movies'] = $this->db->get('movies');

            /*DATA*/
			// disini dikasih datanya
			
            /*END DATA*/

			//kalo nama varnya data_gambar, diatas harusnya data_gambar juga, bukan $head
			//lanjutkan
            $this->load->view('beranda', $data_gambar);      
    }
    public function details($id)
    {
        $data['title'] = "Details Movies";
        $data['movies'] = $this->Beranda_model->getdetails($id);
        $this->load->view('details', $data);   
    }
    public function comment($id)
    {
        $data['title'] = "Details Comment";
        $data['comments'] = $this->Beranda_model->getcomment($id);
        $this->load->view('details', $data);   
    }


}

/* Location: ./application/modules/X/controllers/X.php */
/* End of file X.php */
