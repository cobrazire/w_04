<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Yurts extends CI_Controller {
    public function index()
    {
    	$this->load->helper('url');
    	$this->load->view('top_view');
        $this->load->view('yurts_view');
        $this->load->view('bottom_view');
    }
}