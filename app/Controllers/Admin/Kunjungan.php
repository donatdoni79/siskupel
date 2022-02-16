<?php

namespace App\Controllers\Admin;

//$session = \Config\Services::session();
use App\Models\Kunjungan_model;

class Kunjungan extends BaseController
{
    // mainpage
    public function index()
    {
        checklogin();
        // $session = session();        
        // $nm_user = $session->get('nama');
        //$nm_user = '';     
        //$this->session->set($newdata);
        $m_data = new Kunjungan_model();
        $r_data = $m_data->datanya();
        $data_page = [
            'title'     => ' Daftar Kunjungan',
            'r_data'    => $r_data,
            'content'   => 'admin/kunjungan/index',
            'id_01'     => 4,
            'id_02'     => 870,
            'id_03'     => -1,
        ];        
        echo view('admin/layout/wrapper', $data_page);        
    }

    // add
    public function Add()
    {
        checklogin();
        // $session = session();
        // $nm_user = $session->get('nama');
        $nm_user = '';
        $m_data = new Kunjungan_model();
        $r_plg  = $m_data->pelanggan();
        $r_peg  = $m_data->pegawai();
        $r_brg  = $m_data->barang();
        
        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'kd_brg' => 'required',
            ]
        )) {
    // isn_item =  item_id, item_no, item_nm, item_desc, unit_price, unit, contents, content_unit, 
    // model, merk, stock_min, stock_max, created_by, created_date, modified_by, modified_date
            $item_no        = $this->request->getPost('kd_brg');
            $item_nm        = $this->request->getPost('nm_brg');
            $item_desc      = $this->request->getPost('ket');
            $item_unit_price     = $this->request->getPost('harga');
            $item_unit           = $this->request->getPost('satuan');
            $item_contents       = $this->request->getPost('isi');
            $item_content_unit   = $this->request->getPost('satuan_isi');
            $item_model          = $this->request->getPost('item_model');
            $item_merk           = $this->request->getPost('item_merk');
            $item_stock_min      = $this->request->getPost('stokmax');
            $item_stock_max      = $this->request->getPost('stokmin');

            // masuk database
            $data_save = [
                'item_no'            => $item_no,
                'item_nm'            => $item_nm,
                'item_desc'          => $item_desc,
                'item_unit_price'    => $item_unit_price,
                'item_unit'          => $item_unit,
                'item_contents'      => $item_contents,
                'item_content_unit'  => $item_content_unit,
                'item_model'         => $item_model,
                'item_merk'          => $item_merk,
                'item_stock_min'     => $item_stock_min,
                'item_stock_max'     => $item_stock_max,
                'created_by'    => $nm_user,                              
                'created_date'  => date('Y-m-d H:i:s'),        
            ];
            //$builder = $this->db->table('isn_item');
            //$builder->insert($data_save);
            //$m_data->tambah($data_save);            
            $m_data->save($data_save);
            // masuk database
            //$this->session->setFlashdata('sukses', 'Data telah ditambah');
            return redirect()->to(base_url('admin/Kunjungan'));
        }
        $data_page = [
            'title'     => ' Tambah Kunjungan ' ,
            'content'   => 'admin/kunjungan/data_add',
            'rplg'      => $r_plg,
            'rpeg'      => $r_peg,
            'rbrg'      => $r_brg,
            'id_01'     => 4,
            'id_02'     => 870,
            'id_03'     => -1,            
        ];
        echo view('admin/layout/wrapper', $data_page);
    }    

    // edit
    public function edit($its_id)
    {
        checklogin();
        // $session = session();
        // $nm_user = $session->get('nama');
        $nm_user = '';
        $m_data = new Kunjungan_model();
        $r_data = $m_data->datanya($its_id);
        
	    // echo "<pre>";
	    // print_r($desa_det);
	    // die();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required',
            ]
        )) {
            $item_no        = $this->request->getPost('kd_brg');
            $item_nm        = $this->request->getPost('nm_brg');
            $item_desc      = $this->request->getPost('ket');
            $item_unit_price     = $this->request->getPost('harga');
            $item_unit           = $this->request->getPost('satuan');
            $item_contents       = $this->request->getPost('isi');
            $item_content_unit   = $this->request->getPost('satuan_isi');
            $item_model          = $this->request->getPost('item_model');
            $item_merk           = $this->request->getPost('item_merk');
            $item_stock_min      = $this->request->getPost('stokmax');
            $item_stock_max      = $this->request->getPost('stokmin');

            // masuk database
            $data_save = [
                'item_no'            => $item_no,
                'item_nm'            => $item_nm,
                'item_desc'          => $item_desc,
                'item_unit_price'    => $item_unit_price,
                'item_unit'          => $item_unit,
                'item_contents'      => $item_contents,
                'item_content_unit'  => $item_content_unit,
                'item_model'         => $item_model,
                'item_merk'          => $item_merk,
                'item_stock_min'     => $item_stock_min,
                'item_stock_max'     => $item_stock_max,
                'modified_by'   => $nm_user,
                'modified_date' => date('Y-m-d H:i:s'),                              
            ];
            $m_data ->update($its_id, $data_save);
            // masuk database
            //$this->session->setFlashdata('sukses', 'Data telah diedit');

            return redirect()->to(base_url('admin/Kunjungan/index'));
        }
        $data_page = [
            'title'     => ' Edit data : ' . $r_data['item_name'],
            'r_data'    => $r_data,
            'content'   => 'admin/kunjungan/data_update',
            'id_01'     => 4,
            'id_02'     => 870,
            'id_03'     => -1,            
        ];
        echo view('admin/layout/wrapper', $data_page);
    }

    // delete
    public function delete($its_id)
    {
        checklogin();
        $data   = ['emp_id' => $its_id];
        $m_desa->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');
        return redirect()->to(base_url('admin/Kunjungan/index'));
    }
	public function getUjalan($its_id){
        //checklogin();
        $m_data = new Kunjungan_model();
        $r_data = $m_data->pelanggan($its_id);
		$jmlbrs 	= count($r_data);
		if($jmlbrs>0) {
			$data = array(
				'response'	=> 'success',
				'dbdata'	=> $r_data,			
				'stsdb'		=> 'Ada',			
			);		
		}else{
			//$dbstok=array();
			$data = array(
				'response'	=> 'success',
				'dbdata'	=> $r_data,			
				'stsdb'		=> '-',			
			);			
		}
		// echo "<pre>";print_r($data);die();
		echo json_encode($data);
	}
	public function getBarang($its_id){
        //checklogin();
        $m_data = new Kunjungan_model();
        $r_data = $m_data->barang($its_id);
		$jmlbrs 	= count($r_data);
		if($jmlbrs>0) {
			$data = array(
				'response'	=> 'success',
				'dbdata'	=> $r_data,			
				'stsdb'		=> 'Ada',			
			);		
		}else{
			//$dbstok=array();
			$data = array(
				'response'	=> 'success',
				'dbdata'	=> $r_data,			
				'stsdb'		=> '-',			
			);			
		}
		// echo "<pre>";print_r($data);die();
		echo json_encode($data);
	}        
}
