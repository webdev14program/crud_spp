<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{


    public function index()
    {
        $isi['siswa_x'] = $this->Model_siswa->countSiswaX();
        $isi['siswa_xi'] = $this->Model_siswa->countSiswaXI();
        $isi['siswa_xii'] = $this->Model_siswa->countSiswaXII();

        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_home', $isi);
        $this->load->view('templates/footer');
    }
}
