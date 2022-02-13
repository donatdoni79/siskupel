    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">

        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-header">
                <h4 class="card-title"><i class="fas fa-globe"></i><strong><?=$title?></strong></h4>
                <small class="float-right">
					<a href="<?= base_url('admin/Kunjungan/add') ?>" type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> New Data</a>
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
			<th width="12%">Tanggal</th>
			<th width="25%">Nama Pelanggan</th>	
			<th width="">Teknisi</th>	
			<th width="">Jabatan</th>	
			<th width="">Biaya</th>	
			<th width="">Default</th>
			<th width="">Keterangan</th>
			<th width=""></th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

foreach ($r_data as $r_data01) { ?>
		<tr>
			<td><?= $no ?></td>
			<td><?php echo $r_data01['ve_date']; ?></td>
			<td><?php echo $r_data01['nama_desa']; ?></td>
			<td><?php echo $r_data01['name']; ?></td>
			<td><?php echo $r_data01['position']; ?></td>
			<td><?php echo $r_data01['visit_fee']; ?></td>
			<td><?php echo $r_data01['uang_jalan']; ?></td>
			<td><?php echo $r_data01['ve_desc']; ?></td>
			<td>
				<a href="<?= base_url('admin/Kunjungan/edit/' . $r_data01['ve_id']) ?>" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
				<a href="<?= base_url('admin/Kunjungan/delete/' . $r_data01['ve_id']) ?>" class="btn btn-dark btn-xs" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
			</td>
		</tr>
		<?php $no++; } ?>
	</tbody>
</table>