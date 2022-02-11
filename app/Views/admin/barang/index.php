    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">

        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-header">
                <h4 class="card-title"><i class="fas fa-globe"></i><strong><?=$title?></strong></h4>
                <small class="float-right">
					<a href="<?= base_url('admin/Barang/add') ?>" type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> New Data</a>
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
			<th width="12%">Kode</th>
			<th width="25%">Nama</th>	
			<th width="">Model</th>	
			<th width="">Merk</th>	
			<th width="">Harga</th>
			<th width="">Satuan</th>
			<th width="">Isi</th>
			<th width="">Satuan isi</th>
			<th width="">Stock Maks</th>
			<th width="">Stock Min</th>
			<th width=""></th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

foreach ($r_data as $r_data01) { ?>
		<tr>
			<td><?= $no ?></td>
			<td><?php echo $r_data01['item_no']; ?></td>
			<td><?php echo $r_data01['item_nm']; ?></td>
			<td><?php echo $r_data01['item_model']; ?></td>
			<td><?php echo $r_data01['item_Merk']; ?></td>
			<td><?php echo $r_data01['item_unit_price']; ?></td>
			<td><?php echo $r_data01['item_unit']; ?></td>
			<td><?php echo $r_data01['item_contents']; ?></td>
			<td><?php echo $r_data01['item_content_unit']; ?></td>
			<td><?php echo $r_data01['item_stock_max']; ?></td>
			<td><?php echo $r_data01['item_stock_min']; ?></td>
			<td>
				<a href="<?= base_url('admin/Barang/edit/' . $r_data01['item_id']) ?>" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
				<a href="<?= base_url('admin/Barang/delete/' . $r_data01['item_id']) ?>" class="btn btn-dark btn-xs" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
			</td>
		</tr>
		<?php $no++; } ?>
	</tbody>
</table>