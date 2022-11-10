<?php

defined('BASEPATH') or exit('No direct script access allowed');

//$hasPermissionEdit   = has_permission('projects', '', 'edit');
//$hasPermissionDelete = has_permission('projects', '', 'delete');
//$hasPermissionCreate = has_permission('projects', '', 'create');

//$aColumns = [
//    db_prefix() . 'projects.id as id',
//    'name',
//    get_sql_select_client_company(),
//    '(SELECT GROUP_CONCAT(name SEPARATOR ",") FROM ' . db_prefix() . 'taggables JOIN ' . db_prefix() . 'tags ON ' . db_prefix() . 'taggables.tag_id = ' . db_prefix() . 'tags.id WHERE rel_id = ' . db_prefix() . 'projects.id and rel_type="project" ORDER by tag_order ASC) as tags',
//    'start_date',
//    'deadline',
//    '(SELECT GROUP_CONCAT(CONCAT(firstname, \' \', lastname) SEPARATOR ",") FROM ' . db_prefix() . 'project_members JOIN ' . db_prefix() . 'staff on ' . db_prefix() . 'staff.staffid = ' . db_prefix() . 'project_members.staff_id WHERE project_id=' . db_prefix() . 'projects.id ORDER BY staff_id) as members',
//    'status',
//];
//
//
//$sIndexColumn = 'id';
//$sTable       = db_prefix() . 'projects';
//
//$join = [
//    'JOIN ' . db_prefix() . 'clients ON ' . db_prefix() . 'clients.userid = ' . db_prefix() . 'projects.clientid',
//];

//$where  = [];
//$filter = [];
//
//if ($clientid != '') {
//    array_push($where, ' AND clientid=' . $this->ci->db->escape_str($clientid));
//}
//
//if (!has_permission('projects', '', 'view') || $this->ci->input->post('my_projects')) {
//    array_push($where, ' AND ' . db_prefix() . 'projects.id IN (SELECT project_id FROM ' . db_prefix() . 'project_members WHERE staff_id=' . get_staff_user_id() . ')');
//}

//$statusIds = [];
//
//foreach ($this->ci->projects_model->get_project_statuses() as $status) {
//    if ($this->ci->input->post('project_status_' . $status['id'])) {
//        array_push($statusIds, $status['id']);
//    }
//}
//
//if (count($statusIds) > 0) {
//    array_push($filter, 'OR status IN (' . implode(', ', $statusIds) . ')');
//}
//
//if (count($filter) > 0) {
//    array_push($where, 'AND (' . prepare_dt_filter($filter) . ')');
//}

//$custom_fields = get_table_custom_fields('projects');
//
//foreach ($custom_fields as $key => $field) {
//    $selectAs = (is_cf_date($field) ? 'date_picker_cvalue_' . $key : 'cvalue_' . $key);
//    array_push($customFieldsColumns, $selectAs);
//    array_push($aColumns, 'ctable_' . $key . '.value as ' . $selectAs);
//    array_push($join, 'LEFT JOIN ' . db_prefix() . 'customfieldsvalues as ctable_' . $key . ' ON ' . db_prefix() . 'projects.id = ctable_' . $key . '.relid AND ctable_' . $key . '.fieldto="' . $field['fieldto'] . '" AND ctable_' . $key . '.fieldid=' . $field['id']);
//}
//
//$aColumns = hooks()->apply_filters('projects_table_sql_columns', $aColumns);
//
//// Fix for big queries. Some hosting have max_join_limit
//if (count($custom_fields) > 4) {
//    @$this->ci->db->query('SET SQL_BIG_SELECTS=1');
//}




















































































$aColumns = [
    db_prefix() . 'itemable.id as id',
    'name',
    'qty',
    'unit',
    'rate',
     db_prefix() . 'itemable.description as item_name',
     db_prefix() . 'itemable.long_description as item_description',
];


