<?php

namespace App\Controllers\Admin;

//$session = \Config\Services::session();
use App\Models\Pegawai_model;

class Pegawai extends BaseController
{
    // mainpage
    public function index()
    {
        checklogin();
        // $session = session();        
        // $nm_user = $session->get('nama');
        //$nm_user = '';     
        //$this->session->set($newdata);
        $m_data = new Pegawai_model();
        $r_data = $m_data->datanya();
        $data_page = [
            'title'     => ' Daftar Pegawai',
            'r_data'    => $r_data,
            'content'   => 'admin/Pegawai/index',
            'id_01'     => 20,
            'id_02'     => 192,
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
        $m_data = new Pegawai_model();
        $r_data = $m_data->datanya();
        
        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required',
            ]
        )) {
            // isn_employee =  emp_id, emp_no, name, addr,  no_hp, emailnya, position, foto
            $emp_no     = $this->request->getPost('nip');
            $namenya    = $this->request->getPost('nama');
            $addrnya    = $this->request->getPost('almt');
            $no_hp      = $this->request->getPost('hp');
            $emailnya   = $this->request->getPost('email');
            $position   = $this->request->getPost('jab');
            $foto       = '';

            // masuk database
            $data_save = [
                'emp_no'        => $emp_no,
                'name'          => $namenya,
                'addr'          => $addrnya,
                'no_hp'         => $no_hp,
                'emailnya'      => $emailnya,
                'position'      => $position,
                'no_hp'         => $no_hp,
                'jab'           => $jab,
                'position'      => $position,
                'created_by'    => $nm_user,                              
                'created_date'  => date('Y-m-d H:i:s'),                              
            ];
            $m_data->save($data_save);
            // masuk database
            //$this->session->setFlashdata('sukses', 'Data telah ditambah');
            return redirect()->to(base_url('admin/Pegawai/index'));
        }
        $data_page = [
            'title'     => ' Tambah Pegawai ' ,
            'content'   => 'admin/Pegawai/data_add',
            'id_01'     => 20,
            'id_02'     => 192,
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
        $m_data = new Pegawai_model();
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
            // isn_employee =  emp_id, emp_no, name, addr,  no_hp, emailnya, position, foto
            $emp_no     = $this->request->getPost('nip');
            $namenya    = $this->request->getPost('nama');
            $addrnya    = $this->request->getPost('almt');
            $no_hp      = $this->request->getPost('hp');
            $emailnya   = $this->request->getPost('email');
            $position   = $this->request->getPost('jab');
            $foto       = '';

            // masuk database
            $data_save = [
                'emp_no'        => $emp_no,
                'name'          => $namenya,
                'addr'          => $addrnya,
                'no_hp'         => $no_hp,
                'emailnya'      => $emailnya,
                'position'      => $position,
                'no_hp'         => $no_hp,
                'jab'           => $jab,
                'position'      => $position,  
                'modified_by'   => $nm_user,
                'modified_date' => date('Y-m-d H:i:s'),                              
            ];
            $m_data ->update($its_id, $data_save);
            // masuk database
            //$this->session->setFlashdata('sukses', 'Data telah diedit');

            return redirect()->to(base_url('admin/Pegawai/index'));
        }
        $data_page = [
            'title'     => ' Edit data : ' . $r_data['name'],
            'r_data'    => $r_data,
            'content'   => 'admin/pegawai/data_update',
            'id_01'     => 20,
            'id_02'     => 192,
            'id_03'     => -1,            
        ];
        echo view('admin/layout/wrapper', $data_page);
    }

    // delete
    public function delete($its_id)
    {
        checklogin();
        //$m_data = new Pegawai_model();
        //$r_data = $m_data->datanya($its_id);
        $data   = ['emp_id' => $its_id];
        $m_desa->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');
        return redirect()->to(base_url('admin/Pegawai/index'));
    }
}
