<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{


    public function index()
    {
        $isi['siswa_x'] = $this->Model_siswa->countSiswaX();
        $isi['siswa_xi'] = $this->Model_siswa->countSiswaXI();
        $isi['siswa_xii'] = $this->Model_siswa->countSiswaXII();

        $isi['siswa_x_pm'] = $this->Model_siswa->countSiswaXPM();
        $isi['siswa_xi_pm'] = $this->Model_siswa->countSiswaXIPM();
        $isi['siswa_xii_pm'] = $this->Model_siswa->countSiswaXIIPM();

        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_home', $isi);
        $this->load->view('templates/footer');
    }
}
