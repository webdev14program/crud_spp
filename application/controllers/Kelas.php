<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelas extends CI_Controller
{


    public function index()
    {

        $isi['kelas'] = $this->Model_kelas->dataKelas();
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_kelas', $isi);
        $this->load->view('templates/footer');
    }
}
