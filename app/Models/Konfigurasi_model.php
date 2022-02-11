<?php

namespace App\Models;

use CodeIgniter\Model;

class Konfigurasi_model extends Model
{
    protected $table         = 'konfigurasi';
    protected $primaryKey    = 'id_konfigurasi';
    protected $allowedFields = [];

    // Listing
    public function listing()
    {
        return $this->asArray()
            ->first();
    }

    // tambah
    public function edit($data)
    {
        $builder = $this->db->table('konfigurasi');
        $builder->where('id_konfigurasi', $data['id_konfigurasi']);
        $builder->update($data);
    }
    public function menu_01($hak=NULL)
    { //menu_id, menu_nama, menu_nama_eng, menu_url, menu_urutan, menu_icon, hak, isaktif, isaccess_i, modified_by, modified_date
        $builder = $this->db->table('backend_menu');
        $builder->select('backend_menu.*');
        $builder->where(['backend_menu.isaktif' => '1' ]);
        if($hak!=NULL){
            $builder->like('backend_menu.hak',$hak);
        }        
        $builder->orderBy('backend_menu.menu_urutan', 'ASC');
        $query = $builder->get();
        return $query->getResultArray();
    }
    public function menu_02($hak=NULL)
    { //menu_sub_id, menu_id, menu_sub_nama, menu_sub_nama_eng, menu_sub_url, menu_sub_urutan, menu_sub_icon, hak, isaktif, modified_by, modified_date
        $builder = $this->db->table('backend_menu_sub');
        $builder->select('backend_menu_sub.*');
        $builder->where(['isaktif' => '1' ]); 
        if($hak!=NULL){
            $builder->like('backend_menu_sub.hak',$hak);
        }               
        $builder->orderBy('backend_menu_sub.menu_id', 'ASC');
        $builder->orderBy('backend_menu_sub.menu_sub_urutan', 'ASC');
        $query = $builder->get();
        return $query->getResultArray();
    }
    public function menu_03($hak=NULL)
    {
        $builder = $this->db->table('backend_menu_sub2');
        $builder->select('backend_menu_sub2.*');
        $builder->where(['backend_menu_sub2.isaktif' => '1' ]); 
        if($hak!=NULL){
            $builder->like('backend_menu_sub2.hak',$hak);
        }               
        $builder->orderBy('backend_menu_sub2.menu_id', 'ASC');
        $builder->orderBy('backend_menu_sub2.menu_sub_id', 'ASC');
        $builder->orderBy('backend_menu_sub2.menu_sub_urutan', 'ASC');
        $query = $builder->get();
        return $query->getResultArray();
    }            
}
