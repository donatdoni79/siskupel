<?php 
// , array('id' => 'post-form')
echo form_open( base_url('admin/Kunjungan/add') );
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
        echo '<span class="text-danger">' . str_replace('The',' ',$validation->listErrors()) . '</span>';
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
    <label class="col-sm-2">Pelanggan </label>
    <div class="col-sm-6">
        <!-- <div class="form-group"> -->
            <select name="id_desa" id="id_desa" onchange="isiPelanggan(this.id);" class="form-control  select2bs4 select2bs4-info" data-dropdown-css-class="select2bs4-info" style="width: 100%;">
                <option value="">-- Pilih -- </option>
                <?php foreach ($rplg as $rplg1) { ?>
                <option value="<?= $rplg1['id_desa'] ?>">
                    <?php echo  $rplg1['kode_kec'].'.'.$rplg1['kd_desa']. ' - '. strtoupper($rplg1['nama_desa']). ' - '. strtoupper($rplg1['nama_kec']); ?>
                </option>
                <?php } ?>
            </select>
            <!-- <small class="text-secondary">Daftar Pelanggan</small> -->
        <!-- </div> -->
    </div>
    <label class="col-sm-1">Tanggal </label>
	<div class="col-sm-3 input-group date"id="reservationdate" data-target-input="nearest">
		<input type="text" name="tgl" id="tgl" class="form-control tanggal" value="">
        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
        </div>
        <!-- <small class="text-secondary">Format <strong>dd-mm-yyyy</strong>. Misal: <?= date('d-m-Y') ?></small> -->
    </div>  
</div>
<div class="form-group row">
    <label class="col-sm-2">Keterangan</label>
    <div class="col-sm-6">
        <textarea rows="2" name="ket" id="ket" class="form-control" placeholder="Keterangan " value="" >
        </textarea>
    </div>  
</div>
<hr>
<div class="form-group row" style="margin-bottom : 0rem; ">
    <label class="col-sm-2">Peralatan</label>
    <a class="mdl_add btn btn-sm btn-success" id="mdl_add">&nbsp &nbsp + ADD  &nbsp &nbsp</a>
</div>
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover table-sm" id="example12" width="100%">
	<thead>
		<tr>
			<th width="" scope="col">No</th>			
			<th width="" scope="col">Nama Barang</th>
			<th width="" scope="col">Jumlah</th>	
			<th width="" scope="col">Satuan</th>	
			<th width="" scope="col">Keterangan</th>
			<th width="" scope="col"></th>
		</tr>
	</thead>
    <tbody>
        <tr class="trhideclass1">
            <td style="display: none;" scope="row"  ><input type="hidden" id="counterRowjurnal" value="0"/></td>
            <td style="display: none;" ></td>
            <td style="display: none;" ></td>
            <td style="display: none;" ></td>
            <td style="display: none;" ></td>
            <td style="display: none;" ></td>
        </tr>
    </tbody>
</table>
</div>
<hr>
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
        
</div>
<div class="input_fields_wrap" >
    <div class="form-group row">
        <label class="col-sm-2">Asisten Teknisi 1</label>
        <div class="col-sm-4">
            <select name="id_pegdet[]" id="id_pegdet1" class="form-control  select2bs4 select2bs4-info" data-dropdown-css-class="select2bs4-info" style="width: 100%;">
                <option value="">-- Pilih -- </option>
                <?php foreach ($rpeg as $rpeg2) { ?>
                    <option value="<?= $rpeg2['emp_id'] ?>">
                        <?php echo $rpeg2['name']. ' / '. $rpeg2['position']; ?>
                    </option>
                    <?php } ?>
                </select>
        </div> 
        <div class="col-sm-4">
            <button class="add_field_button btn btn-sm btn-success" id="tombol_tambah_awal">&nbsp &nbsp + &nbsp &nbsp</button>
        </div>
    </div>
</div>
<hr>
<div class="form-group row">
    <label class="col-sm-2">Biaya : </label>
    <label class="col-sm-3">Uang Jalan</label>
    <div class="col-sm-3">
        <input type="text" name="ujalan2" id="ujalan2" readonly  class="form-control" placeholder="Uanga Jalan" value="" style="text-align:right;">
        <input type="hidden" name="ujalan" id="ujalan" >
    </div>        
