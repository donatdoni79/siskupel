<?php

namespace App\Models;

use CodeIgniter\Model;

class Desa_model extends Model
{
    protected $table              = 'isn_desa';
    protected $primaryKey         = 'id_desa';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['id_desa', 'kd_desa', 'nama_desa', 'sts_wil_des', 'uang_jalan', 'person1', 'hp1', 'jab1', 'person2', 'hp2', 'jab2', 'person3', 'hp3', 'jab3', 'id_kec', 'id_kab', 'id_prov', 'created_by', 'created_date'];
    protected $useTimestamps      = false;
    protected $createdField       = 'created_at';
    protected $updatedField       = 'updated_at';
    protected $deletedField       = 'deleted_at';
    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
    // isn_desa >> id_desa, kd_desa, nama_desa, sts_wil_des, uang_jalan, person1, hp1, jab1, person2, hp2, jab2,
    // person3, hp3, jab3, id_kec, id_kab, id_prov, created_by, created_date,

    // public function login($username, $password)
    // {
    //     return $this->asArray()
    //         ->where(['id_desa' => $username,
    //             'passnya'      => sha1($password), ])
    //         ->first();
    // }

    // listing
    public function data_desa($id_desa=NULL)
    {
        $builder = $this->db->table('isn_desa');
        $builder->select('isn_desa.*, isn_kecamatan.kode_kec, isn_kecamatan.nama_kec');
        $builder->join('isn_kecamatan', 'isn_kecamatan.id_kec = isn_desa.id_kec', 'INNER');
        if ($id_desa!=NULL){
            $builder->where('isn_desa.id_desa' , $id_desa);
        }
        $builder->orderBy('isn_kecamatan.kode_kec ASC');
        $builder->orderBy( 'isn_desa.kd_desa ASC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    }
    public function data_kec($id_kec=NULL)
    {
        $builder = $this->db->table('isn_kecamatan');
        $builder->select('isn_kecamatan.*');
        if ($id_kec!=NULL){
            $builder->where('isn_desa.id_kec' , $id_kec);
        }
        $builder->orderBy('isn_kecamatan.kode_kec ASC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    }     

    // total
    public function total()
    {
        $builder = $this->db->table('isn_desa');
        $builder->select('COUNT(*) AS total');
        $builder->orderBy('isn_desa.id_desa', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // detail
    public function detail($id_desa)
    {
        $builder = $this->db->table('isn_desa');
        $builder->where('isn_desa.id_desa', $id_desa);
        $builder->orderBy('isn_desa.id_desa', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // tambah  log
    // public function user_log($data)
    // {
    //     $builder = $this->db->table('user_logs');
    //     $builder->insert($data);
    // }


}
