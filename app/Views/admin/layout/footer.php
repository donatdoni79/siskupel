<?php use App\Models\Konfigurasi_model;

$session     = \Config\Services::session();
$konfigurasi = new Konfigurasi_model();
$site        = $konfigurasi->listing();
?>
<?php $sek = date('Y');
$awal      = $sek - 100;
?>
<script>
  $( ".datepicker" ).datepicker({
    inline: true,
    changeYear: true,
    changeMonth: true,
    dateFormat: "dd-mm-yy",
    yearRange: "<?= $awal ?>:<?php $tahundepan = date('Y') + 2; echo $tahundepan; ?>"
  });

  $( ".tanggal" ).datepicker({
    inline: true,
    changeYear: true,
    changeMonth: true,
    dateFormat: "dd-mm-yy",
    yearRange: "<?= $awal ?>:<?php $tahundepan = date('Y') + 2; echo $tahundepan; ?>"
  });

  $( ".tanggalan" ).datepicker({
    inline: true,
    changeYear: true,
    changeMonth: true,
    dateFormat: "dd-mm-yy",
    yearRange: "<?= $awal ?>:<?php $tahundepan = date('Y') + 2; echo $tahundepan; ?>"
  });

</script>
<!-- SWEETALERT -->
<?php if ($session->getFlashdata('sukses')) { ?>
<script>
  swal("Berhasil", "<?= $session->getFlashdata('sukses'); ?>","success")
</script>
<?php } ?>

<?php if (isset($error)) { ?>
<script>
  swal("Oops...", "<?= strip_tags($error); ?>","warning")
</script>
<?php } ?>

<?php if ($session->getFlashdata('warning')) { ?>
<script>
  swal("Oops...", "<?= $session->getFlashdata('warning'); ?>","warning")
</script>
<?php } ?>

<script>
// Sweet alert
  function confirmation(ev) {
    ev.preventDefault();
    var urlToRedirect = ev.currentTarget.getAttribute('href'); //use currentTarget because the click may be on the nested i tag and not a tag causing the href to be empty
    console.log(urlToRedirect); // verify if this is the right URL
    swal({
      title: "Yakin ingin menghapus data ini?",
      text: "Data yang sudah dihapus tidak dapat dikembalikan",
      icon: "warning",
      buttons: true,
      dangerMode: true,
  })
  .then((willDelete) => {
    // redirect with javascript here as per your logic after showing the alert using the urlToRedirect value
    if (willDelete) {
      // Proses ke URL
      window.location.href = urlToRedirect;
    }
  });
}

// Kirim ulang
function kirim(ev) {
ev.preventDefault();
var urlToRedirect = ev.currentTarget.getAttribute('href'); //use currentTarget because the click may be on the nested i tag and not a tag causing the href to be empty
console.log(urlToRedirect); // verify if this is the right URL
swal({
  title: "Yakin Ingin Mengirim Surat Ini?",
  text: "Pengiriman Surat Sebaiknya Kurang dari 200 Kali/jam agar tidak terkena Blokir Server. Klik CANCEL untuk membatalkan. Klik OK untuk mengirim surat.",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  // redirect with javascript here as per your logic after showing the alert using the urlToRedirect value
  if (willDelete) {
    // Proses ke URL
    window.location.href = urlToRedirect;
  }
});
}
// Akses
// Sweet alert
function akses(ev) {
ev.preventDefault();
var urlToRedirect = ev.currentTarget.getAttribute('href'); //use currentTarget because the click may be on the nested i tag and not a tag causing the href to be empty
console.log(urlToRedirect); // verify if this is the right URL
swal({
  title: "Yakin ingin memberi akses?",
  text: "Data yang diberi akses akan bisa login",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  // redirect with javascript here as per your logic after showing the alert using the urlToRedirect value
  if (willDelete) {
    // Proses ke URL
    window.location.href = urlToRedirect;
  }
});
}

// Tinymce

