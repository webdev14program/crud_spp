<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pembayaran_spp extends CI_Controller
{


    public function index()
    {

        $isi['kelas'] = $this->Model_kelas->dataKelas_Siswa();
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_pembayaran_spp', $isi);
        $this->load->view('templates/footer');
    }

    public function detail_siswa($id_kelas)
    {
        $isi['header'] = $this->Model_siswa->header_dataSiswa($id_kelas);
        $isi['siswa'] = $this->Model_siswa->dataSiswa($id_kelas);
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_detail_spp', $isi);
        $this->load->view('templates/footer');
    }
    public function detail_siswa_spp($id_siswa)
    {
        // $isi['header'] = $this->Model_siswa->header_dataSiswa($id_kelas);
        $isi['siswa'] = $this->Model_siswa->dataSiswaSPP($id_siswa);
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_detail_spp_siswa', $isi);
        $this->load->view('templates/footer');
    }
}
