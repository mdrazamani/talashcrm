<?php //mz
//defined('BASEPATH') or exit('No direct script access allowed');

//var_dump($pishPayments);
//$proposal->payments
?>
<div class="table-responsive">
    <table class="table table-hover no-mtop">
        <thead>
            <tr>
                <th><span class="bold"><?php echo _l('پیش پرداخت'); ?></span></th>
                <th><span class="bold"><?php echo _l('روش پیش پرداخت'); ?></span></th>
                <th><span class="bold"><?php echo _l('تاریخ'); ?></span></th>
                <th><span class="bold"><?php echo _l('مبلغ'); ?></span></th>
                <th><span class="bold"><?php echo _l('گزینه ها'); ?></span></th>
            </tr>
        </thead>
        <tbody>
            <?php
            $i = 1;
            foreach($pishPayments as $payment){?>
            <tr class="payment">
                <td><?php echo $i; ?>#
                    <?php echo icon_btn('payments/pdf/' . $payment['paymentid'], 'file-pdf-o','btn-default pull-right'); ?>
                </td>
                <td><?php echo $payment['name']; ?>
                    <?php if(!empty($payment['paymentmethod'])){
                        echo ' - ' . $payment['paymentmethod'];
                    }
                    if($payment['transactionid']){
                        echo '<br />'._l('شناسه تراکنش: ').$payment['transactionid'];
                    }
                    ?>
                </td>
                <td><?php echo _d($payment['date']); ?></td>
                <td><?php echo app_format_money($payment['amount'], $proposal->currency_name); ?></td>
                <td>
                    <a href="?editPeyment=<?php echo $payment['pid'];?>#<?php echo $proposal->id;?>" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a>
                    <?php if(has_permission('payments','','delete')){ ?>
                    <a href="#" class="btn btn-danger btn-icon _delete"><i class="fa fa-remove"></i></a>
                    <?php } ?>
                </td>
            </tr>
            <?php $i++; } ?>
        </tbody>
    </table>
</div>