$sIndexColumn = 'id';
$sTable       = db_prefix() . 'projects';
$where = [];
if (!empty($this->ci->input->post('project_id'))) {
    array_push($where, ' AND rel_type = "projects" AND '.db_prefix(). 'projects.id=' . $this->ci->input->post('project_id'));
}

//$this->ci->projects_model->check_product_code($this->ci->input->post('project_id'));

/*
'JOIN ' . db_prefix() . 'customfieldsvalues ON ' . db_prefix() . 'customfieldsvalues.relid  = ' . db_prefix() . 'projects.id',
*/

$join = [
    'JOIN ' . db_prefix() . 'itemable ON ' . db_prefix() . 'itemable.rel_id  = ' . db_prefix() . 'projects.id',
];

// [
//    'clientid',
//    '(SELECT GROUP_CONCAT(staff_id SEPARATOR ",") FROM ' . db_prefix() . 'project_members WHERE project_id=' . db_prefix() . 'projects.id ORDER BY staff_id) as members_ids',
//]

$result = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where);
//$this->ci->input->post('project_id')
$output  = $result['output'];
$rResult = $result['rResult'];














$i=1;
foreach ($rResult as $aRow) {
    $row = [];
    $row[] = '<a href="' . admin_url('warehouse/view_commodity_detail/' . $aRow['id']) . '">' . $i++ . '</a>';

    $row[] = $aRow['item_name'];
    $row[] = '<span>'.$aRow['item_description'].'</span>'.'----'.$this->ci->input->post('project_id');


    $row[] = '<span>'.round($aRow['qty']).' '.$aRow['unit'].'</span>';
    $row[] = '<span>'.number_format($aRow['rate']).'</span>';
    $row[] = '<span>'.number_format($aRow['rate']*$aRow['qty']).'</span>';
    $javascriptInputs = $aRow['id'].",'".$aRow['item_name']."'";
    $row[] = '<span style="color: #03a9f4; cursor: pointer;" onclick="showUpdate('.$javascriptInputs.')"><i class="fa fa-plus"></i></span>';


   // $row[]  = '22';

   // $row['DT_RowClass'] = 'has-row-options';
    //$row = hooks()->apply_filters('projects_table_row_data', $row, $aRow);
    $output['aaData'][] = $row;
}






















































































//$output  = '2';
//$rResult = $this->ci->projects_model->get_mz_project($this->ci->input->post('project_id'));


//$output = [
//    'draw'                 => 1,
//    'iTotalRecords'        => 2,
//    'iTotalDisplayRecords' => 3,
//    'aaData'               => [],
//];




//$r = array(
//    array (
//        'id' => '89',
//        'rel_id' => '245646',
//        'rel_type' => 'projects',
//        'description' => 'الکتروموتور تستی',
//        'long_description' => '666',
//        'qty' => '3.00',
//        'rate' => '108000.00',
//        'unit' => 'تعداد',
//        'item_order' => '2',
//        'wh_delivered_quantity' => '0.00',
//    ),
//    array (
//        'id' => '89',
//        'rel_id' => '245646',
//        'rel_type' => 'projects',
//        'description' => 'الکتروموتور تستی',
//        'long_description' => '666',
//        'qty' => '3.00',
//        'rate' => '108000.00',
//        'unit' => 'تعداد',
//        'item_order' => '2',
//        'wh_delivered_quantity' => '0.00',
//    )
//);
//
//
//
//
//foreach ($r as $aRow) {
//    $row = [];
//
//    $link = admin_url('projects/view/' . $aRow['id']);
//
//    $row[] = '<a href="' . $link . '">' . $aRow['id'] . '</a>';
//    $row[] = '<span>'.$aRow['description'].'</span>';
//    $row[] = '<span>'.$aRow['long_description'].'</span>';
//    $row[] = '...';
//    $row[] = '<span>'.$aRow['qty'].'</span> <span>'.$aRow['unit'].'</span>';
//    $row[] = '<span>'.$aRow['rate'].'</span>';
//    $row[] = '<span>'.number_format($aRow['rate']*$aRow['qty']).'</span>';
//
//    $output['aaData'][] = $row;
//}


















