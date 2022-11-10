<?php
defined('BASEPATH') or exit('No direct script access allowed');

$this->ci->load->model('projects_model');

$aColumns = [
    'bazargani_id as id',
    'bazargani_item_id as item',
    'sell_price as price',
    'currency_type as currency',
    'vendor_id as vendor',
    'added_from as added',
    'added_date as date',
    'builder_country as builder',
    'city_builder',
    'pay_type',
    'contact_id',
    'hs_code',
    'gomrok_price',
    'tarkhis_price',
    'taedee_ha',
    'hamlo_naghl',
    'description',
    'bazargani_type',
    'faniproposal',
    'showCode',
    'sends',
    //'(SELECT GROUP_CONCAT(lastname SEPARATOR ",") FROM ' . db_prefix() . 'leads JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'leads.assigned = ' . db_prefix() . 'staff.staffid WHERE id = ' . db_prefix() . 'leads.id ORDER BY id) as lastname_a'
];

$sIndexColumn = 'bazargani_id';
$sTable       = db_prefix() . 'mz_bazargani';
$where = [];
array_push($where, ' AND bazargani_project_id = "'.$project_id.'"');
array_push($where, ' AND bazargani_type = "'.$type.'"');
array_push($where, ' AND base_route = "'.$id.'"');


//$join = [
//    'JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid  = ' . db_prefix() . 'leads.addedfrom',
// //   'JOIN n2' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid  = ' . db_prefix() . 'leads.assigned',
//];



$result = data_tables_init($aColumns, $sIndexColumn, $sTable, '', $where);
//$this->ci->input->post('lead_id')
$output  = $result['output'];
$rResult = $result['rResult'];

$i=0;
foreach ($rResult as $aRow) {

    $staff = $this->ci->projects_model->get_mz_staff($aRow['added']);
    $vondor = $this->ci->projects_model->get_mz_vondor($aRow['vendor']);
//    $contact = $this->ci->projects_model->get_mz_contact($aRow['contact_id']);
//    $details = $this->ci->projects_model->item_details_id($aRow['item']);


    $row = [];
    $row[] = '<a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$aRow['item'].'&initialID='.$aRow['id'].'">' . ($i + 1) . '</a>';
    $row[] = '<a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$aRow['item'].'&initialID='.$aRow['id'].'">' . $aRow['showCode'] . '</a>';
    $row[] = '<span>'.number_format($aRow['price']).'</span>';
    $row[] = '';
    $row[] = '<span>'.$vondor->company.'</span>';
    $row[] = '<span>'.$staff->firstname. ' '. $staff->lastname .'</span>';
    $row[] = '<span>'.jdate('Y/m/d - g:i:s',$aRow['date']).'</span>';

    $output['aaData'][] = $row;
    $i++;
}