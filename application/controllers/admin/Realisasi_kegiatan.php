<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class realisasi_kegiatan extends Admin_Controller {

    public function __construct()
    {
        parent::__construct();

        /* Load :: Common */
        $this->load->helper('number');
        $this->load->model('admin/dashboard_model');
    }


	public function index()
	{
        if ( ! $this->ion_auth->logged_in() OR ! $this->ion_auth->is_admin())
        {
            redirect('auth/login', 'refresh');
        }
        else
        {
            /* Title Page */
            $this->page_title->push("Rencana Jadwal Kegiatan");
            $this->data['pagetitle'] = $this->page_title->show();

            /* Breadcrumbs */
            $this->data['breadcrumb'] = $this->breadcrumbs->show();

            /* Load Template */
            $this->template->admin_render('admin/realisasi_kegiatan/index', $this->data);
        }
	}

    public function create_form(){
        if($this->input->post("nama")){
            $params = array(
                "kode_kegiatan" => $this->input->post("nama"),
                "nama_kegiatan" => $this->input->post("nama"),
                "anggaran" => $this->input->post("nama"),
                "tahun" => $this->input->post("nama"),
                "pptk" => $this->input->post("nama"),
                "kpa" => $this->input->post("nama"),
                "lokasi" => $this->input->post("nama"),
                "volume" => $this->input->post("nama"),
                "pelaksanaan" => $this->input->post("nama"),
                "akhir_kontrak" => $this->input->post("nama"),
                "keterangan" => $this->input->post("nama"),
            )
        } else {

        }
    }
}
