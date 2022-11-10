<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="modal fade proposal-convert-modal" id="convert_to_invoice" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-xxl" role="document">
        <?php echo form_open('admin/proposals/convert_to_invoice/'.$proposal->id,array('id'=>'proposal_convert_to_invoice_form','class'=>'_transaction_form invoice-form')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" onclick="close_modal_manually('#convert_to_invoice')" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    <span class="edit-title"><?php echo _l('تبدیل "'.$proposal->subject.'" به فاکتور'); ?></span>
                </h4>
            </div>
            <div class="modal-body">

                <?php //var_dump($myAdd);?>
                <?php //var_dump($add_items);?>
                <?php //var_dump($proposal->items);?>

                <div class="row">
                    <div class="<?php echo (!empty($pishPayments)) ? 'col-md-8' : 'col-md-12'; ?>">
                        <?php $this->load->view('admin/invoices/invoice_template'); ?>
                    </div>
                    <?php if(!empty($pishPayments)){?>
                    <div class="col-md-4">
                        <div class="mz-panel">
                            <div class="mz-panel-header">
                                <span class="dash-micon"><i class="my-ti ti ti-license"></i></span>
                                <span class="dash-mtext">تبدیل پیش پرداخت ها</span>
                            </div>
                            <div class="mz-panel-body">
                                <!-- -->
                                <div class="panel_s no-shadow">

                                    <div class="checkbox checkbox-danger">
                                        <input type="checkbox" id="cancel_overdue_reminders" name="cancel_overdue_reminders">
                                        <label for="cancel_overdue_reminders">تبدیل تمام پیش پرداخت ها</label>
                                    </div>

                                    <table class="table table-hover no-mtop">
                                        <thead>
                                        <tr>
                                            <th><span class="bold">#</span></th>
                                            <th><span class="bold">تبدیل</span></th>
                                            <th><span class="bold">مبلغ</span></th>
                                            <th><span class="bold">تاریخ</span></th>
                                            <th><span class="bold">روش پیش پرداخت</span></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                        $ij=1;
                                        foreach($pishPayments as $pey){?>
                                        <tr class="payment">
                                            <td><?php echo $ij;?></td>
                                            <td>
                                                <div class="checkbox checkbox-danger">
                                                    <input type="checkbox" id="cancel_overdue_reminders<?php echo $ij;?>" name="cancel_overdue_reminders">
                                                    <label for="cancel_overdue_reminders<?php echo $ij++;?>"></label>
                                                </div>
                                            </td>
                                            <td><?php echo app_format_money($pey['amount'], $proposal->currency_name);?></td>
                                            <td><?php echo _d($pey["date"]);?></td>
                                            <td><?php echo $pey["name"];?></td>
                                        </tr>
                                        <?php }?>
                                        </tbody>
                                    </table>

                                </div>
                                <!-- -->
                                <?php //foreach($pishPayments as $pey){
                                    //echo $pey;
                                //}?>
                            </div>
                        </div>
                    </div>
                    <?php }?>
                </div>
            </div>

            <div class="modal-footer">
                <button class="btn btn-default invoice-form-submit save-as-draft transaction-submit">
                    <?php echo _l('save_as_draft'); ?>
                </button>
                <button class="btn btn-info invoice-form-submit transaction-submit">
                    <?php echo _l('submit'); ?>
                </button>
            </div>
        </div>
        <?php echo form_close(); ?>
    </div>
</div>
<?php $this->load->view('admin/invoice_items/item'); ?>
<script>
    init_ajax_search('customer','#clientid.ajax-search');
    init_ajax_search('items','#item_select.ajax-search',undefined,admin_url+'items/search');
    custom_fields_hyperlink();
    init_selectpicker();
    init_tags_inputs();
    init_datepicker();
    init_color_pickers();
    init_items_sortable();
    validate_invoice_form('#proposal_convert_to_invoice_form');
    <?php if($proposal->assigned != 0){ ?>
     $('#convert_to_invoice #sale_agent').selectpicker('val',<?php echo $proposal->assigned; ?>);
    <?php } ?>
    $('select[name="discount_type"]').selectpicker('val','<?php echo $proposal->discount_type; ?>');
    $('input[name="discount_percent"]').val('<?php echo $proposal->discount_percent; ?>');
    $('input[name="discount_total"]').val('<?php echo $proposal->discount_total; ?>');
    <?php if(is_sale_discount($proposal,'fixed')) { ?>
        $('.discount-total-type.discount-type-fixed').click();
    <?php } ?>
    $('input[name="adjustment"]').val('<?php echo $proposal->adjustment; ?>');
    $('input[name="show_quantity_as"][value="<?php echo $proposal->show_quantity_as; ?>"]').prop('checked',true).change();
    <?php if (!isset($project_id)) { ?>
        $('#convert_to_invoice #clientid').change();
    <?php } else { ?>
        init_ajax_project_search_by_customer_id('select#project_id')
    <?php } ?>
    // Trigger item select width fix
    $('#convert_to_invoice').on('shown.bs.modal', function(){
        $('#item_select').trigger('change')
    })
</script>
