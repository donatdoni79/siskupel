<?= form_open( base_url('admin/Barang/edit/' . $r_data[0]['emp_id']) );
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
                <small class="float-right">
                    <a href="<?= base_url('admin/Barang') ?>" type="button" class="btn btn-default btn-xs" ><i class="fa fa-times"></i> Cancel</a>
                </small>
                <small class="float-right"> &nbsp &nbsp </small>
                <small class="float-right">
                  <button type="submit" class="btn btn-success btn-xs"><i class="fa fa-save"></i> Save</button>
                </small>
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
    <label class="col-2">Kode Barang</label>
    <div class="col-4">
        <input type="text" name="kd_brg" id="kd_brg" class="form-control" placeholder="Kode Barang" value="" autofocus>
    </div>
</div>
<div class="form-group row">
    <label class="col-2">Nama Barang</label>
    <div class="col-6">
        <input type="text" name="nm_brg" id="nm_brg" class="form-control" placeholder="Nama Barang" value="" >
    </div>    
</div>
<div class="form-group row">
    <label class="col-2">Keterangan</label>
    <div class="col-6">
        <input type="text" name="ket" id="ket" class="form-control" placeholder="Keterangan " value="" >
    </div>
</div>
<div class="form-group row">
    <label class="col-2">Model</label>
    <div class="col-4">
        <input type="text" name="item_model" id="item_model" class="form-control" placeholder="Model" value="" style="text-align:left;">
    </div>
    <label class="col-2">Merek</label>
    <div class="col-4">
        <input type="text" name="item_merk" id="item_merk" class="form-control" placeholder="Merk" value="" style="text-align:left;">
    </div>    
</div>
<div class="form-group row">
    <label class="col-2">Harga</label>
    <div class="col-4">
        <input type="text" name="harga" id="harga" class="form-control" placeholder="Harga" value="" style="text-align:right;">
    </div>
    <label class="col-2">Satuan</label>
    <div class="col-4">
        <input type="text" name="satuan" id="satuan" class="form-control" placeholder="Satuan" value="" style="text-align:left;">
    </div>    
</div>
<div class="form-group row">
    <label class="col-2">Isi</label>
    <div class="col-4">
        <input type="text" name="isi" id="isi" class="form-control" placeholder="Isi" value="" >
    </div>
    <label class="col-2">Satuan Isi </label>
    <div class="col-4">
        <input type="text" name="satuan_isi" id="satuan_isi" class="form-control" placeholder="Satuan Isi" value="" >
    </div>
</div>
<div class="form-group row">
    <label class="col-2">Stok Maksimal</label>
    <div class="col-4">
        <input type="text" name="stokmax" id="stokmax" class="form-control" placeholder="Stok Maksimal" value="" >
    </div>
    <label class="col-2">Stok Minimal</label>
    <div class="col-4">
        <input type="text" name="stokmin" id="stokmin" class="form-control" placeholder="Stok Minimal" value="" >
    </div>
</div>

<hr>
<div class="form-group row">
	<label class="col-sm-2 col-sm-2 col-form-label"></label>
	<div class="col-sm-2">
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Save</button>
	</div>
    <div class="col-sm-2">
        <a href="<?= base_url('admin/Pegawai') ?>" type="button" class="btn btn-default" ><i class="fa fa-times"></i> Cancel</a>
    </div>    
</div>
</from>

<?= form_close(); ?>