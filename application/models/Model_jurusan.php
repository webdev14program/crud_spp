<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_jurusan extends CI_Model
{

    public function dataJurusan()
    {
        $sql = "SELECT a_jurusan.id,a_jurusan.kode,a_jurusan.jurusan,COUNT(*) AS jumlah_kelas FROM `a_jurusan`
INNER JOIN a_kelas
ON a_jurusan.kode=a_kelas.kode
GROUP BY a_jurusan.id;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