tinymce.init({
  selector: '.konten',
  menubar: true,
  plugins: [
    'advlist autolink lists link image charmap print preview anchor',
    'searchreplace visualblocks code fullscreen',
    'insertdatetime media table paste code help wordcount'
  ],
  toolbar: 'undo redo | formatselect | bold italic strikethrough forecolor backcolor | link image | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat code',
  content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
});
</script>
</div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2022 <a href="https://adminlte.io">PT INFOMEDIA SOLUSI NET</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- Bootstrap 4 -->
<script src="<?= base_url() ?>/assets/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="<?= base_url() ?>/assets/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/jszip/jszip.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/pdfmake/pdfmake.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/pdfmake/vfs_fonts.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="<?= base_url() ?>/assets/admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- Chosen Select -->
<script src="<?=base_url()?>/assets/admin/plugins/chosen/chosen.jquery.js"></script>

<script>
$(document).ready(function(){
    $('input.jam').timepicker({
        timeFormat: 'HH:mm:ss',
        // year, month, day and seconds are not important
        minTime: new Date(0, 0, 0, 8, 0, 0),
        maxTime: new Date(0, 0, 0, 15, 0, 0),
        // time entries start being generated at 6AM but the plugin
        // shows only those within the [minTime, maxTime] interval
        startHour: 6,
        // the value of the first item in the dropdown, when the input
        // field is empty. This overrides the startHour and startMinute
        // options
        startTime: new Date(0, 0, 0, 8, 20, 0),
        // items in the dropdown are separated by at interval minutes
        interval: 10
    });
});
</script>
<!-- AdminLTE App -->
<script src="<?= base_url() ?>/assets/admin/dist/js/adminlte.min.js"></script>
<!-- Summernote -->
<script src="<?= base_url() ?>/assets/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= base_url() ?>/assets/admin/dist/js/demo.js"></script>
<!-- Page specific script -->
<!-- Select2 -->
<script src="<?= base_url() ?>/assets/admin/plugins/select2/js/select2.full.min.js"></script>

<script>
  $(function () {
    $("#example1").DataTable({
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
      "responsive": true,
      "paging": true,
      "lengthMenu": [[10, 20, 50, -1], [10, 20, 50, "All"]],
      "lengthChange": true,
      "autoWidth": false
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });

  $(function () {
    // Summernote
    $('.summernote').summernote({
      height: 100,                 // set editor height
      minHeight: null,             // set minimum height of editor
      maxHeight: null,             // set maximum height of editor
    })
  })
  // tanggal dan select
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })

    //Datemask dd/mm/yyyy
   // $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    // //Datemask2 mm/dd/yyyy
   // $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    // //Money Euro
    //$('[data-mask]').inputmask()

    //   //Date picker
    // $('#reservationdate').datetimepicker({
    //     format: 'L'
    // });

    //   //Date and time picker
    //$('#reservationdatetime').datetimepicker({ icons: { time: 'far fa-clock' } });

    //   //Date range picker
   // $('#reservation').daterangepicker()
    //   //Date range picker with time picker
    // $('#reservationtime').daterangepicker({
    //   timePicker: true,
    //   timePickerIncrement: 30,
    //   locale: {
    //     format: 'MM/DD/YYYY hh:mm A'
    //   }
    // })
    //   //Date range as a button
    // $('#daterange-btn').daterangepicker(
    //   {
    //     ranges   : {
    //       'Today'       : [moment(), moment()],
    //       'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
    //       'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
    //       'Last 30 Days': [moment().subtract(29, 'days'), moment()],
    //       'This Month'  : [moment().startOf('month'), moment().endOf('month')],
    //       'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
    //     },
    //     startDate: moment().subtract(29, 'days'),
    //     endDate  : moment()
    //   },
    //   function (start, end) {
    //     $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
    //   }
    //)

    //   //Timepicker
    // $('#timepicker').datetimepicker({
    //   format: 'LT'
    // })

    //   //Bootstrap Duallistbox
    //$('.duallistbox').bootstrapDualListbox()

    //   //Colorpicker
    //$('.my-colorpicker1').colorpicker()
    //   //color picker with addon
    //$('.my-colorpicker2').colorpicker()

    // $('.my-colorpicker2').on('colorpickerChange', function(event) {
    //   $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
    // })

    $("input[data-bootstrap-switch]").each(function(){
      $(this).bootstrapSwitch('state', $(this).prop('checked'));
    })

  })

  // BS-Stepper Init
  // document.addEventListener('DOMContentLoaded', function () {
  //   window.stepper = new Stepper(document.querySelector('.bs-stepper'))
  // })

  // DropzoneJS Demo Code Start
  // Dropzone.autoDiscover = false

  // Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
  // var previewNode = document.querySelector("#template")
  // previewNode.id = "";
  // var previewTemplate = previewNode.parentNode.innerHTML
  // previewNode.parentNode.removeChild(previewNode)

  // var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
  //   url: "/target-url", // Set the url
  //   thumbnailWidth: 80,
  //   thumbnailHeight: 80,
  //   parallelUploads: 20,
  //   previewTemplate: previewTemplate,
  //   autoQueue: false, // Make sure the files aren't queued until manually added
  //   previewsContainer: "#previews", // Define the container to display the previews
  //   clickable: ".fileinput-button" // Define the element that should be used as click trigger to select files.
  // })

  // myDropzone.on("addedfile", function(file) {
  //   // Hookup the start button
  //   file.previewElement.querySelector(".start").onclick = function() { myDropzone.enqueueFile(file) }
  // })

  // // Update the total progress bar
  // myDropzone.on("totaluploadprogress", function(progress) {
  //   document.querySelector("#total-progress .progress-bar").style.width = progress + "%"
  // })

  // myDropzone.on("sending", function(file) {
  //   // Show the total progress bar when upload starts
  //   document.querySelector("#total-progress").style.opacity = "1"
  //   // And disable the start button
  //   file.previewElement.querySelector(".start").setAttribute("disabled", "disabled")
  // })

  // Hide the total progress bar when nothing's uploading anymore
  // myDropzone.on("queuecomplete", function(progress) {
  //   document.querySelector("#total-progress").style.opacity = "0"
  // })

  // Setup the buttons for all transfers
  // The "add files" button doesn't need to be setup because the config
  // `clickable` has already been specified.
  // document.querySelector("#actions .start").onclick = function() {
  //   myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
  // }
  // document.querySelector("#actions .cancel").onclick = function() {
  //   myDropzone.removeAllFiles(true)
  // }
  // DropzoneJS Demo Code End
