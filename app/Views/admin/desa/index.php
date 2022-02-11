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

<?php if (session('msg')) : ?>
     <div class="alert alert-info alert-dismissible">
         <?= session('msg') ?>
         <button type="button" class="close" data-dismiss="alert"><span>×</span></button>
     </div>
 <?php endif ?>

<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>			
			<th width="20%">Nama Desa</th>
			<th width="15%">Status Desa</th>	
			<th width="12%">Uang Jalan</th>
			<th width="15%">Person</th>
			<th width="">HP</th>
			<th width="">Jabatan</th>
			<th width="">Kecamatan</th>
			<th width=""></th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

foreach ($desa as $desa1) { ?>
		<tr>
			<td><?= $no ?></td>
			<td><?php echo $desa1['kd_desa'].' '. $desa1['nama_desa']; ?></td>
			<td><?= $desa1['sts_wil_des'] ?></td>
			<td><?= number_format($desa1['uang_jalan'],  0,'.',',') ?></td>
			<td><?= $desa1['person1'] ?></td>
			<td><?= $desa1['hp1'] ?></td>
			<td><?= $desa1['jab1'] ?></td>
			<td><?= $desa1['nama_kec'] ?></td>
			<td>
				<a href="<?= base_url('admin/Desa/edit/' . $desa1['id_desa']) ?>" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
				<a href="<?= base_url('admin/Desa/delete/' . $desa1['id_desa']) ?>" class="btn btn-dark btn-xs" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
			</td>
		</tr>
		<?php $no++; } ?>
	</tbody>
</table>