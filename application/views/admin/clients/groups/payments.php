<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if(isset($client)){ ?>
	<a href="#" class="btn btn-info mbot25" data-toggle="modal" data-target="#client_zip_payments"><?php echo _l('فایل زیپ پرداختی ها'); ?></a>
	<?php
	$this->load->view('admin/payments/table_html', array('class'=>'payments-single-client'));
	$this->load->view('admin/clients/modals/zip_payments');
	?>
<?php } ?>
