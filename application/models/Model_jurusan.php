<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_jurusan extends CI_Model
{

    public function dataJurusan()
    {
        $sql = "SELECT a_jurusan.id,a_jurusan.kode,a_jurusan.jurusan FROM `a_siswa`
INNER JOIN a_jurusan
ON a_siswa.jurusan=a_jurusan.kode
GROUP BY a_siswa.jurusan;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
