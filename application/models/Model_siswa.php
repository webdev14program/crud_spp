<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_siswa extends CI_Model
{
    public function countSiswaX()
    {
        $sql = "SELECT COUNT(*) AS jumlah_siswa FROM `a_siswa`
                INNER JOIN a_kelas
                ON a_siswa.kelas=a_kelas.id
                WHERE a_kelas.kelas LIKE '%X%';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }
    public function countSiswaXI()
    {
        $sql = "SELECT COUNT(*) AS jumlah_siswa FROM `a_siswa`
                INNER JOIN a_kelas
                ON a_siswa.kelas=a_kelas.id
                WHERE a_kelas.kelas LIKE '%XI%';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }
    public function countSiswaXII()
    {
        $sql = "SELECT COUNT(*) AS jumlah_siswa FROM `a_siswa`
                INNER JOIN a_kelas
                ON a_siswa.kelas=a_kelas.id
                WHERE a_kelas.kelas LIKE '%XII%';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function header_dataSiswa($id_kelas)
    {
        $sql = "SELECT a_kelas.id,a_siswa.id AS id_siswa,a_siswa.nama_siswa,a_kelas.kelas,a_jurusan.jurusan,COUNT(*) AS jumlah_siswa FROM `a_siswa`
INNER JOIN a_kelas
ON a_siswa.kelas=a_kelas.id
INNER JOIN a_jurusan
ON a_kelas.kode=a_jurusan.kode
WHERE a_kelas.id='$id_kelas'
GROUP BY a_kelas.id;";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function dataSiswa($id_kelas)
    {
        $sql = "SELECT a_kelas.id,a_siswa.id AS id_siswa,a_siswa.nama_siswa,a_kelas.kelas,a_jurusan.jurusan FROM `a_siswa`
INNER JOIN a_kelas
ON a_siswa.kelas=a_kelas.id
INNER JOIN a_jurusan
ON a_kelas.kode=a_jurusan.kode
WHERE a_kelas.id='$id_kelas';";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
