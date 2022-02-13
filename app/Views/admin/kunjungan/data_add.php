<?php 
echo form_open( base_url('admin/Kunjungan/add'), array('id' => 'post-form') );
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
                  <a href="" type="button" class="btn btn-default btn-xs" ><i class="fa fa-times"></i> Cancel</a>
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
<?php if (session('msg')) : ?>
     <div class="alert alert-info alert-dismissible">
         <?= session('msg') ?>
         <button type="button" class="close" data-dismiss="alert"><span>×</span></button>
     </div>
 <?php endif ?>
 <!-- <form class="form-horizontal"> -->
<div class="form-group row">
    <label class="col-2">Pelanggan </label>
    <div class="col-12 col-md-6">
        <!-- <div class="form-group"> -->
            <select name="id_desa" id="id_desa" onchange="isiPelanggan(this.id);" class="form-control  select2bs4 select2bs4-info" data-dropdown-css-class="select2bs4-info" style="width: 100%;">
                <option value="">-- Pilih -- </option>
                <?php foreach ($rplg as $rplg1) { ?>
                <option value="<?= $rplg1['id_desa'] ?>">
                    <?php echo  $rplg1['kode_kec'].'.'.$rplg1['kd_desa']. ' - '. strtoupper($rplg1['nama_desa']). ' - '. strtoupper($rplg1['nama_kec']); ?>
                </option>
                <?php } ?>
            </select>
            <small class="text-secondary">Daftar Pelanggan</small>
        <!-- </div> -->
    </div>
    <label class="col-1">U.Jalan</label>
    <div class="col-3">
        <input type="text" name="ujalan" id="ujalan" class="form-control" placeholder="Uanga Jalan" value="" style="text-align:right;">
    </div>        
</div>
<div class="form-group row">
    <label class="col-2">Keterangan</label>
    <div class="col-10">
        <input type="text" name="ket" id="ket" class="form-control" placeholder="Keterangan " value="" >
    </div>
</div>
<div class="form-group row">
    <label class="col-sm-2">Teknisi</label>
    <div class="col-sm-6">
    <!-- <div class="form-group"> -->
        <select name="id_peg" class="form-control  select2bs4 select2bs4-info" data-dropdown-css-class="select2bs4-info" style="width: 100%;">
            <option value="">-- Pilih -- </option>
            <?php foreach ($rpeg as $rpeg1) { ?>
            <option value="<?= $rpeg1['emp_id'] ?>">
                <?php echo $rpeg1['name']. ' / '. $rpeg1['position']; ?>
            </option>
            <?php } ?>
        </select>
            <!-- </div> -->
    </div>
    <label class="col-1">Tanggal </label>
	<div class="col-md-3 input-group date"id="reservationdate" data-target-input="nearest">
		<input type="text" name="tgl" id="tgl" class="form-control tanggal" value="">
        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
        </div>
        <!-- <small class="text-secondary">Format <strong>dd-mm-yyyy</strong>. Misal: <?= date('d-m-Y') ?></small> -->
    </div>        
</div>
<div class="input_fields_wrap" >
    <div class="form-group row">
        <label class="col-2">Asisten Teknisi 1</label>
        <div class="col-md-4">
            <select name="id_peg[]" name="id_peg1" class="form-control  select2bs4 select2bs4-info" data-dropdown-css-class="select2bs4-info" style="width: 100%;">
                <option value="">-- Pilih -- </option>
                <?php foreach ($rpeg as $rpeg2) { ?>
                    <option value="<?= $rpeg2['emp_id'] ?>">
                        <?php echo $rpeg2['name']. ' / '. $rpeg2['position']; ?>
                    </option>
                    <?php } ?>
                </select>
        </div> 
        <button class="add_field_button btn btn-xs btn-success" id="tombol_tambah_awal">&nbsp &nbsp + &nbsp &nbsp</button>
    </div>
</div>
<hr>
<div class="form-group row" style="margin-bottom : 0rem; ">
    <label class="col-2">Peralatan</label>
    <button class="add_field_button btn btn-xs btn-success" id="tombol_tambah_awal">&nbsp &nbsp + ADD  &nbsp &nbsp</button>
</div>
<table class="table table-bordered" id="example12">
	<thead>
		<tr>
			<th width="5%">No</th>			
			<th width="12%">Kode</th>
			<th width="25%">Nama Barang</th>	
			<th width="">Model</th>	
			<th width="">Merk</th>
			<th width="">Jumlah</th>	
			<th width="">Satuan</th>	
			<th width="">Keterangan</th>
			<th width=""></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>
