<?php defined('BASEPATH') or exit('No direct script access allowed');

$table_data = [
   _l('the_number_sign'),
   _l('عنوان پروژه'),
    [
         'name'     => _l('مشتری'),
         'th_attrs' => ['class' => isset($client) ? 'not_visible' : ''],
    ],
   _l('برچسب ها'),
   _l('تاریخ شروع'),
   _l('مرز پایان'),
   _l('کارمندان'),
   _l('وضعیت'),
];

$custom_fields = get_custom_fields('projects', ['show_on_table' => 1]);
foreach ($custom_fields as $field) {
    array_push($table_data, $field['name']);
}

$table_data = hooks()->apply_filters('projects_table_columns', $table_data);

render_datatable($table_data, isset($class) ?  $class : 'projects', [], [
  'data-last-order-identifier' => 'projects',
  'data-default-order'  => get_table_last_order('projects'),
]);