</script>
<script type="text/javascript">

  var pageIDForm = "";

  function submitForm(pageID) {
      //tinyMCE.triggerSave();
      for(instance in CKEDITOR.instances) {
          CKEDITOR.instances[instance].updateElement();
      }
      
      $('#'+pageID).submit();
      pageIDForm = pageID;
  }
  
  $('#post-form').ajaxForm({                
      dataType        : 'json',
      beforeSubmit    : ShowRequest,
      success         : SubmitSuccesful,
      error           : AjaxError                              
  });

  function ShowRequest(formData, jqForm, options) {
    var queryString = $.param(formData);
    $("#message-loader").show();
    return true;
  }

  function AjaxError(){
      alertify.alert("Oppsss, an unknown error has occurred. You need to refresh the browser to see whether your data is saved (or not).");
      //alert(statusText);
  }

  function SubmitSuccesful(responseText, statusText) {
      $("#message-loader").hide();
      if(responseText.response == "success"){
          alertify.success(responseText.message);
          window.setTimeout(function(){window.location.replace(responseText.url)},2000);
      }else{
          alertify.error(responseText.message);
      }
  }

  var config = {
          '.chosen-select'           : {},
          '.chosen-select-deselect'  : {allow_single_deselect:true},
          '.chosen-select-no-single' : {disable_search_threshold:10},
          '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
          '.chosen-select-width'     : {width:"95%"}
      }

  for (var selector in config) {
      $(selector).chosen(config[selector]);
  }    
