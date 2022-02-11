<?php

namespace App\Controllers\Admin;

//$session = \Config\Services::session();
use App\Models\Desa_model;

class Desa extends BaseController
{
    // mainpage
    public function index()
    {
        checklogin();
        // $session = session();        
        // $nm_user = $session->get('nama');
        $nm_user = '';     
        //$this->session->set($newdata);
        $m_desa = new Desa_model();
        $desa   = $m_desa->data_desa();
        $kec   = $m_desa->data_kec();
        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required',
                //'username' => 'required|min_length[3]|is_unique[users.username]',
            ]
        )) {
            // masuk database            
            $data_save = [
                'kd_desa'       => $this->request->getPost('kd_desa'),
                'nama_desa'     => $this->request->getPost('nama_desa'),
                'sts_wil_des'   => $this->request->getPost('sts_wil_des'),
                'uang_jalan'    => $this->request->getPost('uang_jalan'),
                'email_desa'    => $this->request->getPost('email_desa'),
                'person1'       => $this->request->getPost('person1'),
                'hp1'           => $this->request->getPost('hp1'),
                'jab1'          => $this->request->getPost('jab1'),
                'person2'       => $this->request->getPost('person2'),
                'hp2'           => $this->request->getPost('hp2'),
                'jab2'          => $this->request->getPost('jab2'),
                'person3'       => $this->request->getPost('person3'),
                'hp3'           => $this->request->getPost('hp3'),
                'jab3'          => $this->request->getPost('jab3'),                                
                'id_kec'        => $this->request->getPost('id_kec'),                                
                'id_kab'        => 1,                                
                'id_prov'       => 1,  
                'created_date'  => date('Y-m-d H:i:s'),                              
                'created_by'    => $nm_user,                              
            ];
            $m_desa->save($data_save);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah ditambah');
            return redirect()->to(base_url('admin/index'));
        }
        // $data = ['title' => 'Pengguna Website: ' . $total['total'],
        //     'user'       => $user,
        //     'content'    => 'admin/user/index',
        // ];
        
        $data_page = [
            'title'     => ' Daftar Desa',
            'desa'      => $desa,
            'kec'       => $kec,
            'content'   => 'admin/desa/index',
            'id_01'     => 7,
            'id_02'     => 881,
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
        $m_desa = new Desa_model();
        $desa   = $m_desa->data_desa();
        $kec   = $m_desa->data_kec();
        
        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required',
            ]
        )) {
            $kd_desa       = $this->request->getPost('kode');
            $nama_desa     = $this->request->getPost('nama');
            $sts_wil_des   = $this->request->getPost('id_status');
            $uang_jalan    = $this->request->getPost('ujalan');
            $email_desa    = $this->request->getPost('email');
            $person1       = $this->request->getPost('per1');
            $hp1           = $this->request->getPost('hp1');
            $jab1          = $this->request->getPost('jab1');
            $person2       = $this->request->getPost('per2');
            $hp2           = $this->request->getPost('hp2');
            $jab2          = $this->request->getPost('jab2');
            $person3       = $this->request->getPost('per3');
            $hp3           = $this->request->getPost('hp3');
            $jab3          = $this->request->getPost('jab3');                                
            $id_kec        = $this->request->getPost('id_kec');                                
            $id_kab        = $this->request->getPost('id_kab');                                
            $id_prov       = $this->request->getPost('id_prov');

            // masuk database
            $data_save = [
                'kd_desa'       => $kd_desa,
                'nama_desa'     => $nama_desa,
                'sts_wil_des'   => $sts_wil_des,
                'uang_jalan'    => $uang_jalan,
                'email_desa'    => $email_desa,
                'person1'       => $person1,
                'hp1'           => $hp1,
                'jab1'          => $jab1,
                'person2'       => $person2,
                'hp2'           => $hp2,
                'jab2'          => $jab2,
                'person3'       => $person3,
                'hp3'           => $hp3,
                'jab3'          => $jab3,                                
                'id_kec'        => $id_kec,                                
                'id_kab'        => $id_kab,                                
                'id_prov'       => $id_prov,
                'created_date'  => date('Y-m-d H:i:s'),                              
                'created_by'    => $nm_user,                              
            ];
            $m_desa->save($data_save);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah ditambah');
            return redirect()->to(base_url('admin/index'));
        }
        $data_page = [
            'title'     => ' New Data' ,
            'kec'       => $kec,
            'content'   => 'admin/desa/data_add',
            'id_01'     => 7,
            'id_02'     => 881,
            'id_03'     => -1,            
        ];
        echo view('admin/layout/wrapper', $data_page);
    }    

    // edit
    public function edit($id_desa)
    {
        checklogin();
        // $session = session();
        // $nm_user = $session->get('nama');
        $nm_user = '';
        $m_desa     = new Desa_model();
        $desa_det   = $m_desa->data_desa($id_desa);
        $kec        = $m_desa->data_kec();
        
	    // echo "<pre>";
	    // print_r($desa_det);
	    // die();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required',
            ]
        )) {
            $kd_desa       = $this->request->getPost('kode');
            $nama_desa     = $this->request->getPost('nama');
            $sts_wil_des   = $this->request->getPost('id_status');
            $uang_jalan    = $this->request->getPost('ujalan');
            $email_desa    = $this->request->getPost('email');
            $person1       = $this->request->getPost('per1');
            $hp1           = $this->request->getPost('hp1');
            $jab1          = $this->request->getPost('jab1');
            $person2       = $this->request->getPost('per2');
            $hp2           = $this->request->getPost('hp2');
            $jab2          = $this->request->getPost('jab2');
            $person3       = $this->request->getPost('per3');
            $hp3           = $this->request->getPost('hp3');
            $jab3          = $this->request->getPost('jab3');                                
            $id_kec        = $this->request->getPost('id_kec');                                
            $id_kab        = $this->request->getPost('id_kab');                                
            $id_prov       = $this->request->getPost('id_prov');

            // masuk database
            $data_save = [
                'kd_desa'       => $kd_desa,
                'nama_desa'     => $nama_desa,
                'sts_wil_des'   => $sts_wil_des,
                'uang_jalan'    => $uang_jalan,
                'email_desa'    => $email_desa,
                'person1'       => $person1,
                'hp1'           => $hp1,
                'jab1'          => $jab1,
                'person2'       => $person2,
                'hp2'           => $hp2,
                'jab2'          => $jab2,
                'person3'       => $person3,
                'hp3'           => $hp3,
                'jab3'          => $jab3,                                
                'id_kec'        => $id_kec,                                
                'id_kab'        => $id_kab,                                
                'id_prov'       => $id_prov,  
                'modified_date' => date('Y-m-d H:i:s'),                              
                'modified_by'   => $nm_user,
            ];
            $m_desa->update($id_desa, $data_save);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah diedit');

            return redirect()->to(base_url('admin/Desa'));
        }
        $data_page = [
            'title'     => ' Edit Desa: ' . $desa_det['nama'],
            'desa_det'  => $desa_det,
            'kec'       => $kec,
            'content'   => 'admin/desa/data_update',
            'id_01'     => 7,
            'id_02'     => 881,
            'id_03'     => -1,            
        ];
        echo view('admin/layout/wrapper', $data_page);
    }

    // delete
    public function delete($id_desa)
    {
        checklogin();
        //$m_desa = new User_model();
        $data   = ['id_desa' => $id_desa];
        $m_desa->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');
        return redirect()->to(base_url('admin/Desa'));
    }
}