<div class="form-group row">
    <label class="col-2">Peralatan</label>
    <div class="col-md-4">
        <select name="id_peg" class="form-control  select2bs4 select2bs4-purple" data-dropdown-css-class="select2bs4-purple" style="width: 100%;">
            <option value="">-- Pilih -- </option>
            <?php foreach ($rbrg as $rbrg1) { ?>
            <option value="<?= $rbrg1['item_id'] ?>">
                <?php echo $rbrg1['item_nm']. ' - '. $rbrg1['item_no']. ' - '. $rbrg1['item_model']. ' - '. $rbrg1['item_merk']; ?>
            </option>
            <?php } ?>
        </select>
    </div> 
</div>
<hr>
<div class="form-group row">
    <div class="col-2">
        <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Save</button>
    </div> 
    <div class="col-2">
        <a href="<?= base_url('admin/Barang') ?>" type="button" class="btn btn-default" ><i class="fa fa-times"></i> Cancel</a>
    </div>
</div>
<!-- </form> -->

<?= form_close(); ?>

<script type="text/javascript">
    var conx = 1; //initlal text box count
    $(document).ready(function(){
        var idnya   ="";
        var nama    ="";
        var jab     ="";
        var html    ="";
        var max_fields      = 50; //maximum input boxes allowed
        var wrapper         = $(".input_fields_wrap"); //Fields wrapper
        var add_button      = $(".add_field_button"); //Add button ID

        $(add_button).click(function(e){ //on add input button click
            e.preventDefault();
            if(conx < max_fields){ //max input box allowed
                conx++; //text box increment                     
                    // '<div><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'
                    html ='<div class="form-group row"> ' ;
                    html = html + '<label class="col-2">Asisten Teknisi '+conx+'</label> ';
                    html = html + '<div class="col-md-4"> ';
                    html = html + '<select name="id_peg[]" name="id_peg1" class="form-control  select2bs4 select2bs4-info" data-dropdown-css-class="select2bs4-info" style="width: 100%;"> ';
                    html = html +       '<option value="">-- Pilih -- </option> ';
                                <?php foreach ($rpeg as $rpeg3) { ?>
                                    idnya   = "<?php echo $rpeg3['emp_id'] ?> ";
                                    nama    = "<?php echo $rpeg3['name']?> ";
                                    jab     = "<?php echo $rpeg3['position']; ?> ";
                    html = html +       '<option value='+idnya+' > '+ nama + ' / ' +jab + '</option> ' ;                                        
                                        
                                <?php } ?>
                    html = html +'</select>';
                    html = html +'</div> ' ; 
                    html = html +' <button class="remove_field btn btn-xs btn-warning" id="hapus_soconx">&nbsp &nbsp - &nbsp &nbsp</button>';
                    html = html +'</div>';

                while (html != (html=html.replace("conx", conx)));     
                $(wrapper).append(html); //add input box
                $(".chosen-select").chosen();
            }
        });
        
        $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
            e.preventDefault(); $(this).parent('div').remove(); conx--;
        })        
    });
    function isiPelanggan(id){
        // CSRF Hash
        //echo csrf_field();
        // var csrfName = '<?php //echo $this->security->get_csrf_token_name(); ?>'; 
        // var csrfHash = '<?php //echo $this->security->get_csrf_hash(); ?>';      
        //var index = id.match(/\d+/)[0]; 
        var id_desa = $("#id_desa").val(); 
        $("#ujalan").val("");         
         //alert(index);
        if (id_desa != '' ) {
            $.ajax({
                type:"POST",
                url: "<?=base_url()?>/admin/Kunjungan/getUjalan/"+id_desa,
                data: {},
                dataType: 'json',
                success: function(data){	                
                    var jsonData 		= JSON.stringify(data.dbdata);
                    var myObject 		= eval('(' + jsonData + ')');
                    var row_item33 		= myObject.length;
                    if(row_item33>0){
				        for (var xy = 0; xy < row_item33; xy++) {
							$("#id_kab").append('<option value='+data.dbkab[xy]["id_kab"]+'>'+data.dbkab[xy]["kd_kab"]+ ' / ' + data.dbkab[xy]["nama_kab"] +'</option>').trigger("chosen:updated");
				        }                    
                    }
                    $("#ujalan").val("22");
                }
            });
        }
    }    
</script>

<script>
  $(function () {
    $("#example12").DataTable({
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
      "responsive": true,
      "paging": false,
      "lengthMenu": [[10, 20, 50, -1], [10, 20, 50, "All"]],
      "lengthChange": true,
      "autoWidth": true,
      "searching": false,
      "info": false
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example22').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>