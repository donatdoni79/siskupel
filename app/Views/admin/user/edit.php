<?= form_open(base_url('admin/user/edit/' . $user['id']));
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

<div class="form-group row">
	<label class="col-3">Nama Pengguna</label>
	<div class="col-9">
		<input type="text" name="nama" class="form-control" placeholder="Nama user" value="<?= $user['nama'] ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-3">Email</label>
	<div class="col-9">
		<input type="email" name="email" class="form-control" placeholder="Email" value="<?= $user['emailnya'] ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-3">Username</label>
	<div class="col-9">
		<input type="text" name="username" class="form-control" placeholder="Username" value="<?= $user['usernamenya'] ?>" readonly>
	</div>
</div>

<div class="form-group row">
	<label class="col-3">Password</label>
	<div class="col-9">
		<input type="text" name="password" class="form-control" placeholder="Password" value="">
		<small class="text-danger">Minimal 6 karakter dan maksimal 32 karakter atau biarkan kosong</small>
	</div>
</div>

<div class="form-group row">
	<label class="col-3">Level</label>
	<div class="col-9">
		<select name="akses_level" class="form-control">
			<option value="Admin">Admin</option>
			<option value="User" <?php if ($user['akses_level'] === 'User') {
    echo 'selected';
} ?>>User</option>
		</select>
	</div>
</div>

<div class="form-group row">
	<label class="col-3"></label>
	<div class="col-9">		
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> SAVE</button>
		<a href="<?= base_url('admin/User/index') ?>" class="btn btn-default"><i class="fa fa-times"></i> CANCEL</a>
	</div>
</div>

<?= form_close(); ?>