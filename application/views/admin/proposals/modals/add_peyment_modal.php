<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- Client send file modal -->
<div class="modal fade <?php if(!empty($proposalsId)){echo 'in';}?>" id="add_peyment_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><?php echo _l('افزودن پیش پرداخت برای پیش فاکتوره').' '.format_proposal_number($proposal->id); ?></h4>
            </div>
            <?php
   //
            ?>
            <?php echo form_open('admin/proposals/addPishPeyment',array('id'=>'add_pish_peyment'));?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <?php $this->load->view('admin/proposals/record_peyment_p'); ?>
                        <?php echo form_hidden('proposal',$proposal->id); ?>

                        <?php if($pishPayments){ ?>
                            <div class="mtop25 inline-block full-width">
                                <h5 class="bold"><?php echo _l('مبالغ پیش پرداختی دریافت شده'); ?></h5>
                                <?php //var_dump($pishPayments); APPPATH ?>
                                <?php
                                $this->load->view('admin/proposals/peyment_table'); ?>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('انصراف'); ?></button>
                <button type="submit" class="btn btn-info"><?php echo _l('افزودن'); ?></button>
            </div>
            <?php echo form_close();?>


<script>
                //let data = [];

                <?php
//                    for($i=1; $i<count($pishPayments)+1; $i++){
//                        echo '
//                                var e'.$proposal->id.'_'.$i.' = document.getElementById("edit_'.$proposal->id.'_'.$i.'");
//                                e'.$proposal->id.'_'.$i.'.addEventListener("click",()=>{
//
//                                    var amount_'.$proposal->id.'_'.$i.' = document.getElementById("amount_'.$proposal->id.'_'.$i.'");
//                                    var note_'.$proposal->id.'_'.$i.' = document.getElementById("note_'.$proposal->id.'_'.$i.'");
//                                    var paymentmode_'.$proposal->id.'_'.$i.' = document.getElementById("paymentmode_'.$proposal->id.'_'.$i.'");
//                                    var transactionid_'.$proposal->id.'_'.$i.' = document.getElementById("transactionid_'.$proposal->id.'_'.$i.'");
//
//                                    data["amount"] = amount_'.$proposal->id.'_'.$i.'.value;
//                                    data["note"] = note_'.$proposal->id.'_'.$i.'.value;
//                                    data["paymentmode"] = paymentmode_'.$proposal->id.'_'.$i.'.value;
//                                    data["transactionid"] = transactionid_'.$proposal->id.'_'.$i.'.value;
//
//                                    console.log(data);
//                                 });
//                            ';
//                    }
                ?>
            </script>

        </div>
    </div>
</div>