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
	    // echo "tess";
	    // echo "<pre>";
	    // print_r($ppn);
	    //die();

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
        
        // Start validasi id_desa id_peg
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'id_desa' => ['label' => 'Pilih Pelanggan, ', 'rules' => 'required'],
                'id_peg' => ['label' => 'Pilih Teknisi, ', 'rules' => 'required'],
                'tgl' => ['label' => 'Tanggal Tidak boleh kosong, ', 'rules' => 'required']
            ])) 
        {
    // isn_visit_emp    = ve_id, ve_no, ve_date, ve_desc, visit_fee, sts_bayar, id_desa, emp_id  
            $ve_no          = '';
            $ve_date        = vTgl_save($this->request->getPost('tgl'));
            $ve_desc        = $this->request->getPost('ket');
            $visit_fee      = $this->request->getPost('ujalan');
            $sts_bayar      = 'Belum';
            $id_desa        = $this->request->getPost('isi');
            $emp_id         = $this->request->getPost('id_peg');
            
            $assis_emp      = $this->request->getPost('id_pegdet');            
            $id_barang      = $this->request->getPost('id_barang');
            $jmlnya         = $this->request->getPost('jmlnya');
            $hrg_brgnya     = $this->request->getPost('hrg_brg');
            $ketnya         = $this->request->getPost('ketnya');
            
            // masuk database
            $data_save = [
                've_no'         => $ve_no,
                've_date'       => $ve_date,
                've_desc'       => $ve_desc,
                'visit_fee'     => $visit_fee,
                'sts_bayar'     => $sts_bayar,
                'id_desa'       => $id_desa,
                'emp_id'        => $emp_id,
                'created_by'    => $nm_user,                              
                'created_date'  => date('Y-m-d H:i:s'),        
            ];
            $m_data->save($data_save);
            $id = $m_data->getInsertID();
            
            // Insert Employe Assistens
            $xy=0; $emp_id;
            $val_assis_emp = count($assis_emp);

            // isn_visit_emp_det =  ve_id_det, ve_id, emp_id
            while($xy<$val_assis_emp){
                $emp_id =$assis_emp[$xy];
                if(!empty($emp_id)){
                    $data_save = [
                        've_id'     => $id,
                        'emp_id'    => $emp_id,
                    ];
                    $builder_01 = $this->db->table('isn_visit_emp_det');
                    $builder_01->insert($data_save);
                    //$this->db->insert('isn_visit_emp_det', $data_save);
                }
                $xy++;
            }
            // Insert Item isn_visit_item 	= id_vi, ve_id, item_id, used_item, content_unit, vi_desc
            $jml_brg = count($id_barang);
            $xy=0;$brg_id= ""; $brg_jml=""; 
            while($xy<$jml_brg){
                $brg_id= ""; $brg_jml="";
                $brg_id     = $id_barang[$xy];
                $brg_jml    = $jmlnya[$xy];
                $hrg_brg    = $$hrg_brgnya[$xy];
                if(!empty($brg_id)){
                    $data_save = [
                        've_id'         => $id,
                        'emp_id'        => $brg_id,
                        'used_item'     => $brg_jml,
                        'content_unit'  => $hrg_brg,
                        'vi_desc'       => '',
                    ];
                    $builder_01 = $this->db->table('isn_visit_item');
                    $builder_01->insert($data_save);
                    //$this->db->insert('isn_visit_emp_det', $data_save);
                }
                $xy++;
            }                
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
            // isn_visit_emp    = ve_id, ve_no, ve_date, ve_desc, visit_fee, sts_bayar, id_desa, emp_id  
            $ve_no          = '';
            $ve_date        = vTgl_save($this->request->getPost('tgl'));
            $ve_desc        = $this->request->getPost('ket');
            $visit_fee      = $this->request->getPost('ujalan');
            $sts_bayar      = 'Belum';
            $id_desa        = $this->request->getPost('isi');
            $emp_id         = $this->request->getPost('id_peg');

            $assis_emp      = $this->request->getPost('id_pegdet');            
            $id_barang      = $this->request->getPost('id_barang');
            $jmlnya         = $this->request->getPost('jmlnya');
            $ketnya         = $this->request->getPost('ketnya');

            // masuk database
            $data_save = [
                've_no'         => $ve_no,
                've_date'       => $ve_date,
                've_desc'       => $ve_desc,
                'visit_fee'     => $visit_fee,
                'sts_bayar'     => $sts_bayar,
                'id_desa'       => $id_desa,
                'emp_id'        => $emp_id,
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
