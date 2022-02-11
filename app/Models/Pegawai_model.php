<?php

namespace App\Models;

use CodeIgniter\Model;

class Pegawai_model extends Model
{
    protected $table              = 'isn_employee';
    protected $primaryKey         = 'emp_id';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['emp_id', 'emp_no', 'name', 'addr',  'no_hp', 'emailnya', 'position', 'foto'];
    protected $useTimestamps      = false;
    protected $createdField       = 'created_at';
    protected $updatedField       = 'updated_at';
    protected $deletedField       = 'deleted_at';
    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
    // isn_employee =  emp_id, emp_no, name, addr,  no_hp, emailnya, position, foto

    // public function login($username, $password)
    // {
    //     return $this->asArray()
    //         ->where(['emp_id' => $username,
    //             'passnya'      => sha1($password), ])
    //         ->first();
    // }

    // datanya
    public function datanya($it_id=NULL)
    {
        $builder = $this->db->table('isn_employee');
        $builder->select('isn_employee.*');
        if ($it_id!=NULL){
            $builder->where('isn_employee.emp_id' , $it_id);
        }
        $builder->orderBy( 'isn_employee.emp_no ASC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    }

    // detailnya
    public function detailnya($it_id)
    {
        $builder = $this->db->table('isn_employee');
        $builder->where('isn_employee.emp_id', $it_id);
        $builder->orderBy('isn_employee.emp_id', 'DESC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getRowArray();
    }



}
