<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_kelas extends CI_Model
{

    public function dataKelas()
    {
        $sql = "SELECT *, a_kelas.id AS id_kelas FROM `a_kelas`
                INNER JOIN a_jurusan
                ON a_kelas.kode=a_jurusan.kode;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function dataKelas_Siswa()
    {
        $sql = "SELECT a_kelas.id,a_jurusan.jurusan,a_kelas.kelas,COUNT(*) AS jumlah_siswa FROM `a_siswa`
                INNER JOIN a_kelas
                ON a_siswa.kelas=a_kelas.id
                INNER JOIN a_jurusan
                ON a_kelas.kode=a_jurusan.kode
                GROUP BY a_kelas.id;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