</div>
<div class="input_fields_biayanya" >
    <div class="form-group row">
        <label class="col-sm-2">1). </label>
        <div class="col-sm-3">
            <input type="text" name="ket_biaya_lain1" id="ket_biaya_lain1"   class="form-control" placeholder="Biaya Lainnya" value="" style="text-align:left;">
        </div> 
        <div class="col-sm-3">
            <input type="text" name="biaya_lain1" id="biaya_lain1"   class="form-control" placeholder="value" value="" style="text-align:right;">
        </div>
        <div class="col-sm-1">
            <button class="add_field_biaya btn btn-sm btn-success" id="tombol_tambah_biaya">&nbsp &nbsp + &nbsp &nbsp</button>
        </div>
    </div>
</div>
<hr>
<div class="form-group row">
    <div class="col-sm-2">
        <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Save</button>
    </div> 
    <div class="col-sm-2">
        <a href="<?= base_url('admin/Kunjungan') ?>" type="button" class="btn btn-default" ><i class="fa fa-times"></i> Cancel</a>
    </div>
</div>
<!-- </form> -->
<?= form_close(); ?>

<div class="modal fade" id="modal-default">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">New Data Barang</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">

				<div class="form-group row">
					<label class="col-sm-3">Nama Barang</label>
					<div class="col-sm-9">
                        <select name="id_brg" id="id_brg" onchange="isiBarang( this.id, 'true');" class="form-control  select2bs4 select2bs4-purple" data-dropdown-css-class="select2bs4-purple" style="width: 100%;">
                            <option value="">-- Pilih -- </option>
                            <?php foreach ($rbrg as $rbrg1) { ?>
                            <option value="<?= $rbrg1['item_id'] ?>">
                                <?php echo $rbrg1['item_nm']. ' - '. $rbrg1['item_no']. ' - '. $rbrg1['item_model']. ' - '. $rbrg1['item_merk']; ?>
                            </option>
                            <?php } ?>
                        </select> 
					</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-3">Jumlah Dipakai</label>
					<div class="col-sm-9">
						<input type="number" name="jml_alat" id="jml_alat" class="form-control" data-bind="value:replyNumber" placeholder="Jumlah Alat" value="" >
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-3">Satuan</label>
					<div class="col-sm-9">
						<input type="text" name="satuan2" id="satuan2" class="form-control" placeholder="Satuan" value="" readonly>
					</div>
				</div> 
				<div class="form-group row">
					<label class="col-sm-3">Keterangan</label>
					<div class="col-sm-9">
						<input type="text" name="ket_brg" id="ket_brg" class="form-control" placeholder="Description" value="" >
					</div>
				</div>                                
                <input type="hidden" name="merk" id="merk" class="form-control"  value="" >
                <input type="hidden" name="model" id="model" class="form-control"  value="" >
                <input type="hidden" name="kd_brg" id="kd_brg" class="form-control"  value="" >
                <input type="hidden" name="satuan" id="satuan" class="form-control"  value="" >
                <input type="hidden" name="nm_brg" id="nm_brg" class="form-control"  value="" >
                <input type="hidden" name="hrg_brg" id="hrg_brg" class="form-control"  value="" >
                
				<div class="form-group row">
					<label class="col-sm-12">&nbsp</label>
				</div>
			</div>
			<div class="modal-footer justify-content-between">
				<button type="button" id="mdl_close" data-dismiss="modal" class="btn btn-default" ><i class="fa fa-times"></i> CANCEL</button>
				<a type="button" id="mdl_save" class="btn btn-success"><i class="fa fa-save"></i> Add</a>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script type="text/javascript">
    var conx = 1; //initlal text box count
    var conxcost = 1;
    $(document).ready(function(){
        $(function () {
            $("#example12").DataTable({
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
            "responsive": true,
            "paging": false,
            "lengthMenu": [[10, 20, 50, -1], [10, 20, 50, "All"]],
            "lengthChange": true,
            "autoWidth": true,
            "searching": false,
            "info": false,
            "ordering": false,
            // "columnDefs": [
            //     {  // set default column settings
            //         "orderable": false,
            //         "targets": [1, 2, 4]
            //     }]            
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            $('#example22').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": false,
                "info":false,
                "autoWidth": false,
                "responsive": true,
            });
        });

        // add asissten teknisi
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
                    html = html + '<label class="col-sm-2">Asisten Teknisi '+conx+'</label> ';
                    html = html + '<div class="col-sm-4"> ';
                    html = html + '<select name="id_pegdet[]" id="id_pegdetconx" class="form-control  select2bs4 select2bs4-info" data-dropdown-css-class="select2bs4-info" style="width: 100%;"> ';
                    html = html +       '<option value="">-- Pilih -- </option> ';
                                <?php foreach ($rpeg as $rpeg3) { ?>
                                    idnya   = "<?php echo $rpeg3['emp_id'] ?> ";
                                    nama    = "<?php echo $rpeg3['name']?> ";
                                    jab     = "<?php echo $rpeg3['position']; ?> ";
                    html = html +       '<option value='+idnya+' > '+ nama + ' / ' +jab + '</option> ' ;                                        
                                        
                                <?php } ?>
                    html = html +'</select>';
                    html = html +'</div> ' ; 
                    html = html +'<div class="col-sm-4"> ' ; 
                    html = html +' <button class="remove_field btn btn-sm btn-danger" id="hapus_soconx">&nbsp &nbsp - &nbsp &nbsp</button>';
                    html = html +'</div> ' ; 
                    html = html +'</div>';

                while (html != (html=html.replace("conx", conx)));     
                $(wrapper).append(html); //add input box
                $(".chosen-select").chosen();
            }
        });        
        $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
            e.preventDefault(); $(this).parent('div').parent('div').remove(); conx--;
        }) 

        // added visit cost
        //var idnya   ="";
        //var nama    ="";
        //var jab     ="";
        var html02              ="";
        var max_val             = 50; //maximum input boxes allowed
        var wrapper_biaya       = $(".input_fields_biayanya"); //Fields wrapper_biaya
        var add_button_biaya    = $(".add_field_biaya"); //Add button ID
        $(add_button_biaya).click(function(e){ //on add input button click
            e.preventDefault();
            if(conxcost < max_val){ //max input box allowed
                conxcost++; //text box increment                     
                    // '<div><input type="text" name="mytext[]"/><a href="#" class="remove_biaya">Remove</a></div>'
                    html02 ='<div class="form-group row"> ' ;
                    html02 = html02 + '<label class="col-sm-2"> '+conxcost+'). </label> ';
                    html02 = html02 + '<div class="col-sm-3"> ';
                    html02 = html02 + '      <input type="text" name="ket_biaya_lain[]" id="ket_biaya_lainconxcost"   class="form-control" placeholder="Biaya Lainnya" value="" style="text-align:left;">';
                    html02 = html02 +'</div> ' ; 
                    html02 = html02 + '<div class="col-sm-3"> ';
                    html02 = html02 + '      <input type="text" name="biaya_lain1[]" id="biaya_lain1conxcost"   class="form-control" placeholder="value" value="" style="text-align:right;">';
                    html02 = html02 +'</div> ' ;                    
                    html02 = html02 +'<div class="col-sm-4"> ' ; 
                    html02 = html02 +' <button class="remove_biaya btn btn-sm btn-danger" id="hapus_biayaconxcost">&nbsp &nbsp - &nbsp &nbsp</button>';
                    html02 = html02 +'</div> ' ; 
                    html02 = html02 +'</div>';

                while (html02 != (html02=html02.replace("conxcost", conxcost)));     
                $(wrapper_biaya).append(html02); //add input box
                $(".chosen-select").chosen();
            }
        });
        $(wrapper_biaya).on("click",".remove_biaya", function(e){ //user click on remove text
            e.preventDefault(); $(this).parent('div').parent('div').remove(); conxcost--;
        })
        $(".mdl_add").click(function(){
            $("#id_brg").val("").change();
            $(".chosen-select").chosen();
            $('#jml_alat').val("0");
            $("#satuan").val(""); 
            $("#satuan2").val(""); 
            $("#merk").val(""); 
            $("#model").val(""); 
            $("#kd_brg").val(""); 
            $("#nm_brg").val("");             
            $("#ket_brg").val("");             
            $("#modal-default").modal('show');
        }); 
        $('.trhideclass1').hide();
        addEmptyRow();
        $("#mdl_save").click(function(){
            itemAdded();
        });               
    });
    function itemAdded(){
        var id_brg      = $("#id_brg").val(); 
        var jml_alat    = parseFloat($('#jml_alat').val().replace(/,/g, ''));
        //satuan merk model kd_brg
        var satuan  = $("#satuan").val(); 
        var merk    = $("#merk").val(); 
        var model   = $("#model").val(); 
        var kd_brg  = $("#kd_brg").val();         
        var nm_brg  = $("#nm_brg").val();         
        var hrg_brg  = $("#hrg_brg").val();         
        var ket     =  $("#ket_brg").val();         
        if (id_brg != '' &&  jml_alat > 0 ) {
            counterRowjurnal=parseInt($('#counterRowjurnal').val());
            if (counterRowjurnal==1){
                delRow(counterRowjurnal);
            }
            counterRowjurnal++;
            var html=
            '<xzztr>'+
                '<xzztd scope="row">conjurnal.<input class="form-control" type="hidden" style="font-size:11px" name="jurnal[][no]" value="conjurnal" ></td>'+
                '<xzztd>'+nm_brg+' - '+ kd_brg +' - '+ model +' - '+  merk  +  ' <input type="hidden" value="'+id_brg+'" name="id_barang[]"  id="id_barangcounterRowjurnal"  ></xzztd>'+
                '<xzztd>'+ jml_alat +' <input type="hidden" value="'+jml_alat+'" name="jmlnya[]"  id="jmlnyacounterRowjurnal" > </xzztd>'+                        
                '<xzztd>'+ satuan +'<input type="hidden" value="'+hrg_brg+'" name="hrg_brg[]"  id="hrg_brgcounterRowjurnal" > </xzztd>'+
                '<xzztd>'+ ket +' <input type="hidden" value="'+ket+'" name="ketnya[]"  id="ketnyacounterRowjurnal" >  </xzztd>'+
                '<xzztd>'+
                    '<input id="conjurnal" type="button" onclick="delRow(this.id);"   class="btn btn-xs btn-danger" value="-"></input>'+
                '</td>'+            
            '</xzztr>';
            while (html != (html=html.replace("conjurnal", counterRowjurnal)));     
            while (html != (html=html.replace("xzz", '')));     
            $('#counterRowjurnal').parent().parent().before(html);
            $('#counterRowjurnal').val(counterRowjurnal);
            //$(".chosen-select").chosen();
            //$('#modal-defaul').modal('toggle');
            //$('#modal-defaul').modal('hide'); id="mdl_save"
            //$("#mdl_save").click();
            // $(function () {
            //     $('#modal-defaul').modal('toggle');
            // });
            $('#modal-default').modal('hide');            
        }else{
            alert("Isi Data Barang 44");
        }        

    }
    function isiPelanggan(id){
        // CSRF Hash
        //echo csrf_field();
        // var csrfName = '<?php //echo $this->security->get_csrf_token_name(); ?>'; 
        // var csrfHash = '<?php //echo $this->security->get_csrf_hash(); ?>';      
        //var index = id.match(/\d+/)[0]; 
        var id_desa = $("#id_desa").val(); 
        $("#ujalan").val("");         
        $("#ujalan2").val("");         
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
                        $("#ujalan").val(formatDollar3(data.dbdata[0]["uang_jalan"]));
                        $("#ujalan2").val(formatDollar3(data.dbdata[0]["uang_jalan"]));
                    }
                }
            });
        }
    }    
    function isiBarang(id, prm_desc){
        // CSRF Hash
        //echo csrf_field();
        // var csrfName = '<?php //echo $this->security->get_csrf_token_name(); ?>'; 
        // var csrfHash = '<?php //echo $this->security->get_csrf_hash(); ?>';      
        //var index = id.match(/\d+/)[0]; 
        var id_brg      = $("#id_brg").val(); 
        var subtotal        = parseFloat($('#jml_alat').val().replace(/,/g, ''));
        //satuan merk model kd_brg
        var satuan  = $("#satuan").val(); 
        var merk    = $("#merk").val(); 
        var model   = $("#model").val(); 
        var kd_brg  = $("#kd_brg").val(); 
        var nm_brg  = $("#nm_brg").val(); 
        var nm_brg  = $("#hrg_brg").val(); 

        $("#ujalan").val("");         
         //alert(index);
        if (id_brg != '' ) {
            $.ajax({
                type:"POST",
                url: "<?=base_url()?>/admin/Kunjungan/getBarang/"+id_brg,
                data: {},
                dataType: 'json',
                success: function(data){	                
                    var jsonData 		= JSON.stringify(data.dbdata);
                    var myObject 		= eval('(' + jsonData + ')');
                    var row_item33 		= myObject.length;
                    if(row_item33>0){
                        // $("#ujalan").val(formatDollar3(data.dbdata[0]["uang_jalan"]));
                        $("#satuan").val(data.dbdata[0]["item_unit"]);
                        $("#satuan2").val(data.dbdata[0]["item_unit"]);
                        $("#merk").val(data.dbdata[0]["item_merk"]);
                        $("#model").val(data.dbdata[0]["item_model"]);
                        $("#kd_brg").val(data.dbdata[0]["item_no"]);
                        $("#nm_brg").val(data.dbdata[0]["item_nm"]);
                    }
                }
            });
        }else if(prm_desc=='true'){
            //alert("Isi Data Barang 33");
        }
    }        
