<?php

namespace App\Models;

use CodeIgniter\Model;

class Kunjungan_model extends Model
{
    protected $table              = 'isn_visit_emp';
    protected $primaryKey         = 've_id';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['ve_id', 've_no', 've_date', 've_desc', 'visit_fee', 'sts_bayar', 'id_desa', 'emp_id'];
    protected $useTimestamps      = false;
    protected $createdField       = 'created_at';
    protected $updatedField       = 'updated_at';
    protected $deletedField       = 'deleted_at';
    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
    // isn_visit_emp    = ve_id, ve_no, ve_date, ve_desc, visit_fee, sts_bayar, id_desa, emp_id 
    // isn_employee     = emp_id, emp_no, name, addr,  no_hp, emailnya, position, foto
    // isn_item         = item_id, item_no, item_nm, item_desc, unit_price, unit, contents, content_unit, model, merk
    // stock_min, stock_max, 
    // isn_desa         = id_desa, kd_desa, nama_desa, uang_jalan
    // isn_kecamatan 	= id_kec, kode_kec, nama_kec

    // datanya
    public function datanya($it_id=NULL)
    {
        $builder = $this->db->table('isn_visit_emp');
        $builder->select('isn_visit_emp.*');
        $builder->select('isn_employee.emp_no, isn_employee.name, isn_employee.addr,  isn_employee.no_hp, isn_employee.emailnya, isn_employee.position');
        $builder->select('isn_desa.kd_desa, isn_desa.nama_desa, isn_desa.uang_jalan');
        $builder->join('isn_employee', 'isn_employee.emp_id = isn_employee.emp_id', 'LEFT');
        $builder->join('isn_desa', 'isn_desa.id_desa = isn_desa.id_desa', 'LEFT');
        if ($it_id!=NULL){
            $builder->where('isn_visit_emp.ve_id' , $it_id);
        }
        $builder->orderBy( 'isn_visit_emp.ve_no ASC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    }

    // pelanggan
    public function pelanggan($it_id=NULL)
    {
        $builder = $this->db->table('isn_desa');
        $builder->select('isn_desa.*');
        $builder->select('isn_kecamatan.kode_kec, isn_kecamatan.nama_kec');
        $builder->join('isn_kecamatan', 'isn_kecamatan.id_kec = isn_desa.id_kec', 'LEFT');
        if ($it_id!=NULL){
            $builder->where('isn_desa.id_desa', $it_id);
        }
        $builder->orderBy('isn_kecamatan.kode_kec', 'ASC');
        $builder->orderBy('isn_desa.kd_desa', 'ASC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    }
    // pegawai
    public function pegawai($it_id=NULL)
    {
        $builder = $this->db->table('isn_employee');
        $builder->select('isn_employee.*');
        if ($it_id!=NULL){
            $builder->where('isn_employee.emp_id', $it_id);
        }
        $builder->orderBy('isn_employee.emp_no', 'ASC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    } 
    // Barang
    public function barang($it_id=NULL)
    {
        $builder = $this->db->table('isn_item');
        $builder->select('isn_item.*');
        if ($it_id!=NULL){
            $builder->where('isn_item.item_id', $it_id);
        }
        $builder->orderBy('isn_item.item_no', 'ASC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    }            

    // detailnya
    public function detailnya($it_id)
    {
        $builder = $this->db->table('isn_visit_emp');
        $builder->where('isn_visit_emp.ve_id', $it_id);
        $builder->orderBy('isn_visit_emp.ve_id', 'DESC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getRowArray();
    }

    public function tambah($data)
    {
        $builder = $this->db->table('isn_visit_emp');
        $builder->insert($data);
    }

}
