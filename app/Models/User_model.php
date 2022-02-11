<?php

namespace App\Models;

use CodeIgniter\Model;

class User_model extends Model
{
    protected $table              = 'isn_user';
    protected $primaryKey         = 'id';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['id', 'jab_id', 'usernamenya', 'passnya', 'pin', 'emailnya', 'nama', 'alamat', 'jenis_kelamin', 'telp', 'hak', 'aktif', 'groupid', 'foto'];
    protected $useTimestamps      = false;
    protected $createdField       = 'created_at';
    protected $updatedField       = 'updated_at';
    protected $deletedField       = 'deleted_at';
    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
    // id, jab_id, usernamenya, passnya, pin, emailnya, nama, alamat, jenis_kelamin, telp, hak, aktif, groupid, foto
    // login
    public function login($username, $password)
    {
        return $this->asArray()
            ->where(['usernamenya' => $username,
                'passnya'      => sha1($password), ])
            ->first();
            
    }

    // listing
    public function listing()
    {
        $builder = $this->db->table('isn_user');
        $builder->orderBy('isn_user.id', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // total
    public function total()
    {
        $builder = $this->db->table('isn_user');
        $builder->select('COUNT(*) AS total');
        $builder->orderBy('isn_user.id', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // detail
    public function detail($id_user)
    {
        $builder = $this->db->table('isn_user');
        $builder->where('isn_user.id', $id_user);
        $builder->orderBy('isn_user.id', 'DESC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getRowArray();
    }

    // tambah  log
    public function user_log($data)
    {
        $builder = $this->db->table('user_logs');
        $builder->insert($data);
    }

    public function user_login($username, $password)
    {
        $builder = $this->db->table('isn_user');
        $builder->select('isn_user.*');
        $builder->where(['isn_user.usernamenya' => $username, 'isn_user.passnya'=> sha1($password) ]);
        $builder->orderBy('isn_user.id', 'DESC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    }    
}
