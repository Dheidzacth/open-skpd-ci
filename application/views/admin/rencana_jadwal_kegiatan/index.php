<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="content-wrapper">
    <section class="content-header">
        <?php echo $pagetitle; ?>
        <?php echo $breadcrumb; ?>
    </section>
    <section class="content">
    	<div class="box">
            <div class="box-header with-border">
                <h3 class="box-title"><?php echo anchor('admin/groups/create', '<i class="fa fa-plus"></i> Create Form Rencana Jadwal Kegiatan', array('class' => 'btn btn-block btn-primary btn-flat')); ?></h3>
            </div>
            <div class="box-body">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nama Kegiatan</th>
                            <th>Volume</th>
                            <th>Satuan</th>
                            <th>Bobot</th>
                            <th>Progres Minggu</th>
                            <th>Tgl</th>   
                            <th>Action</th>                                                                                 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Pengadaan Sepeda Motor</td>
                            <td>30</td>
                            <td>10</td>
                            <td>20</td>
                            <td>20%</td>                            
                            <td>12-05-2018</td>                            
                            <td>
                                <button type="button" class="btn btn-sm btn-danger" title="Delete"><i class="fa fa-close"></i> </button>
                                <button type="button" class="btn btn-sm btn-info" style="margin-left: 5px" title="Edit"><i class="fa fa-edit"></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>