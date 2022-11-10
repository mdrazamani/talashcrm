<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="row">
    <?php echo form_open($this->uri->uri_string(),array('id'=>'project_form')); ?>
    <div class="col-md-7">
        <?php $this->load->view('admin/projects/project_main'); ?>
    </div>
    <div class="col-md-5">
        <?php $this->load->view('admin/projects/project_option'); ?>
    </div>
    <?php echo form_close(); ?>
</div>