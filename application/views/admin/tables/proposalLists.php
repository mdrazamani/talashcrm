<?php
defined('BASEPATH') or exit('No direct script access allowed');

//$this->ci->load->model('projects_model');
//
//$aColumns = [
//    'id',
//    'rel_id',
//    'rel_type',
//    'description',
//    'long_description',
//    'qty',
//    'rate',
//    'unit',
//    'item_order',
//    //'(SELECT GROUP_CONCAT(lastname SEPARATOR ",") FROM ' . db_prefix() . 'leads JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'leads.assigned = ' . db_prefix() . 'staff.staffid WHERE id = ' . db_prefix() . 'leads.id ORDER BY id) as lastname_a'
//];
//
//$sIndexColumn = 'id';
//$sTable       = db_prefix() . 'itemable';
//$where = [
//    'AND rel_type = "projects"',
//    'AND rel_id  = "'.$project_id.'"'
//];
//
//$join = [
//    'JOIN ' . db_prefix() . 'project_items_details ON ' . db_prefix() . 'project_items_details.itemId = ' . db_prefix() . 'itemable.rel_id'
//];
//
//
//
//
////$join = [
////    'JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid  = ' . db_prefix() . 'leads.addedfrom',
//// //   'JOIN n2' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid  = ' . db_prefix() . 'leads.assigned',
////];
//
//
//
//$result = data_tables_init($aColumns, $sIndexColumn, $sTable, '', $where);
////$this->ci->input->post('lead_id')
//$output  = $result['output'];
//$rResult = $result['rResult'];
//
//$i=0;
//foreach ($rResult as $aRow) {
//
//    $item_details_Main = $this->ci->projects_model->item_details_Main($aRow['id']);
//    $item_details_jagoin_ha = $this->ci->projects_model->item_details_jagoin_ha($aRow['id']);
//    $count_item_dahkeli = $this->ci->projects_model->count_item_details_id_get_mz($project_id, $aRow['id'], 'dakheli');
//    $count_item_kharegi = $this->ci->projects_model->count_item_details_id_get_mz($project_id, $aRow['id'], 'kharegi');
//    $count_item_forosh = $this->ci->projects_model->count_item_details_id_get_mz($project_id, $aRow['id'], 'forosh');
//
//    $start = "'start'";
//    $end = "'end'";
//
//    $row = [];
//    $row[] = '<span>' . ($i + 1) . '</span>';
//    $javascriptInput = $aRow['id'].",'".$aRow['description']."'";
//
//    $row[] = '
//    <span onclick="showModal('.$javascriptInput.')" id="showDetails_' . $i . '"><i class="fa fa-plus" style="color: #84c529; cursor: pointer; font-size: 17px;"></i></span>
//    ';
//    $row[] = '
//    <span onclick="showModal('.$javascriptInput.')" id="showDetails_' . $i . '"><i class="fa fa-plus" style="color: #84c529; cursor: pointer; font-size: 17px;"></i></span>
//    ';
//
//    $row[] = '<span>' . $aRow['description'] . '</span>';
//    $row[] = '<span>' . round($aRow['qty']) .' ' .$aRow['unit']. '</span>';
//    $row[] = '<span> '.$count_item_kharegi.' </span>';
//    $row[] = '<span> '.$count_item_dahkeli.' </span>';
//    $row[] = '<span> '.$count_item_forosh.' </span>';
//
//    $endPriceStr = $aRow['endPriceStr'];
//
//    $row[] = '<span> '.$endPriceStr.' </span>';
//    $row[] = '<span> انتخاب نشده! </span>';
//    $row[] = '<span> انتخاب نشده! </span>';
//
//
//
//    $output['aaData'][] = $row;
//    $i++;
//}



//----------------------------------- new

$this->ci->load->model('projects_model');

$aColumns = [
    'id',
    'itemId',
    'parent_id',
    'projectId',
    'addDate',
    'addedfrom',
    'product_name',
    'productNumber',
    'productBrand',
    'productCountry',
    'vazn',
    'tol',
    'arz',
    'ertefa',
    'mainDesc',
    'main_details',
    'endPriceStr',
    //'(SELECT GROUP_CONCAT(lastname SEPARATOR ",") FROM ' . db_prefix() . 'leads JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'leads.assigned = ' . db_prefix() . 'staff.staffid WHERE id = ' . db_prefix() . 'leads.id ORDER BY id) as lastname_a'
];

