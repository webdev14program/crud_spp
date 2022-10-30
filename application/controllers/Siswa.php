<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa extends CI_Controller
{


    public function index()
    {

        $isi['kelas'] = $this->Model_kelas->dataKelas_Siswa();
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_siswa', $isi);
        $this->load->view('templates/footer');
    }

    public function detail_siswa($id_kelas)
    {
        $isi['header'] = $this->Model_siswa->header_dataSiswa($id_kelas);
        $isi['siswa'] = $this->Model_siswa->dataSiswa($id_kelas);
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_detail_kelas', $isi);
        $this->load->view('templates/footer');
    }
}
