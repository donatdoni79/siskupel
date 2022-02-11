<?php
use App\Models\Konfigurasi_model;

$session     = \Config\Services::session();
$hak         = $session->get('hak');
$konfigurasi = new Konfigurasi_model();
$site        = $konfigurasi->listing();
$menu_01     = $konfigurasi->menu_01($hak);
$menu_02     = $konfigurasi->menu_02($hak);
$menu_03     = $konfigurasi->menu_03($hak);

    // echo "<pre>";
    // print_r($menu_03);
    // die();

?>
<style type="text/css" media="screen">
  .nav-item a:hover {
    color: yellow !important;
  }
</style>
<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="<?= base_url('assets/img/isn.png') ?>" alt="ISN Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">ISN </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?= base_url() ?>/assets/admin/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="<?= base_url('admin/akun') ?>" class="d-block"><?= $session->get('nama') ?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
<?php 
        $x=0; $jml=count($menu_01);$link_url ='';$urlnya=base_url();
        $xy=0; $jml_02=count($menu_02);
        while ($x<$jml){
          if(empty($menu_01[$x]['menu_url'])){$link_url ='';}else{$link_url =$menu_01[$x]['menu_url'];}
?>
          <!-- Dahboard -->
<?php 
          if($menu_01[$x]['isaccess_i']=='0'){ ?>
            <li class="nav-item <?php echo ($menu_01[$x]['menu_id']==$id_01) ? 'menu-open':''; ?>">
              <a href="<?php echo $urlnya.'/'.$link_url; ?>" class="nav-link <?php echo ($menu_01[$x]['menu_id']==$id_01) ? 'active':''; ?>">
                <i class="<?= $menu_01[$x]['menu_icon'] ?>"></i>
                <p><?= $menu_01[$x]['menu_nama'] ?></p>
              </a>
            </li>
<?php 
          }elseif($menu_01[$x]['isaccess_i']=='1'){ ?>
          <li class="nav-item <?php echo ($menu_01[$x]['menu_id']==$id_01) ? 'menu-open':''; ?>">
            <a href="#" class="nav-link <?php echo ($menu_01[$x]['menu_id']==$id_01) ? 'active':''; ?> ">
              <i class="<?= $menu_01[$x]['menu_icon'] ?>"></i>
              <p><?= $menu_01[$x]['menu_nama'] ?>
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
<?php
              $xy=0;
              while ($xy<$jml_02){
                if(empty($menu_02[$xy]['menu_sub_url'])){$link_url ='';}else{$link_url =$menu_02[$xy]['menu_sub_url'];}
                if($menu_01[$x]['menu_id']==$menu_02[$xy]['menu_id']){
?>              
                  <li class="nav-item">
                    <a href="<?php echo $urlnya.'/'.$link_url;?>" class="nav-link <?php echo ($menu_02[$xy]['menu_sub_id']==$id_02) ? 'active':''; ?> ">
                      <i class="<?= $menu_02[$xy]['menu_sub_icon'] ?>"></i>
                      <p><?= $menu_02[$xy]['menu_sub_nama'] ?></p>
                    </a>
                  </li>
<?php     
                }
              $xy++;}
?>            
            </ul>
          </li>          
<?php     
          } ?>
<?php 
        $x++;} 
?>



          <!-- logout -->
          <li class="nav-item">
            <a href="<?= base_url('login/logout') ?>" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>Logout</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <!-- <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h4>SISKUPEL </h4>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"><font style="font-size:22px;">PT. ISN</font></a></li>
            </ol>
          </div>
        </div>
      </div> -->
    </section>
    <!-- <li class="breadcrumb-item active"> SISKUPEL</li> -->
    <!-- /.container-fluid -->

