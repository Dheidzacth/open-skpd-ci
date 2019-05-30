<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="content-wrapper">
    <section class="content-header">
        <?php echo $pagetitle; ?>
        <?php echo $breadcrumb; ?>
    </section>

    <section class="content">
    	<div class="row">
            <div class="col-md-6">
                 <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo anchor('admin/groups/create', '<i class="fa fa-plus"></i> Create Realisasi', array('class' => 'btn btn-block btn-primary btn-flat')); ?></h3>
                    </div>
                    <div class="box-body">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Bulan</th>
                                    <th>Persentase</th>
                                    <th>Anggaran</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Januari</td>
                                    <td>20%</td>
                                    <td>Rp 20.000.0000</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-danger" title="Delete"><i class="fa fa-close"></i> </button>
                                        <button type="button" class="btn btn-sm btn-info" style="margin-left: 5px" title="Edit"><i class="fa fa-edit"></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
             </div>
             <div class="col-md-6">
                 <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo anchor('admin/groups/create', '<i class="fa fa-plus"></i> Create Urusan', array('class' => 'btn btn-block btn-primary btn-flat')); ?></h3>
                    </div>
                    <div class="box-body">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>nama_urusan</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>ada deh</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-danger" title="Delete"><i class="fa fa-close"></i> </button>
                                        <button type="button" class="btn btn-sm btn-info" style="margin-left: 5px" title="Edit"><i class="fa fa-edit"></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                 <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo anchor('admin/groups/create', '<i class="fa fa-plus"></i> Create Jadwal', array('class' => 'btn btn-block btn-primary btn-flat')); ?></h3>
                    </div>
                    <div class="box-body">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Persentase</th>
                                    <th>Bulan</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>20%</td>
                                    <td>Januari</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-danger" title="Delete"><i class="fa fa-close"></i> </button>
                                        <button type="button" class="btn btn-sm btn-info" style="margin-left: 5px" title="Edit"><i class="fa fa-edit"></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
             </div>
             <div class="col-md-6">
                 <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo anchor('admin/groups/create', '<i class="fa fa-plus"></i> Create Program', array('class' => 'btn btn-block btn-primary btn-flat')); ?></h3>
                    </div>
                    <div class="box-body">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nama Program</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Januari</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-danger" title="Delete"><i class="fa fa-close"></i> </button>
                                        <button type="button" class="btn btn-sm btn-info" style="margin-left: 5px" title="Edit"><i class="fa fa-edit"></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
             </div>
        </div>
    </section>
</div>
<script type="text/javascript">
	
</script>