<?php //mz
defined('BASEPATH') or exit('No direct script access allowed'); ?>
        <?php //echo form_open(admin_url('invoices/record_payment'),array('id'=>'record_payment_form')); ?>
        <?php //echo form_hidden('invoiceid',$invoice->id); ?>
            <div class="row">
                <div class="col-md-6">
                    <?php
                    $totalPish=0;
                    $totalMondePish=0;
                    if($pishPayments) {
                        foreach ($pishPayments as $pish) {
                            $totalPish += $pish["amount"];
                        }
                    }
                    $totalMondePish = $totalPish ? $proposal->total-$totalPish : $proposal->total;

                    echo render_input('amount','مبلغ دریافتی',$totalMondePish,'number',array('max'=>$totalMondePish,'min'=>'1')); ?>
                    <?php echo render_date_input('date','تاریخ پیش پرداخت',_d(date('Y-m-d'))); ?>
                    <div class="form-group">
                        <label for="paymentmode" class="control-label"><?php echo _l('روش پیش پرداخت'); ?></label>
                        <select class="selectpicker" id="paymentmode" name="paymentmode" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                            <option value="2">کارت به کارت</option>
                            <?php foreach($payment_modes as $mode){ ?>
                            <option value="<?php echo $mode['id']; ?>"><?php echo $mode['name']; ?></option>
                            <?php  } ?>
                        </select>
                    </div>
                    <?php
                    //if($totalAllowed === 0) {
                        ?>
<!--                        <div class="alert alert-info">-->
<!--                            Allowed payment modes not found for this invoice.<br />-->
<!--                            Click <a href="--><?php ////echo admin_url('invoices/invoice/'.$invoice->id.'?allowed_payment_modes=1'); ?><!--">here</a> to edit the invoice and allow payment modes.-->
<!--                        </div>-->
                        <?php
                  //  }
                   // $pr_template = is_email_template_active('invoice-payment-recorded');
                   // $sms_trigger = is_sms_trigger_active(SMS_TRIGGER_PAYMENT_RECORDED);
                   // if($pr_template || $sms_trigger){ ?>
<!--                    <div class="checkbox checkbox-primary mtop15 inline-block">-->
<!--                        <input type="checkbox" name="do_not_send_email_template" id="do_not_send_email_template">-->
<!--                        <label for="do_not_send_email_template">-->
<!--                            --><?php
//                            //if($pr_template){
//                                echo _l('ایمیل ثبت شده پرداخت فاکتور را به مخاطبین مشتری ارسال نکنید');
//                            //    if($sms_trigger) {
//                            //        echo '/';
//                            //    }
//                            //}
//                            //if($sms_trigger) {
//                                echo _l('اس ام اس ثبت شده پرداخت فاکتور را به مخاطبین مشتری ارسال نکنید');
//                            //}
//                            ?>
<!--                            </label>-->
<!--                    </div>-->
                    <?php //} ?>
                    <div class="checkbox checkbox-primary mtop15 do_not_redirect hide inline-block">
                        <input type="checkbox" name="do_not_redirect" id="do_not_redirect" checked>
                        <label for="do_not_redirect"><?php echo _l('do_not_redirect_payment'); ?></label>
                    </div>

                </div>
                <div class="col-md-6">
                    <?php echo render_input('transactionid','شناسه تراکنش'); ?>
                       <div class="form-gruoup">
                            <label for="note" class="control-label"><?php echo _l('یادداشت پیش پرداخت'); ?></label>
                            <textarea name="note" class="form-control" rows="8" placeholder="<?php echo _l('یادداشت مدیر'); ?>" id="note"></textarea>
                        </div>
                </div>
            </div>


        <?php //echo form_close(); ?>








<script>
 //   $(function(){
 //     init_selectpicker();
 //     init_datepicker();
 //     appValidateForm($('#record_payment_form'),{amount:'required',date:'required',paymentmode:'required'});
 //     var $sMode = $('select[name="paymentmode"]');
 //     var total_available_payment_modes = $sMode.find('option').length - 1;
 //     if(total_available_payment_modes == 1) {
 //        $sMode.selectpicker('val',$sMode.find('option').eq(1).attr('value'));
 //        $sMode.trigger('change');
 //     }
 // });
</script>
