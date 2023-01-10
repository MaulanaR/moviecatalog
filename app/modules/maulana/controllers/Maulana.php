<?php
defined('BASEPATH') or exit('No direct script access allowed');
/**
 * @author 		Maulana Rahman <maulana.code@gmail.com>
 */
class Maulana extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if (!$this->alus_auth->logged_in()) {
            redirect('admin/Login', 'refresh');
        }
        $this->load->model('Maulana_model', 'model');
    }

    public function scan()
    {
        $head['title'] = "scan QRcode";
        $this->load->view('template/temaalus/header', $head);
        $this->load->view('maulana/scan');
        $this->load->view('template/temaalus/footer');
    }

    public function create()
    {
        $head['title'] = "Create QRcode";
        $data['qr'] = null;

        if ($this->input->post('user_id', TRUE) != "") {
            $batch = [
                'user_id' => $this->input->post('user_id', TRUE),
                'name' => $this->input->post('name', TRUE),
                'no' => $this->input->post('no', TRUE),
            ];
            $batch = json_encode($batch);
            $qr = $this->generate_qrcode($batch);
            $data['qr'] = $qr['file'];
        }
        $this->load->view('template/temaalus/header', $head);
        $this->load->view('maulana/create', $data);
        $this->load->view('template/temaalus/footer');
    }

    function generate_qrcode($data)
    {
        /* Load QR Code Library */
        $this->load->library('ciqrcode');

        /* Data */
        $hex_data   = bin2hex($data);
        $save_name  = $hex_data . '.png';

        /* QR Code File Directory Initialize */
        $dir = 'assets/media/qrcode/';
        if (!file_exists($dir)) {
            mkdir($dir, 0775, true);
        }

        /* QR Configuration  */
        $config['cacheable']    = true;
        $config['imagedir']     = $dir;
        $config['quality']      = true;
        $config['size']         = '1024';
        $config['black']        = array(255, 255, 255);
        $config['white']        = array(255, 255, 255);
        $this->ciqrcode->initialize($config);

        /* QR Data  */
        $params['data']     = $data;
        $params['level']    = 'L';
        $params['size']     = 10;
        $params['savename'] = FCPATH . $config['imagedir'] . $save_name;

        $this->ciqrcode->generate($params);

        /* Return Data */
        $return = array(
            'content' => $data,
            'file'    => $dir . $save_name
        );
        return $return;
    }
}

/* End of file  Home.php */
/* Location: ./application/controllers/ Home.php */