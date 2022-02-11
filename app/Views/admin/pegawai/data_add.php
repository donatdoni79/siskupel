<?= form_open(base_url('admin/Pegawai/add'));
echo csrf_field();
?>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">

        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-header">
                <h3 class="card-title"><i class="fas fa-globe"></i><strong><?=$title?></strong></h3>
                <!-- <small class="float-right">
                  <a href="<?= base_url('admin/Desa') ?>" type="button" class="btn btn-default btn-xs" ><i class="fa fa-times"></i> Cancel</a>
                </small>
                <small class="float-right"> &nbsp &nbsp </small>
                <small class="float-right">
                  <button type="submit" class="btn btn-success btn-xs"><i class="fa fa-save"></i> Save</button>
                </small> -->
              </div>
              <!-- /.card-header -->
              <div class="card-body" style="min-height: 500px;">


<?php
$validation = \Config\Services::validation();
    $errors = $validation->getErrors();
    if (! empty($errors)) {
        echo '<span class="text-danger">' . $validation->listErrors() . '</span>';
    }
?>

<div class="form-group row">
    <label class="col-2">NIP</label>
    <div class="col-4">
        <input type="text" name="nip" id="nip" class="form-control" placeholder="NIP" value="" autofocus>
    </div>
    <label class="col-2">Jabatan</label>
    <div class="col-4">
        <input type="text" name="jab" id="jab" class="form-control" placeholder="Jabatan" value="" >
    </div>    
</div>
<div class="form-group row">
    <label class="col-2">Nama</label>
    <div class="col-6">
        <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama " value="" >
    </div>
</div>
<div class="form-group row">
    <label class="col-2">Alamat</label>
    <div class="col-6">
        <input type="text" name="almt" id="almt" class="form-control" placeholder="Alamat" value="" style="text-align:left;">
    </div>
</div>
<div class="form-group row">
    <label class="col-2">HP</label>
    <div class="col-4">
        <input type="text" name="hp" id="hp" class="form-control" placeholder="HP" value="" >
    </div>
    <label class="col-2">Email </label>
    <div class="col-4">
        <input type="email" name="email" id="email" class="form-control" placeholder="Email" value="" >
    </div>
</div>

<hr>
<div class="form-group row">
    <div class="col-2">
        <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Save</button>
    </div> 
    <div class="col-2">
        <a href="<?= base_url('admin/Pegawai') ?>" type="button" class="btn btn-default" ><i class="fa fa-times"></i> Cancel</a>
    </div>
</div>


<?= form_close(); ?>