</script>

<script>

  function addRow(){
        // delAllRow();
        counterRowjurnal=parseInt($('#counterRowjurnal').val())+1;
        var html=
        '<xzztr>'+
            '<xzztd>conjurnal.<input class="form-control" type="hidden" style="font-size:11px" name="jurnal[][no]" value="conjurnal" ></td>'+
            '<xzztd>'+
                '<select name="prk_id[]" id="prk_idconjurnal" class="form-custom chosen-select" onchange="selectItem(this.id); " >'+
                    '<option value="">-- Pilih --</option>'+
                '</select>'+
            '</xzztd>'+
            '<xzztd><input class="form-control " name="qty[]"   id="qtyconjurnal"  value="0" style="font-size:11px;text-align:right;" onkeypress="cegahKarakter();" onkeyup="rubahDiskon(this.id);changeTotal(this.id); sumTotal(); hitungDiskon(); tampilInvoice();"></xzztd>'+
            '<xzztd><input class="form-control" name="satuan[]"    id="satuanconjurnal"   value=""  style="font-size:11px;" readonly></xzztd>'+
            '<xzztd>'+
                '<input  class="form-control"  name="snnya[]" id="snnyaconjurnal" ></input>'+
            '</td>'+                        
            '<xzztd><input class="form-control" name="harga[]"   id="hargaconjurnal"  value="0" style="font-size:11px;text-align:right;" onkeyup="rubahDiskon(this.id);changeTotal(this.id); sumTotal(); hitungDiskon(); tampilInvoice();" onfocusout="FormatCurrency(this);"></xzztd>'+
            '<xzztd><input class="form-control" name="diskon[]"   id="diskonconjurnal"  value="0" style="font-size:11px;text-align:right;" onkeyup="changeTotal(this.id); sumTotal(); hitungDiskon(); tampilInvoice();" onfocusout="FormatCurrency(this);"></xzztd>'+
            '<xzztd><input class="form-control totalb" name="totalb[]"    id="totalbconjurnal"   value="0"  style="font-size:11px;text-align:right;" readonly></xzztd>'+
            '<xzztd>'+
                '<input type="button" onclick="addRow();" class="btn btn-xs btn-success" value="+"></input>'+
                '<input id="conjurnal" type="button" onclick="delRow(this.id);" class="btn btn-xs btn-warning" value="-"></input>'+
            '</td>'+
        '</xzztr>';
        while (html != (html=html.replace("conjurnal", counterRowjurnal)));     
        while (html != (html=html.replace("xzz", '')));     
        $('#counterRowjurnal').parent().parent().before(html);
        $('#counterRowjurnal').val(counterRowjurnal);
        $(".chosen-select").chosen();
        // $(".chosen-select").attr('disabled', true).trigger("chosen:updated");
        // statusSotype();
    }
    function addEmptyRow(){
        // delAllRow();
        counterRowjurnal=parseInt($('#counterRowjurnal').val())+1;
        var html=
        '<xzztr>'+
            '<xzztd scope="row">conjurnal.<input class="form-control" type="hidden" style="font-size:11px" name="jurnal[][no]" value="conjurnal" ></td>'+
            '<xzztd></xzztd>'+
            '<xzztd></xzztd>'+                        
            '<xzztd></xzztd>'+
            '<xzztd></xzztd>'+
            '<xzztd>'+
                '<input id="conjurnal" type="hidden" class="btn btn-xs btn-warning" value="-"></input>'+
            '</td>'+            
        '</xzztr>';
        while (html != (html=html.replace("conjurnal", counterRowjurnal)));     
        while (html != (html=html.replace("xzz", '')));     
        $('#counterRowjurnal').parent().parent().before(html);
        $('#counterRowjurnal').val(counterRowjurnal);
        //$(".chosen-select").chosen();
        // $(".chosen-select").attr('disabled', true).trigger("chosen:updated");
        // statusSotype();
    }          
</script>