</script>
    <!-- SCRIPT CUSTOM CEK NUMERIK INPUT DAN FORMAT CURRENCY UNTUK DIGUNAKAN DI JURNAL, PAYMENT, RECEPAY, QUOTATION, DLL-->
    <script>
        function delRow(id){
            //alert(id);
            $('#'+id).parent().parent().detach();
        }

        function cegahKarakter(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
                key = String.fromCharCode( key );
            var regex = /[0-9]|\./;
            if( !regex.test(key) ) {
                theEvent.returnValue = false;
                if(theEvent.preventDefault) theEvent.preventDefault();
            }
        }

        function jikaEnter(evt) {
            // Cari sintak Jika Enter maka memanggil formatdolar2
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
                key = String.fromCharCode( key );
            var regex = /[0-9]|\./;
            if( !regex.test(key) ) {
                theEvent.returnValue = false;
                if(theEvent.preventDefault) theEvent.preventDefault();
            }
        }        

        function getAddressCustomer(id){
            // $('#cust_id').change(function() {alert($(this).val())})
            var valval = $('#'+id).val();
            if (valval != '') {
                $.ajax({
                    type:"POST",
                    url: "<?=base_url()?>C_sales/getAddressCustomer/"+valval,
                    data: {"cust_id" : id},
                    dataType: 'json',
                    success: function(data){
                        //$('#showCurrNo').show();
                        $('#address').val(data.address);
                        $('#phone').val(data.cust_telp);
                        $('#cp').val(data.cp);
                        // $('#address').html(data.address);
                        //$("#passedValue").val(data);
                    }
                });
            }
        }        

        function formatDollar(num) {
            // if (Number(num){
                
            // }
            var p = num.toFixed(2).split(".");
            return  p[0].split("").reverse().reduce(function(acc, num, i, orig) {
                return  num + (i && !(i % 3) ? "," : "") + acc;
            }, "") + "." + p[1];
        }

        function formatDollar1(nStr)
        {
            // nStr =nStr.toFixed(4)
            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }
            var yyk=x1 + x2;  
            // alert(x1);
            // alert(x2.length);      
            if(x2.length>=6){
                
                var y1=x1;
                var y1=y1.replace(/,/,"")
                
                var yy=y1+x2;
                var angka=Number(yy).toFixed(4);
                
                var y2 = angka.substring(1,7);
                //alert(y2);
                var yyk=x1 + y2;
            }
            return yyk;
        }                           

        function formatDollar3(nStr) {
            var yyk="";
            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }
            var yyk=x1 + x2;  
            // alert(x1);
            // alert(x2.length);      
            if(x2.length>=6){
                
                var y1=x1;
                var y1=y1.replace(/,/,"")
                
                var yy=y1+x2;
                var angka=Number(yy).toFixed(4);
                
                var y2 = angka.substring(1,7);
                //alert(y2);
                yyk=x1 + y2;
            }
            var i = yyk.length;            
            //alert(i);
            if(yyk.substring(i-1,i)==0){
                yyk = yyk.substring(0,i-1);
                var h = yyk.length;                
                if(yyk.substring(h-1,h)==0){
                    yyk = yyk.substring(0,h-1);
                }                
            }                            
            return yyk;
        }        
        
        function formatDollar2(nStr) {
            
            var kkStr=nStr;
            //alert(nStr);
            //kkStr=kkStr.value.replace(/,/g, "");
            //var newstr= kkStr.replace(/,/g,"");
            
            //var nval=Number(newstr);            
            nval=kkStr.toFixed(4);
            //alert(nval);
            var sval = formatDollar3(nval);
            return sval;
        }

        function FormatCurrency(ctrl) {
            //Check if arrow keys are pressed - we want to allow navigation around textbox using arrow keys
            if (event.keyCode == 37 || event.keyCode == 38 || event.keyCode == 39 || event.keyCode == 40)
            {
                return;
            }
            var val = ctrl.value;
            val=val.replace(/,/g, "");
            var nval=Number(val);
            ctrl.value ="";
            nval=nval.toFixed(4);
            //alert(nval);
            var sval = formatDollar3(nval);
            ctrl.value =sval;
        }

        function FormatCurrbaru(ctrl) {
            //Check if arrow keys are pressed - we want to allow navigation around textbox using arrow keys
            if (event.keyCode == 37 || event.keyCode == 38 || event.keyCode == 39 || event.keyCode == 40)
            {
                return;
            }
            var val = ctrl.value;
            val=val.replace(/,/g, "");
            var nval=Number(val);
            ctrl.value ="";
            nval=nval.toFixed(0);
            //alert(nval);
            var sval = formatDollar1(nval);
            ctrl.value =sval;            
            // var val = ctrl.value;
            // val=val.replace(/,/g, "");
            // var nval=Number(val);
            // ctrl.value ="";
            // nval=nval.toFixed(4);
            // //alert(nval);
            // var sval = formatDollar3(nval);
            // ctrl.value =sval;
        }

        function formatNil(ctrl) {
            //Check if arrow keys are pressed - we want to allow navigation around textbox using arrow keys
            if (event.keyCode == 37 || event.keyCode == 38 || event.keyCode == 39 || event.keyCode == 40)
            {
                return;
            }

            var val = ctrl.value;

            val = val.replace(/,/g, "");
            
            // var val = parseFloat(ctrl.value.replace(/,/g, ''));
            // val = val.toFixed(4)
            //val = val.toFixed(4);
            ctrl.value = "";
            val += '';
            x = val.split('.');
            x1 = x[0];
            kstr = '0000'+x[1];
            //alert(kstr);
            kstr =kstr.substring(kstr.length-3, 4);
            
            // x2 = x.length > 1 ? '.' + x[1] : '';
            x2 = x.length > 1 ? '.' + kstr : '';
            var rgx = /(\d+)(\d{3})/;

            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            ctrl.value = x1 + x2;
            // parseFloat(x1 + x2).toFixed(2);
            //console.log(ctl);
        }
        
        // function right(str, chr){
        //     return str.slice(myString.length-chr,myString.length);
        // }        

        function FormatCurrency2(ctrl) {
            //Check if arrow keys are pressed - we want to allow navigation around textbox using arrow keys
            if (event.keyCode == 37 || event.keyCode == 38 || event.keyCode == 39 || event.keyCode == 40)
            {
                return;
            }

            var val = ctrl.value;

            val = val.replace(/,/g, "")
            ctrl.value = "";
            val += '';
            x = val.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';

            var rgx = /(\d+)(\d{3})/;

            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }
            var yyk=x1 + x2;
            alert(yyk);
            ctrl.value = yyk;
            // ctrl.value = x1 + x2;
            // parseFloat(x1 + x2).toFixed(2);
            //console.log(ctl);
        }        


        function checkNumeric(ctrl) {
            // if (event.keyCode == 37 || event.keyCode == 38 || event.keyCode == 39 || event.keyCode == 40)
            // {
            //     return;
            // }
            //alert(event.keyCode);
            if ((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode==46 || event.keyCode==44) {
                //alert("bener");
            }else{
                //alert("salah");
                return;                
            }
            //var val = ctrl.value;
            //ctrl.value = val;
            // event.keyCode >= 48 && event.keyCode <= 57 && event.keyCode==46 && event.keyCode==44
            //return (event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode=46;

            // if ((event.keyCode < 48 || event.keyCode > 57)){
            //      if((event.keyCode == 45 || event.keyCode == 46 )){
            //       event.returnValue = true;
            // }else{
            //     event.returnValue = false;
            //    }
            // }              
        }

        function formatTgl(nStr) {            
                var tglnya   = new Date(nStr);
                var month   = tglnya.getMonth()+1;
                var day     = tglnya.getDate();
                var year    = tglnya.getFullYear().toString();
                if(day<10) {
                    var dd='0'+day;
                }else{
                    var dd=day.toString();
                } 
                if(month<10) {
                    var mm ='0'+month;
                }else{
                    var mm =month.toString();
                } 
                var stglpo = dd + "-" + mm + "-" + year;
            //var kkStr=nStr;
            //alert(nStr);
            //kkStr=kkStr.value.replace(/,/g, "");
            //var newstr= kkStr.replace(/,/g,"");            
            //var nval=Number(newstr);            
            //nval=kkStr.toFixed(4);
            //alert(nval);
            //var sval = formatDollar3(nval);
            return stglpo;
        }

        function formatAngka(nStr) {
            var dta =nStr;
            if (isNaN(dta)){
                dta=0;
            }
            return dta;
        }    
    </script>
</body>
</html>