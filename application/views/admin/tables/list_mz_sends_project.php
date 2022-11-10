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
    'pay_type',
    'contact_id',
    'hs_code',
    'gomrok_price',
    'tarkhis_price',
    'taedee_ha',
    'hamlo_naghl',
    'description',
    'sends',
    //'(SELECT GROUP_CONCAT(lastname SEPARATOR ",") FROM ' . db_prefix() . 'leads JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'leads.assigned = ' . db_prefix() . 'staff.staffid WHERE id = ' . db_prefix() . 'leads.id ORDER BY id) as lastname_a'
];

$sIndexColumn = 'bazargani_id';
$sTable       = db_prefix() . 'mz_bazargani';
$where = [];
array_push($where, ' AND bazargani_type = "bazargani_dakheli"');

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
    $contact = $this->ci->projects_model->get_mz_contact($aRow['contact_id']);

    $pay_type = '';
    switch ($aRow['pay_type']) {
        case 0:
            $pay_type = 'نقدی';
            break;
        case 1:
            $pay_type = 'حواله';
            break;
        case 2:
            $pay_type = 'کارت به کارت';
            break;
    }

    $nahveTarkhis = '';
    switch ($aRow['pay_type']) {
        case 0:
            $nahveTarkhis = 'ثبت سفارش';
            break;
        case 1:
            $nahveTarkhis = 'آزاد';
            break;
        case 2:
            $nahveTarkhis = 'از طریق دوست';
            break;
    }

    $taedee_ha = unserialize($aRow['taedee_ha']);

    $T1 = ($taedee_ha[0] == 1) ? 'بله' : 'خیر';
    $T2 = ($taedee_ha[1] == 1) ? 'بله' : 'خیر';
    $T3 = ($taedee_ha[2] == 1) ? 'بله' : 'خیر';
    $T4 = ($taedee_ha[3] == 1) ? 'بله' : 'خیر';

    $start = "'start'";
    $end = "'end'";

    $row = [];
    $row[] = '
    <span onclick="show(' . $i . ','.$start.')" id="showDetails_' . $i . '"><i class="fa fa-plus" style="color: #84c529; cursor: pointer; font-size: 17px;"></i></span>
    <span onclick="show(' . $i . ','.$end.')" id="notShowDetails_' . $i . '" style="display: none;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
    ';

    $row[] = '<span>' . ($i + 1) . '</span>';
    $row[] = '<span>' . $aRow['item'] . '</span>';
    $row[] = '<span>' . number_format($aRow['price']) . '</span>';

    $currency = '';
    switch ($aRow['currency']) {
        case 0:
            $currency = 'ریال';
            break;
        case 1:
            $currency = 'دلار آمریکا';
            break;
        case 2:
            $currency = 'یورو';
            break;
        case 3:
            $currency = 'پوند';
            break;
        case 4:
            $currency = 'دلار سنگاپور';
            break;
    }

    $row[] = '<span>' . $currency . '</span>';

    $row[] = '<span>' . $vondor->company . '</span>';
    $row[] = '<span>' . $staff->firstname . ' ' . $staff->lastname . '</span>';
    $row[] = '<span>' . _jdt($aRow["date"]) . '</span>';



    $sends = unserialize($aRow['sends']);

    $styleSendHtml = 'color: #84c529;';
    if($sends == false || empty($sends)){
        $styleSendHtml = '';
    }

    $row[] = '<span onclick="showPm('.$aRow['id'].')" class="btn-black" style="cursor: pointer; width: 15px; '.$styleSendHtml.' "><i class="fa fa-send"></i></span>';


    // $row[]  = '22';

    // $row['DT_RowClass'] = 'has-row-options';
    //$row = hooks()->apply_filters('projects_table_row_data', $row, $aRow);


    //$rowTwo['DT_RowClass'] = 'hello';

    $sendModels = '';
    $j = 1;
    $height = 0;
    foreach (unserialize($aRow['hamlo_naghl']) as $itemHaml) {



        $hamlType = '';
        switch ($itemHaml['typehaml']) {
            case 0:
                $hamlType = 'هوایی';
                break;
            case 1:
                $hamlType = 'دریایی';
                break;
            case 2:
                $hamlType = 'زمینی';
                break;
            case 3:
                $hamlType = 'مسافر';
                break;
        }


        $currency = '';
        switch ($aRow['typeCurrency']) {
            case 0:
                $currency = 'ریال';
                break;
            case 1:
                $currency = 'دلار آمریکا';
                break;
            case 2:
                $currency = 'یورو';
                break;
            case 3:
                $currency = 'پوند';
                break;
            case 4:
                $currency = 'دلار سنگاپور';
                break;
        }

        $zaman1 = '';
        switch ($itemHaml['timehamlVahed']) {
            case 0:
                $zaman1 = 'ساعت';
                break;
            case 1:
                $zaman1 = 'روز';
                break;
            case 2:
                $zaman1 = 'هفته';
                break;
            case 3:
                $zaman1 = 'ماه';
                break;
            case 4:
                $zaman1 = 'سال';
                break;
        }

        $zaman2 = '';
        switch ($itemHaml['timetahvilVahed']) {
            case 0:
                $zaman2 = 'ساعت';
                break;
            case 1:
                $zaman2 = 'روز';
                break;
            case 2:
                $zaman2 = 'هفته';
                break;
            case 3:
                $zaman2 = 'ماه';
                break;
            case 4:
                $zaman2 = 'سال';
                break;
        }


        $sendModels .= '
<div class="mz-panel">
<div class="mz-panel-header">
    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
    <span class="dash-mtext"> حمل شماره -' . $j++ . ' </span>
</div>
<div class="mz-panel-body">

<div class="row" style="text-align: center; padding-top: 20px;">
              
                <div class="col-md-4">
                    <div class="form-control">
                        <span class="key"> هزینه حمل:</span> 
                        <span class="value">' . $itemHaml['cost'] . '</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-control">
                        <span class="key"> نوع ارز :</span> 
                        <span class="value">' . $currency . '</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-control">
                        <span class="key"> روش حمل:</span> 
                        <span class="value">' . $hamlType . '</span>
                    </div>    
                </div>
            </div>
            
            <div class="row" style="text-align: center; padding-top: 20px;">
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key"> زمان حمل :</span> 
                        <span class="value">' . $itemHaml['timehaml'] . '</span>
                    </div>    
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key"> واحد زمان :</span> 
                        <span class="value">' . $zaman1 . '</span>
                    </div>    
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key"> زمان تحویل در مبدا:</span> 
                        <span class="value">' . $itemHaml['timetahvil'] . '</span>
                    </div>    
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key"> واحد زمان:</span> 
                        <span class="value">' . $zaman2 . '</span>
                    </div>    
                </div>
            </div>
            </div>
            </div>
            ';
        $height += 240;
    }


    $rowTwo = [];
    $rowTwo[] = '<div style="position:absolute; right: 30px; left: 30px; display: none; transition: all .4s ease 0s;" id="showMain_' . $i . '">
        <div style="position: relative; background: #f8f9fd; padding: 15px; border-radius: 5px;">
            <div class="row" style="text-align: center;">
                <div class="col-md-6">
                    <div class="form-control">
                        <span class="key">کشور سازنده:</span> 
                        <span class="value">' . $aRow['builder'] . '</span>
                    </div>    
                </div>
                <div class="col-md-6">
                    <div class="form-control">
                        <span class="key"> شیوه پرداخت:</span> 
                        <span class="value">' . $pay_type . '</span>
                    </div>    
                </div>
            </div>
            
            <div class="row" style="text-align: center; padding-top: 20px;">
                <div class="col-md-6">
                    <div class="form-control">
                        <span class="key"> فروشنده:</span> 
                        <span class="value">' . $vondor->company . '</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-control">
                        <span class="key">  مخاطب مربوطه:</span> 
                        <span class="value">' . $contact->firstname . ' ' . $contact->lastname . '</span>
                    </div>
                </div>
            </div>
            
            <div class="row" style="text-align: center; padding-top: 20px;">
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key"> نحوه ترخیص:</span> 
                        <span class="value">' . $nahveTarkhis . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key">   HS code:</span> 
                        <span class="value">' . $aRow['hs_code'] . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key">  حقوق گمرکی:</span> 
                        <span class="value">' . $aRow['gomrok_price'] . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key">  هزینه ترخیص:</span> 
                        <span class="value">' . $aRow['tarkhis_price'] . '</span>
                    </div>
                </div>
            </div>
            
            
            
            <div class="row" style="text-align: center; padding-top: 20px;">
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key"> دقیقا مشابه درخواست است:</span> 
                        <span class="value">' . $T1 . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key">   امکان ارسال مدارک فنی دارد:</span> 
                        <span class="value">' . $T2 . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key">  گواهی اصالت:</span> 
                        <span class="value">' . $T3 . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-control">
                        <span class="key">  test report:</span> 
                        <span class="value">' . $T4 . '</span>
                    </div>
                </div>
            </div>
            
            <hr class="hr-panel-heading">
            
            ' . $sendModels . '
            
            <hr class="hr-panel-heading">
            
            <div class="row" style="text-align: center; padding-top: 20px;">
            
                <div class="col-md-12">
                    <div class="value">' . $aRow['description'] . '</div>
                </div>
                
            </div>
        </div>
    </div>';




    preg_match_all('/<(.*?)>.*?<\/\1>/ims', $aRow['description'], $matches);
    $height += 400+(strlen($aRow['description'])/200) * 18;
    $height += count($matches[0]) * 18;
    //$height += strlen(($aRow['description'])/200) * 10;

    //$str2 =

    $rowTwo[] = '<div style="height: '.$height.'px; display: none;" id="showMainT_'.$i.'"></div>';
    $rowTwo[] = '';
    $rowTwo[] = '';
    $rowTwo[] = '';
    $rowTwo[] = '';
    $rowTwo[] = '';
    $rowTwo[] = '';
    $rowTwo[] = '';

    $output['aaData'][] = $row;
    $output['aaData'][] = $rowTwo;
    $i++;
}

//$output['aaData'][] = array(
//    '',
//    '',
//    '',
//    '',
//    '',
//    '',
//    '',
//    '<input type="hidden" id="mz_list_count" value="'.($i-1).'">',
//);