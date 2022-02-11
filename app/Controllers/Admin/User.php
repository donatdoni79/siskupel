<?php

namespace App\Controllers\Admin;

use App\Models\User_model;

class User extends BaseController
{
    // mainpage
    public function index()
    {
        checklogin();
        $m_user = new User_model();
        $user   = $m_user->listing();
        $total  = $m_user->total();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required',
                'username' => 'required|min_length[3]|is_unique[users.username]',
            ]
        )) {
            // masuk database
            $data = [
                'nama'    => $this->request->getPost('nama'),
                'email'        => $this->request->getPost('email'),
                'username'     => $this->request->getPost('username'),
                'password'     => sha1($this->request->getPost('password')),
                'akses_level'  => $this->request->getPost('akses_level'),
                'tanggal_post' => date('Y-m-d H:i:s'),
            ];
            $m_user->save($data);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah ditambah');
            return redirect()->to(base_url('admin/user'));
        }
        // $data = ['title' => 'Pengguna Website: ' . $total['total'],
        //     'user'       => $user,
        //     'content'    => 'admin/user/index',
        // ];

        $data_page = [
            'title'     => 'SISKUPEL',
            'user'      => $user,
            'content'   => 'admin/user/index',
            'id_01'     => 7,
            'id_02'     => 84,
            'id_03'     => -1,
        ];        
        echo view('admin/layout/wrapper', $data_page);
    }

    // edit
    public function edit($id_user)
    {
        checklogin();
        $m_user = new User_model();
        $user   = $m_user->detail($id_user);

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required|min_length[3]',
            ]
        )) {
            // masuk database
            if (strlen($this->request->getPost('password')) >= 6 && strlen($this->request->getPost('password')) <= 32) {
                $data_save = ['nama'     => $this->request->getPost('nama'),
                    'emailnya'      => $this->request->getPost('email'),
                    'usernamenya'   => $this->request->getPost('username'),
                    'passwordnya'   => sha1($this->request->getPost('password')),
                    'hak'           => $this->request->getPost('akses_level'),
                ];
            } else {
                $data_page = ['nama'     => $this->request->getPost('nama'),
                    'emailnya'      => $this->request->getPost('email'),
                    'usernamenya'   => $this->request->getPost('username'),
                    'hak'           => $this->request->getPost('akses_level'),
                ];
            }
            $m_user->update($id_user, $data_page);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah diedit');

            return redirect()->to(base_url('admin/user'));
        }
        $data_page = [
            'title' => 'Edit Pengguna: ' . $user['nama'],
            'user'       => $user,
            'content'    => 'admin/user/edit',
            'id_01'     => 7,
            'id_02'     => 84,
            'id_03'     => -1,            
        ];
        echo view('admin/layout/wrapper', $data_page);
    }

    // delete
    public function delete($id_user)
    {
        checklogin();
        $m_user = new User_model();
        $data   = ['id' => $id_user];
        $m_user->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');

        return redirect()->to(base_url('admin/user'));
    }
}