$sIndexColumn = 'id';
$sTable       = db_prefix() . 'project_items_details';
$where = [
    'AND projectId  = "'.$project_id.'"'
];

$result = data_tables_init($aColumns, $sIndexColumn, $sTable, '', $where);
//$this->ci->input->post('lead_id')
$output  = $result['output'];
$rResult = $result['rResult'];

$i=0;
$mainArray = [];
foreach ($rResult as $aRow) {

    $bazaganis = $this->ci->projects_model->get_bazarganis($aRow['id'], $_SESSION['staff_user_id']);

    if($bazaganis == true){
        $mainArray[] = array(
            'itemDetails' => $aRow,
            //'itemBazarganis' => $bazaganis
        );
//        $mainArray[]['itemBazarganis'] = $bazaganis;
//        $mainArray[]['itemBazarganis']['itemDetails'] = $aRow['id'];
    }
}

foreach ($mainArray as $aRow) {
    $endPriceStr = unserialize($aRow['itemDetails']['endPriceStr']);
    $staff = $this->ci->projects_model->get_mz_staff($endPriceStr['addedfrom']);
    $item_details_Main = $this->ci->projects_model->item_details_Main($aRow['itemDetails']['itemId']);
    $item_details_jagoin_ha = $this->ci->projects_model->item_details_jagoin_ha($aRow['itemDetails']['itemId']);
    $count_item_dahkeli = $this->ci->projects_model->count_item_details_id_get_mz($project_id, $aRow['itemDetails']['itemId'], 'dakheli');
    $count_item_kharegi = $this->ci->projects_model->count_item_details_id_get_mz($project_id, $aRow['itemDetails']['itemId'], 'kharegi');
    $count_item_forosh = $this->ci->projects_model->count_item_details_id_get_mz($project_id, $aRow['itemDetails']['itemId'], 'forosh');

    //foreach($aRow['itemBazarganis'] as $aRow2){

        $row = [];
        $row[] = '<span>' . ($i + 1) . '</span>';
        $javascriptInput = $aRow['itemDetails']['itemId'].",'".$aRow['itemDetails']['product_name']."'";

        $row[] = '
        <span onclick="showModal('.$javascriptInput.')" id="showDetails_' . $i . '"><i class="fa fa-plus" style="color: #84c529; cursor: pointer; font-size: 17px;"></i></span>
        ';
        $row[] = '
        <span onclick="showModal('.$javascriptInput.')" id="showDetails_' . $i . '"><i class="fa fa-plus" style="color: #84c529; cursor: pointer; font-size: 17px;"></i></span>
        ';

        $row[] = '<span>' . $aRow['itemDetails']['product_name'] . '</span>';

        $jagozon = ($aRow['itemDetails']['parent_id'] == 0) ? '<i class="fa fa-remove" style="color: #cf0318;  font-size: 17px;"></i>' : '<i class="fa fa-check" style="color: #84c529; font-size: 17px;"></i>';
        $row[] = '<span>' . $jagozon . '</span>';
        $row[] = '<span>' . round($endPriceStr['qty']) .' ' .$endPriceStr['unit']. '</span>';
        $row[] = '<span> '.$count_item_kharegi.' </span>';
        $row[] = '<span> '.$count_item_dahkeli.' </span>';
        $row[] = '<span> '.$count_item_forosh.' </span>';

        $row[] = '<span> '.$staff->firstname.' '.$staff->lastname.' </span>';
        $row[] = '<span> '.jdate("Y/m/d - g:i:s",$endPriceStr['date']).' </span>';
        $row[] = '<span> '.number_format(($endPriceStr['allPrice']+$endPriceStr['hamlPrice'])*3).' </span>';
        $row[] = '<span> '.number_format($endPriceStr['endPrice']).' </span>';
        $row[] = '<span> '.number_format($endPriceStr['endPrice']-(($endPriceStr['allPrice']+$endPriceStr['hamlPrice'])*3)).' (%'.$endPriceStr['persentPrice'].') </span>';

//        $row[] = ($i + 1);
//        $row[] = $aRow['itemDetails']['id'];
//        $row[] = $aRow2['sell_price'];
//        $row[] = '';
//        $row[] = '';
//        $row[] = '';
//        $row[] = '';
//        $row[] = '';
//        $row[] = '';
//        $row[] = '';
//        $row[] = '';


        $output['aaData'][] = $row;
        $i++;
    //}
}