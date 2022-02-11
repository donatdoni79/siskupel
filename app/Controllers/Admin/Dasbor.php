<?php

namespace App\Controllers\Admin;

class Dasbor extends BaseController
{
    public function index()
    {
        checklogin();
        $data_page = [
            'title' => 'SISKUPEL',
            'content'    => 'admin/dasbor/index',
            'id_01' => 1,
            'id_02' => -1,
            'id_03' => -1,
        ];
        echo view('admin/layout/wrapper', $data_page);
    }
}
