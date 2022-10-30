<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jurusan extends CI_Controller
{


    public function index()
    {

        $isi['jurusan'] = $this->Model_jurusan->dataJurusan();
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_jurusan', $isi);
        $this->load->view('templates/footer');
    }
}
