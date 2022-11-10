<?php defined('BASEPATH') or exit('No direct script access allowed');

render_datatable([
    _l('شماره پرداخت'),
    _l('شماره فاکتور'),
    _l('روش پرداخت'),
    _l('شناسه تراکنش'),
    [
        'name'     => _l('مشتری'),
        'th_attrs' => ['class' => (isset($client) ? 'not_visible' : '')],
    ],
    _l('مبلغ'),
    _l('تاریخ'),
], (isset($class) ? $class : 'payments'), [], [
    'data-last-order-identifier' => 'payments',
    'data-default-order'         => get_table_last_order('payments'),
]);
