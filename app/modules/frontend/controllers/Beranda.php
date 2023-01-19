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
		$this->load->helper('url');
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
	public function show_images(){
		$data['movies']= $this->Beranda_model->get_data_gambar();
		$this->load->view('picture', $data);
	}

	public function ajax_list()
    {
        $list = $this->Alus_items->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $person) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $person->name;
            $row[] = $person->description;
            $row[] = '<img src="' . base_url('assets/categories/') . $person->picture . '" width="200px" height="auto">';
            if ($person->is_active) {
                $row[] = "<span class='label label-success'>Active</span>";
            }else {
                $row[] = "<span class='label label-danger'>Not Active</span>";
            }
            $row[] = "<a href='javascript:' onClick='btn_modal_edit(" . $person->id . ")' data-toggle='tooltip' data-placement='bottom' title='Edit' class='btn btn-xs btn-flat btn-primary' style='background:#00897b'><i class='fa fa-edit'></i> Edit</a>" . "<a href='javascript:' onClick='btn_modal_delete(" . $person->id . ")' data-toggle='tooltip' data-placement='bottom' title='Delete' class='btn btn-xs btn-flat btn-danger'><i class='fa fa-trash'></i> Delete</a>";
            //add html for action
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->Alus_items->count_all(),
            "recordsFiltered" => $this->Alus_items->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }


}

/* Location: ./application/modules/X/controllers/X.php */
/* End of file X.php */
