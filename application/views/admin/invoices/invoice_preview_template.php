<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if((credits_can_be_applied_to_invoice($invoice->status) && $credits_available > 0)) { ?>
<div class="alert alert-warning mbot5">
   <?php echo _l('x_credits_available', app_format_money($credits_available, $customer_currency->name)); ?>
   <br />
   <a href="#" data-toggle="modal" data-target="#apply_credits"><?php echo _l('apply_credits'); ?></a>
</div>
<?php } ?>
<?php if(count($invoices_to_merge) > 0){ ?>
<div class="mz-panel no-padding mbot5 mergeable-invoices">
   <div class="mz-panel-body">
      <h4 class="font-medium bold no-mtop mbot15"><?php echo _l('فاکتورهای موجود برای ادغام'); ?></h4>
      <hr class="hr-panel-heading hr-10"/>
      <?php foreach($invoices_to_merge as $_inv){ ?>
      <p>
         <a href="<?php echo admin_url('invoices/list_invoices/'.$_inv->id); ?>" target="_blank"><?php echo format_invoice_number($_inv->id); ?></a> -<span class="disInlineBlock"><?php echo app_format_money($_inv->total,$_inv->currency_name); ?></span>
         <span class="pull-right text-<?php echo get_invoice_status_label($_inv->status); ?>">
         <?php echo format_invoice_status($_inv->status,'',false); ?>
         </span>
      </p>
      <?php } ?>
   </div>
</div>
<?php } ?>
<?php echo form_hidden('_attachment_sale_id',$invoice->id); ?>
<?php echo form_hidden('_attachment_sale_type','invoice'); ?>
<div class="col-md-12 no-padding">
   <div class="mz-panel">
      <div class="mz-panel-body">
         <?php if($invoice->recurring > 0){
            echo '<div class="ribbon info"><span>'._l('invoice_recurring_indicator').'</span></div>';
            } ?>
         <div class="horizontal-scrollable-tabs preview-tabs-top">
            <div class="scroller arrow-left"><i class="fa fa-angle-left"></i></div>
            <div class="scroller arrow-right"><i class="fa fa-angle-right"></i></div>
            <div class="horizontal-tabs">
               <ul class="nav nav-tabs nav-tabs-horizontal mbot15" role="tablist">
                  <li role="presentation" class="active">
                     <a href="#tab_invoice" aria-controls="tab_invoice" role="tab" data-toggle="tab">
                     <?php echo _l('فاکتور'); ?>
                     </a>
                  </li>
                  <?php if(count($invoice->payments) > 0) { ?>
                  <li role="presentation">
                     <a href="#invoice_payments_received" aria-controler="invoice_payments_received" role="tab" data-toggle="tab">
                     <?php echo _l('پرداخت ها'); ?> <span class="badge"><?php echo count($invoice->payments); ?></span>
                     </a>
                  </li>
                  <?php } ?>
                  <?php if(count($applied_credits) > 0) { ?>
                  <li role="presentation">
                     <a href="#invoice_applied_credits" aria-controls="invoice_applied_credits" role="tab" data-toggle="tab">
                     <?php echo _l('اعتبارات'); ?> <span class="badge"><?php echo count($applied_credits); ?></span>
                     </a>
                  </li>
                  <?php } ?>
                  <?php if(count($invoice_recurring_invoices) > 0 || $invoice->recurring != 0) { ?>
                  <li role="presentation">
                     <a href="#tab_child_invoices" aria-controls="tab_child_invoices" role="tab" data-toggle="tab">
                     <?php echo _l('فاکتور های مرتبط'); ?>
                     </a>
                  </li>
                  <?php } ?>
                  <li role="presentation">
                     <a href="#tab_tasks" onclick="init_rel_tasks_table(<?php echo $invoice->id; ?>,'invoice'); return false;" aria-controls="tab_tasks" role="tab" data-toggle="tab">
                     <?php echo _l('وظایف'); ?>
                     </a>
                  </li>
                  <li role="presentation">
                     <a href="#tab_activity" aria-controls="tab_activity" role="tab" data-toggle="tab">
                     <?php echo _l('گزارش فعالیت'); ?>
                     </a>
                  </li>
                  <li role="presentation">
                     <a href="#tab_reminders" onclick="initDataTable('.table-reminders', admin_url + 'misc/get_reminders/' + <?php echo $invoice->id ;?> + '/' + 'invoice', undefined, undefined,undefined,[1,'asc']); return false;" aria-controls="tab_reminders" role="tab" data-toggle="tab">
                     <?php echo _l('یادآوری ها'); ?>
                     <?php
                        $total_reminders = total_rows(db_prefix().'reminders',
                         array(
                          'isnotified'=>0,
                          'staff'=>get_staff_user_id(),
                          'rel_type'=>'invoice',
                          'rel_id'=>$invoice->id
                        )
                        );
                        if($total_reminders > 0){
                         echo '<span class="badge">'.$total_reminders.'</span>';
                        }
                        ?>
                     </a>
                  </li>
                  <li role="presentation" class="tab-separator">
                     <a href="#tab_notes" onclick="get_sales_notes(<?php echo $invoice->id; ?>,'invoices'); return false" aria-controls="tab_notes" role="tab" data-toggle="tab">
                     <?php echo _l('یادداشت ها'); ?> <span class="notes-total">
                     <?php if($totalNotes > 0){ ?>
                     <span class="badge"><?php echo $totalNotes; ?></span>
                     <?php } ?>
                     </span>
                     </a>
                  </li>
                  <li role="presentation" data-toggle="tooltip" title="<?php echo _l('ردیابی ایمیل ها'); ?>" class="tab-separator">
                     <a href="#tab_emails_tracking" aria-controls="tab_emails_tracking" role="tab" data-toggle="tab">
                     <?php if(!is_mobile()){ ?>
                     <i class="fa fa-envelope-open-o" aria-hidden="true"></i>
                     <?php } else { ?>
                     <?php echo _l('ردیابی ایمیل ها'); ?>
                     <?php } ?>
                     </a>
                  </li>
                  <li role="presentation" data-toggle="tooltip" title="<?php echo _l('ردیابی بازدیدها'); ?>" class="tab-separator">
                     <a href="#tab_views" aria-controls="tab_views" role="tab" data-toggle="tab">
                     <?php if(!is_mobile()){ ?>
                     <i class="fa fa-eye"></i>
                     <?php } else { ?>
                     <?php echo _l('ردیابی بازدیدها'); ?>
                     <?php } ?>
                     </a>
                  </li>
                  <li role="presentation" data-toggle="tooltip" data-title="<?php echo _l('تغییر به تمام صفحه'); ?>" class="tab-separator toggle_view">
                     <a href="#" onclick="small_table_full_view(); return false;">
                     <i class="fa fa-expand"></i></a>
                  </li>
               </ul>
            </div>
         </div>
         <div class="row mtop10">
            <div class="col-md-3">
               <?php echo format_invoice_status($invoice->status,'mtop5'); ?>
               <?php
                  if(is_invoice_overdue($invoice)){
                       echo '<p class="text-danger mtop15 no-mbot">'._l('invoice_is_overdue', get_total_days_overdue($invoice->duedate)).'</p>';
                     }
               ?>
            </div>
            <div class="col-md-9 _buttons">
               <div class="visible-xs">
                  <div class="mtop10"></div>
               </div>
               <div class="pull-right">
                  <?php
                     $_tooltip = _l('ارسال به ایمیل');
                     $_tooltip_already_send = '';
                     if($invoice->sent == 1 && is_date($invoice->datesend)){
                      $_tooltip_already_send = _l('invoice_already_send_to_client_tooltip',time_ago($invoice->datesend));
                     }
                     ?>
                  <?php if(has_permission('invoices','','edit')){ ?>
                  <a href="<?php echo admin_url('invoices/invoice/'.$invoice->id); ?>" data-toggle="tooltip" title="<?php echo _l('ویرایش فاکتور'); ?>" class="btn btn-default btn-with-tooltip" data-placement="bottom"><i class="fa fa-pencil-square-o"></i></a>
                  <?php } ?>
                  <div class="btn-group">
                     <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-file-pdf-o"></i><?php if(is_mobile()){echo ' PDF';} ?> <span class="caret"></span></a>
                     <ul class="dropdown-menu dropdown-menu-right">
                        <li class="hidden-xs"><a href="<?php echo admin_url('invoices/pdf/'.$invoice->id.'?output_type=I'); ?>"><?php echo _l('مشاهده pdf'); ?></a></li>
                        <li class="hidden-xs"><a href="<?php echo admin_url('invoices/pdf/'.$invoice->id.'?output_type=I'); ?>" target="_blank"><?php echo _l('مشاهده pdf در صفحه جدید'); ?></a></li>
                        <li><a href="<?php echo admin_url('invoices/pdf/'.$invoice->id); ?>"><?php echo _l('دانلود'); ?></a></li>
                        <li>
                           <a href="<?php echo admin_url('invoices/pdf/'.$invoice->id.'?print=true'); ?>" target="_blank">
                           <?php echo _l('چاپ'); ?>
                           </a>
                        </li>
                     </ul>
                  </div>
                  <?php if(!empty($invoice->clientid)){ ?>
                  <span<?php if($invoice->status == Invoices_model::STATUS_CANCELLED){ ?> data-toggle="tooltip" data-title="<?php echo _l('invoice_cancelled_email_disabled'); ?>"<?php } ?>>
                  <a href="#" class="invoice-send-to-client btn-with-tooltip btn btn-default<?php if($invoice->status == Invoices_model::STATUS_CANCELLED){echo ' disabled';} ?>" data-toggle="tooltip" title="<?php echo $_tooltip; ?>" data-placement="bottom"><span data-toggle="tooltip" data-title="<?php echo $_tooltip_already_send; ?>"><i class="fa fa-envelope"></i></span></a>
                  </span>
                  <?php } ?>
                  <!-- Single button -->
                  <div class="btn-group">
                     <button type="button" class="btn btn-default pull-left dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <?php echo _l('بیشتر'); ?> <span class="caret"></span>
                     </button>
                     <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="<?php echo site_url('invoice/' . $invoice->id . '/' .  $invoice->hash) ?>" target="_blank"><?php echo _l('مشاهده فاکتور به عنوان مشتری'); ?></a></li>
                        <li>
                           <?php hooks()->do_action('after_invoice_view_as_client_link', $invoice); ?>
                           <?php if(is_invoice_overdue($invoice) && is_invoices_overdue_reminders_enabled()){ ?>
                              <a href="<?php echo admin_url('invoices/send_overdue_notice/'.$invoice->id); ?>">
                                 <?php echo _l('send_overdue_notice_tooltip'); ?>
                              </a>
                           <?php } ?>
                        </li>
                        <?php if($invoice->status != Invoices_model::STATUS_CANCELLED
                           && has_permission('credit_notes','','create')
                           && !empty($invoice->clientid)) {?>
                        <li>
                           <a href="<?php echo admin_url('credit_notes/credit_note_from_invoice/'.$invoice->id); ?>" id="invoice_create_credit_note" data-status="<?php echo $invoice->status; ?>"><?php echo _l('یادداشت اعتباری'); ?></a>
                        </li>
                        <?php } ?>
                        <li>
                           <a href="#" data-toggle="modal" data-target="#sales_attach_file"><?php echo _l('فایل پیوست'); ?></a>
                        </li>
                        <?php if(has_permission('invoices','','create')){ ?>
                        <li>
                           <a href="<?php echo admin_url('invoices/copy/'.$invoice->id); ?>"><?php echo _l('کپی از فاکتور مورد نظر'); ?></a>
                        </li>
                        <?php } ?>
                        <?php if($invoice->sent == 0){ ?>
                        <li>
                           <a href="<?php echo admin_url('invoices/mark_as_sent/'.$invoice->id); ?>"><?php echo _l('علامت گذاری به عنوان ارسال شده'); ?></a>
                        </li>
                        <?php } ?>
                        <?php if(has_permission('invoices','','edit') || has_permission('invoices','','create')){ ?>
                        <li>
                           <?php if($invoice->status != Invoices_model::STATUS_CANCELLED
                              && $invoice->status != Invoices_model::STATUS_PAID
                              && $invoice->status != Invoices_model::STATUS_PARTIALLY){ ?>
                           <a href="<?php echo admin_url('invoices/mark_as_cancelled/'.$invoice->id); ?>"><?php echo _l('علامت گذاری به عنوان لغو شده'); ?></a>
                           <?php } else if($invoice->status == Invoices_model::STATUS_CANCELLED) { ?>
                           <a href="<?php echo admin_url('invoices/unmark_as_cancelled/'.$invoice->id); ?>"><?php echo _l('برداشتن علامت لغو شده'); ?></a>
                           <?php } ?>
                        </li>
                        <?php } ?>
                        <?php if(!in_array($invoice->status, array(Invoices_model::STATUS_PAID, Invoices_model::STATUS_CANCELLED, Invoices_model::STATUS_DRAFT))
                           && has_permission('invoices','','edit')
                           && $invoice->duedate
                           && is_invoices_overdue_reminders_enabled()){ ?>
                        <li>
                           <?php if($invoice->cancel_overdue_reminders == 1) { ?>
                           <a href="<?php echo admin_url('invoices/resume_overdue_reminders/'.$invoice->id); ?>"><?php echo _l('از سرگیری یادآورهای عقب افتاده'); ?></a>
                           <?php } else { ?>
                           <a href="<?php echo admin_url('invoices/pause_overdue_reminders/'.$invoice->id); ?>"><?php echo _l('مکث یادآوری های عقب افتاده'); ?></a>
                           <?php } ?>
                        </li>
                        <?php } ?>
                        <?php
                           if((get_option('delete_only_on_last_invoice') == 1 && is_last_invoice($invoice->id)) || (get_option('delete_only_on_last_invoice') == 0)){ ?>
                        <?php if(has_permission('invoices','','delete')){ ?>
                        <li data-toggle="tooltip" data-title="<?php echo _l('delete_invoice_tooltip'); ?>">
                           <a href="<?php echo admin_url('invoices/delete/'.$invoice->id); ?>" class="text-danger delete-text _delete"><?php echo _l('حذف'); ?></a>
                        </li>
                        <?php } ?>
                        <?php } ?>
                        <?php hooks()->do_action('after_invoice_preview_more_menu'); ?>
                     </ul>
                  </div>
                  <?php if(has_permission('payments','','create') && abs($invoice->total) > 0){ ?>
                  <a href="#" onclick="record_payment(<?php echo $invoice->id; ?>); return false;"  class="mleft10 pull-right btn btn-success<?php if($invoice->status == Invoices_model::STATUS_PAID || $invoice->status == Invoices_model::STATUS_CANCELLED){echo ' disabled';} ?>">
                     <i class="fa fa-plus-square"></i> <?php echo _l('پرداخت'); ?></a>
                  <?php } ?>
               </div>
            </div>
         </div>
         <div class="clearfix"></div>
         <hr class="hr-panel-heading" />
         <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="tab_invoice">
               <?php if($invoice->status == Invoices_model::STATUS_CANCELLED && $invoice->recurring > 0) { ?>
               <div class="alert alert-info">
                  Recurring invoice with status Cancelled <b>is still ongoing recurring invoice</b>. If you want to stop this recurring invoice you should update the invoice recurring field to <b>No</b>.
               </div>
               <?php } ?>
               <?php $this->load->view('admin/invoices/invoice_preview_html'); ?>
            </div>
            <?php if(count($invoice->payments) > 0) { ?>
            <div class="tab-pane" role="tabpanel" id="invoice_payments_received">
               <?php include_once(APPPATH . 'views/admin/invoices/invoice_payments_table.php'); ?>
            </div>
            <?php } ?>
            <?php if(count($applied_credits) > 0){ ?>
            <div class="tab-pane" role="tabpanel" id="invoice_applied_credits">
               <div class="table-responsive">
                  <table class="table table-bordered table-hover no-mtop">
                     <thead>
                        <th><span class="bold"><?php echo _l('یادداشت اعتباری'); ?> #</span></th>
                        <th><span class="bold"><?php echo _l('تاریخ'); ?></span></th>
                        <th><span class="bold"><?php echo _l('مقدار اعتبار'); ?></span></th>
                     </thead>
                     <tbody>
                        <?php foreach($applied_credits as $credit) { ?>
                        <tr>
                           <td>
                              <a href="<?php echo admin_url('credit_notes/list_credit_notes/'.$credit['credit_id']); ?>"><?php echo format_credit_note_number($credit['credit_id']); ?></a>
                           </td>
                           <td><?php echo _d($credit['date']); ?></td>
                           <td><?php echo app_format_money($credit['amount'], $invoice->currency_name) ?>
                              <?php if(has_permission('credit_notes','','delete')){ ?>
                              <a href="<?php echo admin_url('credit_notes/delete_invoice_applied_credit/'.$credit['id'].'/'.$credit['credit_id'].'/'.$invoice->id); ?>" class="pull-right text-danger _delete"><i class="fa fa-trash"></i></a>
                              <?php } ?>
                           </td>
                        </tr>
                        <?php } ?>
                     </tbody>
                  </table>
               </div>
            </div>
            <?php } ?>
            <div role="tabpanel" class="tab-pane" id="tab_tasks">
               <?php init_relation_tasks_table(array('data-new-rel-id'=>$invoice->id,'data-new-rel-type'=>'invoice')); ?>
            </div>
            <div role="tabpanel" class="tab-pane" id="tab_reminders">
               <a href="#" class="btn btn-info btn-xs" data-toggle="modal" data-target=".reminder-modal-invoice-<?php echo $invoice->id; ?>"><i class="fa fa-bell-o"></i> <?php echo _l('invoice_set_reminder_title'); ?></a>
               <hr />
               <?php render_datatable(array( _l( 'reminder_description'), _l( 'reminder_date'), _l( 'reminder_staff'), _l( 'reminder_is_notified')), 'reminders'); ?>
               <?php $this->load->view('admin/includes/modals/reminder',array('id'=>$invoice->id,'name'=>'invoice','members'=>$members,'reminder_title'=>_l('invoice_set_reminder_title'))); ?>
            </div>
            <?php if(count($invoice_recurring_invoices) > 0 || $invoice->recurring != 0){ ?>
            <div role="tabpanel" class="tab-pane" id="tab_child_invoices">
               <?php if(count($invoice_recurring_invoices)){ ?>
               <p class="mtop30 bold"><?php echo _l('invoice_add_edit_recurring_invoices_from_invoice'); ?></p>
               <br />
               <ul class="list-group">
                  <?php foreach($invoice_recurring_invoices as $recurring){ ?>
                  <li class="list-group-item">
                     <a href="<?php echo admin_url('invoices/list_invoices/'.$recurring->id); ?>" onclick="init_invoice(<?php echo $recurring->id; ?>); return false;" target="_blank"><?php echo format_invoice_number($recurring->id); ?>
                     <span class="pull-right bold"><?php echo app_format_money($recurring->total, $recurring->currency_name); ?></span>
                     </a>
                     <br />
                     <span class="inline-block mtop10">
                     <?php echo '<span class="bold">'._d($recurring->date).'</span>'; ?><br />
                     <?php echo format_invoice_status($recurring->status,'',false); ?>
                     </span>
                  </li>
                  <?php } ?>
               </ul>
               <?php } else { ?>
               <p class="bold"><?php echo _l('no_child_found',_l('invoices')); ?></p>
               <?php } ?>
            </div>
            <?php } ?>
            <div role="tabpanel" class="tab-pane" id="tab_emails_tracking">
               <?php
                  $this->load->view('admin/includes/emails_tracking',array(
                     'tracked_emails'=>
                     get_tracked_emails($invoice->id, 'invoice'))
                  );
                  ?>
            </div>
            <div role="tabpanel" class="tab-pane" id="tab_notes">
               <?php echo form_open(admin_url('invoices/add_note/'.$invoice->id),array('id'=>'sales-notes','class'=>'invoice-notes-form')); ?>
               <?php echo render_textarea('description'); ?>
               <div class="text-right">
                  <button type="submit" class="btn btn-info mtop15 mbot15"><?php echo _l('افزودن یادداشت'); ?></button>
               </div>
               <?php echo form_close(); ?>
               <hr />
               <div class="mz-panel mtop20 no-shadow" id="sales_notes_area"></div>
            </div>
            <div role="tabpanel" class="tab-pane ptop10" id="tab_activity">
               <div class="row">
                  <div class="col-md-12">
                     <div class="activity-feed">
                        <?php foreach($activity as $activity){
                           $_custom_data = false;
                           ?>
                        <div class="feed-item" data-sale-activity-id="<?php echo $activity['id']; ?>">
                           <div class="date">
                              <span class="text-has-action" data-toggle="tooltip" data-title="<?php echo _dt($activity['date']); ?>">
                              <?php echo time_ago($activity['date']); ?>
                              </span>
                           </div>
                           <div class="text">
                              <?php if(is_numeric($activity['staffid']) && $activity['staffid'] != 0){ ?>
                              <a href="<?php echo admin_url('profile/'.$activity["staffid"]); ?>">
                              <?php echo staff_profile_image($activity['staffid'],array('staff-profile-xs-image pull-left mright5'));
                                 ?>
                              </a>
                              <?php } ?>
                              <?php
                                 $additional_data = '';
                                 if(!empty($activity['additional_data'])){
                                  $additional_data = unserialize($activity['additional_data']);
                                  $i = 0;
                                  foreach($additional_data as $data){
                                    if(strpos($data,'<original_status>') !== false){
                                      $original_status = get_string_between($data, '<original_status>', '</original_status>');
                                      $additional_data[$i] = format_invoice_status($original_status,'',false);
                                    } else if(strpos($data,'<new_status>') !== false){
                                      $new_status = get_string_between($data, '<new_status>', '</new_status>');
                                      $additional_data[$i] = format_invoice_status($new_status,'',false);
                                    } else if(strpos($data,'<custom_data>') !== false){
                                      $_custom_data = get_string_between($data, '<custom_data>', '</custom_data>');
                                      unset($additional_data[$i]);
                                    }
                                    $i++;
                                  }
                                 }
                                 $_formatted_activity = _l($activity['description'],$additional_data);
                                 if($_custom_data !== false){
                                  $_formatted_activity .= ' - ' .$_custom_data;
                                 }
                                 if(!empty($activity['full_name'])){
                                 $_formatted_activity = $activity['full_name'] . ' - ' . $_formatted_activity;
                                 }
                                 echo $_formatted_activity;
                                 if(is_admin()){
                                 echo '<a href="#" class="pull-right text-danger" onclick="delete_sale_activity('.$activity['id'].'); return false;"><i class="fa fa-remove"></i></a>';
                                 }
                                 ?>
                           </div>
                        </div>
                        <?php } ?>
                     </div>
                  </div>
               </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="tab_views">
               <?php
                  $views_activity = get_views_tracking('invoice',$invoice->id);
                  if(count($views_activity) === 0) {
                     echo '<h4 class="no-mbot">'._l('not_viewed_yet',_l('invoice_lowercase')).'</h4>';
                  }
                  foreach($views_activity as $activity){ ?>
               <p class="text-success no-margin">
                  <?php echo _l('view_date') . ': ' . _dt($activity['date']); ?>
               </p>
               <p class="text-muted">
                  <?php echo _l('view_ip') . ': ' . $activity['view_ip']; ?>
               </p>
               <hr />
               <?php } ?>
            </div>
         </div>
      </div>
   </div>
</div>
<?php $this->load->view('admin/invoices/invoice_send_to_client'); ?>
<?php $this->load->view('admin/credit_notes/apply_invoice_credits'); ?>
<?php $this->load->view('admin/credit_notes/invoice_create_credit_note_confirm'); ?>
<script>
   init_items_sortable(true);
   init_btn_with_tooltips();
   init_datepicker();
   init_selectpicker();
   init_form_reminder();
   init_tabs_scrollable();
   <?php if($record_payment) { ?>
      record_payment(<?php echo $invoice->id; ?>);
   <?php } else if($send_later) { ?>
      schedule_invoice_send(<?php echo $invoice->id; ?>);
   <?php } ?>
</script>
<?php hooks()->do_action('after_invoice_preview_template_rendered', $invoice); ?>
