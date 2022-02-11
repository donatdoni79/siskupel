<?php

namespace App\Models;

use CodeIgniter\Model;

class Barang_model extends Model
{
    protected $table              = 'isn_item';
    protected $primaryKey         = 'item_id';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['item_id', 'item_no', 'item_nm', 'item_desc', 'unit_price', 'item_unit', 'item_contents', ];
    protected $useTimestamps      = false;
    protected $createdField       = 'created_at';
    protected $updatedField       = 'updated_at';
    protected $deletedField       = 'deleted_at';
    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
    // isn_item =  item_id, item_no, item_nm, item_desc, unit_price, unit, contents, content_unit, 
    // model, merk, stock_min, stock_max, created_by, created_date, modified_by, modified_date

    // datanya
    public function datanya($it_id=NULL)
    {
        $builder = $this->db->table('isn_item');
        $builder->select('isn_item.*');
        if ($it_id!=NULL){
            $builder->where('isn_item.item_id' , $it_id);
        }
        $builder->orderBy( 'isn_item.item_no ASC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getResultArray();
    }

    // detailnya
    public function detailnya($it_id)
    {
        $builder = $this->db->table('isn_item');
        $builder->where('isn_item.item_id', $it_id);
        $builder->orderBy('isn_item.item_id', 'DESC');
        $query = $builder->get();
        //echo $this->db->getLastQuery();die();
        return $query->getRowArray();
    }

    public function tambah($data)
    {
        $builder = $this->db->table('isn_item');
        $builder->insert($data);
    }

}
