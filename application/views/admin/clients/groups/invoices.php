<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if(isset($client)){ ?>
	<?php if(has_permission('invoices','','create')){ ?>
		<a href="<?php echo admin_url('invoices/invoice?customer_id='.$client->userid); ?>" class="btn btn-info mbot15<?php if($client->active == 0){echo ' disabled';} ?>">
			<?php echo _l('افزودن فاکتور جدید'); ?>
		</a>
	<?php } ?>
	<?php if(has_permission('invoices','','view') || has_permission('invoices','','view_own') || get_option('allow_staff_view_invoices_assigned') == '1'){ ?>
		<a href="#" class="btn btn-info mbot15" data-toggle="modal" data-target="#client_zip_invoices">
			<?php echo _l('دریافت فایل zip'); ?>
		</a>
		<div id="invoices_total" class="mbot20"></div>
		<?php
		$this->load->view('admin/invoices/table_html', array('class'=>'invoices-single-client'));
		$this->load->view('admin/clients/modals/zip_invoices');
		?>
	<?php } ?>
<?php } ?>
