<?= form_open( base_url('admin/Desa/edit/' . $desa_det[0]['id_desa']) );
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
                    <a href="<?= base_url('admin/Desa') ?>" type="button" class="btn btn-default btn-xs" ><i class="fa fa-times"></i> Cancel</a>
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

<form class="form-horizontal">
<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Kecamatan</label>
    <div class="col-sm-4">
        <select name="id_kec" id="id_kec" class="form-control">
            <option value="">-- Pilih --</option>
        <?php foreach ($kec as $kec1) { ?>							
            <option value="<?= $kec1['id_kec']?>" <?php echo ($kec1['id_kec']==$desa_det[0]['id_kec'])? 'selected="selected"' : '' ?> ><?php echo $kec1['kode_kec'].' / '. $kec1['nama_kec']; ?></option>
        <?php }?>
        </select>
    </div>
</div>			
<input type="hidden" name="id_prov" id="id_prov"  value="1">
<input type="hidden" name="id_kab" id="id_kab"  value="1">
<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Nama Desa</label>
    <div class="col-sm-4">
        <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Desa" value="<?= $desa_det[0]['nama_desa'] ?>" >
    </div>
    <label class="col-sm-2 col-form-label">Kode  Desa</label>
    <div class="col-sm-4">
        <input type="text" name="kode" id="kode" class="form-control" placeholder="Kode Desa" value="<?= $desa_det[0]['kd_desa'] ?>" >
    </div>    
</div>

<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Status Desa</label>
    <div class="col-sm-4">
        <select name="id_status" id="id_status" class="form-control">
            <option value="">-- Pilih --</option>							
            <option value="Desa" <?php echo ('Desa'==$desa_det[0]['sts_wil_des']) ? 'selected="selected"' : '' ?> >Desa</option>
            <option value="Kelurahan" <?php echo ('Kelurahan'==$desa_det[0]['sts_wil_des']) ? 'selected="selected"' : '' ?> >Kelurahan</option>
        </select>
    </div>    
    <label class="col-sm-2 col-sm-2 col-form-label">Email Desa</label>
    <div class="col-sm-4">
        <input type="email" name="email" id="email" class="form-control" placeholder="Email" value="<?= $desa_det[0]['email_desa'] ?>" >
    </div>
</div>

<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Uang Jalan</label>
    <div class="col-sm-4">
        <input type="text" name="ujalan" id="ujalan" class="form-control" placeholder="Uang jalan" value="<?= number_format($desa_det[0]['uang_jalan'], 0,'.',',') ?>" style="text-align:right;">
    </div>
</div>
<hr>
<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Kontak Person 1</label>
    <div class="col-sm-4">
        <input type="text" name="per1" id="per1" class="form-control" placeholder="Kontak Person 1" value="<?= $desa_det[0]['person1'] ?>" >
    </div>
    <label class="col-sm-2 col-sm-2 col-form-label">HP 1</label>
    <div class="col-sm-4">
        <input type="text" name="hp1" id="hp1" class="form-control" placeholder="HP " value="<?= $desa_det[0]['hp1'] ?>" >
    </div>    
</div>
<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Jabatan 1</label>
    <div class="col-sm-4">
        <input type="text" name="jab1" id="jab1" class="form-control" placeholder="Jabatan " value="<?= $desa_det[0]['jab1'] ?>" >
    </div>    
</div>
<hr>
<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Kontak Person 2</label>
    <div class="col-sm-4">
        <input type="text" name="per2" id="per2" class="form-control" placeholder="Kontak Person 2" value="<?= $desa_det[0]['person2'] ?>">
    </div>
    <label class="col-sm-2 col-sm-2 col-form-label">HP 2</label>
    <div class="col-sm-4">
        <input type="text" name="hp2" id="hp2" class="form-control" placeholder="HP " value="<?= $desa_det[0]['hp2'] ?>">
    </div>    
</div>
<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Jabatan 2</label>
    <div class="col-sm-4">
        <input type="text" name="jab2" id="jab2" class="form-control" placeholder="Jabatan " value="<?= $desa_det[0]['jab2'] ?>">
    </div>    
</div>
<hr>
<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Kontak Person 3</label>
    <div class="col-sm-4">
        <input type="text" name="per3" id="per3" class="form-control" placeholder="Kontak Person 3" value="<?= $desa_det[0]['person3'] ?>" >
    </div>
    <label class="col-sm-2 col-sm-2 col-form-label">HP 3</label>
    <div class="col-sm-4">
        <input type="text" name="hp3" id="hp3" class="form-control" placeholder="HP " value="<?= $desa_det[0]['hp3'] ?>" >
    </div>    
</div>
<div class="form-group row">
    <label class="col-sm-2 col-sm-2 col-form-label">Jabatan 3</label>
    <div class="col-sm-4">
        <input type="text" name="jab3" id="jab3" class="form-control" placeholder="Jabatan " value="<?=$desa_det[0]['jab3']?>">
    </div>    
</div>
<hr>

<div class="form-group row">
	<label class="col-sm-2 col-sm-2 col-form-label"></label>
	<div class="col-sm-2">
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Save</button>
	</div>
    <div class="col-sm-2">
        <a href="<?= base_url('admin/Desa') ?>" type="button" class="btn btn-default" ><i class="fa fa-times"></i> Cancel</a>
    </div>    
</div>
</from>

<?= form_close(); ?>