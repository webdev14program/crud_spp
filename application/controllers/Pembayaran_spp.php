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
        $isi['tabel'] = $this->Model_siswa->TabeldataSiswaSPP($id_siswa);
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('tampilan_detail_spp_siswa', $isi);
        $this->load->view('templates/footer');
    }

    public function simpan_spp()
    {
        $id_spp = rand(111111, 999999);
        $id_siswa = $this->input->post('id_siswa');
        $bulan = $this->input->post('bulan');
        $nominal = $this->input->post('nominal');

        $data = array(
            'id_spp' => $id_spp,
            'id_siswa' => $id_siswa,
            'bulan' => $bulan,
            'nominal' => $nominal,
        );

        $this->db->insert('spp', $data);
        redirect('Pembayaran_spp/detail_siswa_spp/' . $id_siswa);
    }
}
