<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Public_Controller {

    public function __construct()
    {

        parent::__construct();

        $this->load->helper('url');
    }


	public function index()
	{
		redirect('/auth/login', 'refresh');
	}
}
