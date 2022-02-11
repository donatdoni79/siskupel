    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">

        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-header">
                <h4 class="card-title"><i class="fas fa-globe"></i><strong><?=$title?></strong></h4>
                <small class="float-right">
					<a href="<?= base_url('admin/Desa/add') ?>" type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> New Data</a>
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
<?php include 'tambah.php'; ?>
<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="20%">Nama</th>
			<th width="20%">Username</th>
			<th width="20%">Email</th>
			<th width="20%">Level</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

foreach ($user as $user) { ?>
		<tr>
			<td><?= $no ?></td>
			<td><?= $user['nama'] ?></td>
			<td><?= $user['usernamenya'] ?></td>
			<td><?= $user['emailnya'] ?></td>
			<td><?= $user['hak'] ?></td>
			<td>
				<a href="<?= base_url('admin/user/edit/' . $user['id']) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
				<a href="<?= base_url('admin/user/delete/' . $user['id']) ?>" class="btn btn-dark btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
			</td>
		</tr>
		<?php $no++; } ?>
	</tbody>
</table>