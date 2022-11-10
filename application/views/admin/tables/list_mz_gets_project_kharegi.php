<?php
defined('BASEPATH') or exit('No direct script access allowed');

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
    'sends',


    //'(SELECT GROUP_CONCAT(lastname SEPARATOR ",") FROM ' . db_prefix() . 'leads JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'leads.assigned = ' . db_prefix() . 'staff.staffid WHERE id = ' . db_prefix() . 'leads.id ORDER BY id) as lastname_a'
];

$sIndexColumn = 'id';
$sTable       = db_prefix() . 'project_items_details';
$where = [
    'AND projectId  = "'.$project_id.'"',
];

$join = [
    'JOIN ' . db_prefix() . 'project_items_details ON ' . db_prefix() . 'project_items_details.itemId = ' . db_prefix() . 'itemable.rel_id'
];




//$join = [
//    'JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid  = ' . db_prefix() . 'leads.addedfrom',
// //   'JOIN n2' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid  = ' . db_prefix() . 'leads.assigned',
//];



$result = data_tables_init($aColumns, $sIndexColumn, $sTable, '', $where);
//$this->ci->input->post('lead_id')
$output  = $result['output'];
$rResult = $result['rResult'];

$i=0;
//$my_array = [];
//foreach ($rResult as $aRow) {
    $my_array = $this->ci->projects_model->my_recive_0($_SESSION['staff_user_id'], $project_id);

//}

$mainAction_name = '';
switch($type){
    case 'fani': $mainAction_name = 'ثبت پیشنهاد فنی'; break;
    case 'kharegi': $mainAction_name = 'ثبت قیمت خارجی'; break;
    case 'forosh': $mainAction_name = 'فروش'; break;
    case 'dakheli': $mainAction_name = 'ثبت قیمت داخلی'; break;
    case 'modir': $mainAction_name = 'مدیر'; break;
}

foreach ($my_array as $aRow) {

    $item_details_jagoin_ha = $this->ci->projects_model->item_details_jagoin_ha($aRow['main']['itemId']);
    $itemsPro = $this->ci->projects_model->item_details_id_get_mz($aRow['main']['id'], $type, $project_id, $_SESSION['staff_user_id']);
    //$my_array = $this->ci->projects_model->item_details_Main_recive_0($_SESSION['staff_user_id'], $project_id);

    $start = "'start'";
    $end = "'end'";

    //$send = unserialize($aRow['sends']);

    $row = [];
    $row[] = '
    <span onclick="show(' . $i . ','.$start.')" id="showDetails_' . $i . '"><i class="fa fa-plus" style="color: #84c529; cursor: pointer; font-size: 17px;"></i></span>
    <span onclick="show(' . $i . ','.$end.')" id="notShowDetails_' . $i . '" style="display: none;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
    ';
    $ckeck = isset($aRow['newMain']) ? '<span>اقدام شده</span>' : '<span>خام</span>';
    $row[] = '<span>' . ($i + 1) . ' - '.$ckeck.'</span>';
    $name = $aRow['main']['parent_id'] == 0 ? $aRow['main']['product_name'] : $aRow['main']['product_name'].' - '.'<span style="color: #ff6f00;">جایگزین</span>';
    $nameCount = count($itemsPro) != 0 ? '<span style="width: 20px; display: inline-block; text-align: center; background: rgb(0, 112, 240); color: white; border-radius: 10px; height: 20px;">'.count($itemsPro).'</span>' : '' ;
    $row[] = '<span>' .$name.' '.$nameCount.' </span>';
    $row[] = '<span>' . round($aRow['item']['qty']) .' ' .$aRow['item']['unit']. '</span>';

    $sender = $this->ci->projects_model->get_mz_staff($aRow['send']['sender']);

    $row[] = '<span> '.$sender->firstname.' '.$sender->lastname.' </span>';
    $row[] = '<span>' . jdate('Y/m/d - g:i:s',$aRow['send']['dateSend']) . '</span>';
    $javascriptInputs = $aRow['main']['id'].",'".$aRow['main']['description']."'";


    $actions = '<a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$aRow['main']['id'].'&initialID='.$aRow['newMain']['bazargani_id'].'" class="btn-black" style="cursor: pointer; width: 15px; color:#84c529; margin: 0 10px; "><i class="fa fa-arrow-left"></i></a>';

    $status = '<span class="btn btn-';
    switch($aRow['send']['stat']){
        case 0: $status .= 'danger">خیلی بالا'; break;
        case 1: $status .= 'warning"> بالا'; break;
        case 2: $status .= 'info">متوسط '; break;
        case 3: $status .= 'primary">کم '; break;
        case 4: $status .= 'success">خیلی کم'; break;
    }
    $status .= '</span>';

    $row[] = $status;
    $row[] = $actions;


    $height1 = 880;

    $addHtmlJ = '';
    foreach($item_details_jagoin_ha as $key => $item){
        $addHtmlJ.='
         <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                        <span class="dash-mtext"> شماره '.($key+1).' </span>
                        <div style="float: left; padding: 0px; cursor: pointer; position: relative;" id="addJagozin">
                            <a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$item['id'].'" class="btn btn-primary" style="background-color: #84c529;"><i class="fa fa-arrow-left"></i></a>
                        </div>
                    </div>
                    <div class="mz-panel-body">
                        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> مشخصات اصلی </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                <div class="col-md-3">

                        <span class="key"> نام محصول:</span>
                        <span class="form-control value">'.$item['product_name'].'</span>

                </div>
                 <div class="col-md-3">

                        <span class="key"> کد محصول:</span>
                        <span class="form-control value">'.$item['productNumber'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> برند:</span>
                        <span class="form-control value">'.$item['productBrand'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key">کشور سازنده:</span>
                        <span class="form-control value">'.$item['productCountry'].'</span>

                </div>

                </div>
            </div>
        </div>

        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> وزن و ابعاد </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                <div class="col-md-3">

                        <span class="key"> وزن(g):</span>
                        <span class="form-control value">'.$item['vazn'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> طول(cm):</span>
                        <span class="form-control value">'.$item['tol'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> عرض(cm):</span>
                        <span class="form-control value">'.$item['arz'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> ارتفاع(cm):</span>
                        <span class="form-control value">'.$item['ertefa'].'</span>

                </div>
                </div>
            </div>
        </div>

        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> شرح جایگزین </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                    <div class="col-md-12">
                        <p>'.$item['mainDesc'].'</p>
                    </div>
                </div>
            </div>
        </div>
                    </div>
                </div>

        ';
        $height1+=690;
        $height1 += (strlen($item['mainDesc'])/200) * 22;
    }

    if(empty($addHtmlJ)){
        $addHtmlJ = '<div class="alert alert-warning">محصول فوق هیچ جایگزینی ندارد.</div>';
    }

    $addDetailsText = $aRow['main']['id'].",'".$aRow['main']['description']."'";

//    $print = '';
//    foreach($my_array as $key => $value){
//        $print.=$key;
//    }


    $bightml1 = '
    <div style="position:absolute; right: 30px; left: 30px; display: none; transition: all .4s ease 0s;" id="showMain_' . $i . '">
        <div style="position: relative; background: #f8f9fd; padding: 15px; border-radius: 5px;">

               
            <div class="mz-panel">
            <div class="mz-panel-header">
                <div class="row" style="text-align: center;">
                    <div class="col-md-12"><a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$aRow['main']['id'].'" class="btn btn-success"><span class="dash-mtext" style="color: white;"> '.$mainAction_name.' </span><i class="fa fa-arrow-left"></i></a></div>
                </div>

            </div>
            </div>
            
             <div class="mz-panel">
            <div class="mz-panel-header">
                <div class="row" style="text-align: center;">
                    <div class="col-md-12"><h5>متن ارجاع:</h5><p>'.$aRow['send']['send'].'</p></div>
                </div>
            </div>
            </div>

            <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> مشخصات اصلی </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                <div class="col-md-4">

                        <span class="key"> کد محصول:</span>
                        <span class="form-control value">'.$aRow['main']['productNumber'].'</span>

                </div>
                <div class="col-md-4">

                        <span class="key"> برند:</span>
                        <span class="form-control value">'.$aRow['main']['productBrand'].'</span>

                </div>
                <div class="col-md-4">

                        <span class="key">کشور سازنده:</span>
                        <span class="form-control value">'.$aRow['main']['productCountry'].'</span>

                </div>
                </div>
            </div>
        </div>


        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> وزن و ابعاد </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                <div class="col-md-3">

                        <span class="key"> وزن(g):</span>
                        <span class="form-control value">'.$aRow['main']['vazn'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> طول(cm):</span>
                        <span class="form-control value">'.$aRow['main']['tol'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> عرض(cm):</span>
                        <span class="form-control value">'.$aRow['main']['arz'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> ارتفاع(cm):</span>
                        <span class="form-control value">'.$aRow['main']['ertefa'].'</span>

                </div>
                </div>
            </div>
        </div>


        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> شرح اصلی </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                    <div class="col-md-12">
                        <p>'.$aRow['main']['mainDesc'].'</p>
                    </div>
                </div>
            </div>
        </div>



        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> محصولات جایگزین </span>
            </div>
            <div class="mz-panel-body">

               '.$addHtmlJ.'

            </div>
        </div>


        </div>
    </div>';

    $height1 += (strlen($aRow['main']['mainDesc'])/200) * 18;
//----------------------------------------------------------------------------------------------------------------------



    //$staff = $this->ci->projects_model->get_mz_staff($aRow['added']);
    $vondor = $this->ci->projects_model->get_mz_vondor($aRow['newMain']['vendor_id']);
    $contact = $this->ci->projects_model->get_mz_contact($aRow['newMain']['contact_id']);
    //$details = $this->ci->projects_model->item_details_id($aRow['item']);


    $pay_type = '';
    switch ($aRow['newMain']['pay_type']) {
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
    switch ($aRow['newMain']['tarkhis_type']) {
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

    $currency = '';
    switch ($aRow['newMain']['currency_type']) {
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

    $taedee_ha = unserialize($aRow['newMain']['taedee_ha']);

    $T1 = ($taedee_ha[0] == 1) ? 'بله' : 'خیر';
    $T2 = ($taedee_ha[1] == 1) ? 'بله' : 'خیر';
    $T3 = ($taedee_ha[2] == 1) ? 'بله' : 'خیر';
    $T4 = ($taedee_ha[3] == 1) ? 'بله' : 'خیر';

    $sendModels = '';
    $j = 1;
    $height2 = 0;
    foreach (unserialize($aRow['newMain']['hamlo_naghl']) as $itemHaml) {



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


        $currency1 = '';
        switch ($itemHaml['typeCurrency']) {
            case 0:
                $currency1 = 'ریال';
                break;
            case 1:
                $currency1 = 'دلار آمریکا';
                break;
            case 2:
                $currency1 = 'یورو';
                break;
            case 3:
                $currency1 = 'پوند';
                break;
            case 4:
                $currency1 = 'دلار سنگاپور';
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
    <span class="dash-mtext">  شماره -' . $j++ . ' </span>
    <div style="float: left; padding: 0px; cursor: pointer; position: relative;" id="addJagozin">
                            <a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$item['id'].'" class="btn btn-primary" style="background-color: #84c529;"><i class="fa fa-arrow-left"></i></a>
                        </div>
</div>
<div class="mz-panel-body">

<div class="row" style="text-align: center; padding-top: 20px;">

                <div class="col-md-4">

                        <span class="key"> هزینه حمل:</span>
                        <div class="form-control">
                        <span class="value">' . $itemHaml['cost'] . '</span>
                    </div>
                </div>
                <div class="col-md-4">

                        <span class="key"> نوع ارز :</span>
                        <div class="form-control">
                        <span class="value">' . $currency1 . '</span>
                    </div>
                </div>
                <div class="col-md-4">

                        <span class="key"> روش حمل:</span>
                        <div class="form-control">
                        <span class="value">' . $hamlType . '</span>
                    </div>
                </div>
            </div>

            <div class="row" style="text-align: center; padding-top: 20px;">
                <div class="col-md-3">

                        <span class="key"> زمان حمل :</span>
                        <div class="form-control">
                        <span class="value">' . $itemHaml['timehaml'] . '</span>
                    </div>
                </div>
                <div class="col-md-3">

                        <span class="key"> واحد زمان :</span>
                        <div class="form-control">
                        <span class="value">' . $zaman1 . '</span>
                    </div>
                </div>
                <div class="col-md-3">

                        <span class="key"> زمان تحویل در مبدا:</span>
                        <div class="form-control">
                        <span class="value">' . $itemHaml['timetahvil'] . '</span>
                    </div>
                </div>
                <div class="col-md-3">

                        <span class="key"> واحد زمان:</span>
                        <div class="form-control">
                        <span class="value">' . $zaman2 . '</span>
                    </div>
                </div>
            </div>
            </div>
            </div>
            ';
        $height2 += 380;
    }


    $builderName = !empty($aRow['newMain']['builder_country']) ? "کشور سازنده" : "شهر سازنده";
    $builder = !empty($aRow['newMain']['builder_country']) ? $aRow['newMain']['builder_country'] : $aRow['newMain']['city_builder'];

    $tarkhisHtml = '';

    if($aRow['newMain']['bazargani_type'] == 'kharegi'){
        $tarkhisHtml = '
    <div class="mz-panel">
                <div class="mz-panel-header">
                    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                    <span class="dash-mtext"> ترخیص </span>
                </div>
                <div class="mz-panel-body">
                    <div class="row" style="text-align: center; padding-top: 20px;">
                <div class="col-md-3">
                    
                        <span class="key"> نحوه ترخیص:</span> 
                        <div class="form-control">
                        <span class="value">' . $nahveTarkhis . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                   
                        <span class="key">   HS code:</span> 
                        <div class="form-control">
                        <span class="value">' . $aRow['newMain']['hs_code'] . '</span>
                    </div>
                </div>
                <div class="col-md-3">
              
                        <span class="key">  حقوق گمرکی:</span> 
                        <div class="form-control">
                        <span class="value">' . $aRow['newMain']['gomrok_price'] . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                    
                        <span class="key">  هزینه ترخیص:</span>
                        <div class="form-control"> 
                        <span class="value">' . $aRow['newMain']['tarkhis_price'] . '</span>
                    </div>
                </div>
            </div>
                </div>
            </div>
    ';
        $height2 += 200;
    }



    //------------------------------------------------------------------------------------------------------------------


    $faniproposal = '';

    if(!empty($aRow['newMain']['faniproposal'])){
        $faniproposal = '
    <div class="mz-panel">
                <div class="mz-panel-header">
                    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                    <span class="dash-mtext"> ترخیص </span>
                </div>
                <div class="mz-panel-body">
                    <div class="row" style="text-align: center; padding-top: 20px;">
                <div class="col-md-12">
                    
                    '.$aRow['newMain']['faniproposal'].'
                       
                    </div>
                </div>
                
            </div>
                </div>
          
    ';
        $height2 += 300+(strlen($aRow['newMain']['faniproposal'])/200) * 18;;
    }

    $bightml2 = '<div style="position:absolute; right: 30px; left: 30px; display: none; transition: all .4s ease 0s;" id="showMain_' . $i . '">
        <div style="position: relative; background: #f8f9fd; padding: 15px; border-radius: 5px;">
            
            <div class="mz-panel">
            <div class="mz-panel-header">
                <div class="row" style="text-align: center;">
                    <div class="col-md-12"><a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$aRow['main']['id'].'" class="btn btn-success"><span class="dash-mtext" style="color: white;"> '.$mainAction_name.' </span><i class="fa fa-arrow-left"></i></a></div>
                </div>

            </div>
            </div>
            
             <div class="mz-panel">
            <div class="mz-panel-header">
                <div class="row" style="text-align: center;">
                    <div class="col-md-12"><h5>متن ارجاع:</h5><p>'.$aRow['send']['send'].'</p></div>
                </div>
            </div>
            </div>
            
            
             <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> مشخصات اصلی </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                <div class="col-md-4">

                        <span class="key"> کد محصول:</span>
                        <span class="form-control value">'.$aRow['main']['productNumber'].'</span>

                </div>
                <div class="col-md-4">

                        <span class="key"> برند:</span>
                        <span class="form-control value">'.$aRow['main']['productBrand'].'</span>

                </div>
                <div class="col-md-4">

                        <span class="key">کشور سازنده:</span>
                        <span class="form-control value">'.$aRow['main']['productCountry'].'</span>

                </div>
                </div>
            </div>
        </div>


        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> وزن و ابعاد </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                <div class="col-md-3">

                        <span class="key"> وزن(g):</span>
                        <span class="form-control value">'.$aRow['main']['vazn'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> طول(cm):</span>
                        <span class="form-control value">'.$aRow['main']['tol'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> عرض(cm):</span>
                        <span class="form-control value">'.$aRow['main']['arz'].'</span>

                </div>
                <div class="col-md-3">

                        <span class="key"> ارتفاع(cm):</span>
                        <span class="form-control value">'.$aRow['main']['ertefa'].'</span>

                </div>
                </div>
            </div>
        </div>


        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> شرح اصلی </span>
            </div>
            <div class="mz-panel-body">
                <div class="row" style="text-align: center;">
                    <div class="col-md-12">
                        <p>'.$aRow['main']['mainDesc'].'</p>
                    </div>
                </div>
            </div>
        </div>
            
            
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                    <span class="dash-mtext"> قیمت </span>
                </div>
                <div class="mz-panel-body">
                    <div class="row" style="text-align: center;">
                    
                <div class="col-md-3">
                    
                        <span class="key"> قیمت خرید:</span> 
                        <div class="form-control">
                        <span class="value">' . number_format($aRow['newMain']['sell_price']) . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                   
                        <span class="key"> نوع ارز:</span> 
                        <div class="form-control">
                        <span class="value">' . $currency . '</span>
                    </div>
                </div>
                    
                <div class="col-md-3">
                    
                        <span class="key">'.$builderName.':</span> 
                        <div class="form-control">
                        <span class="value">' . $builder . '</span>
                    </div>    
                </div>
                <div class="col-md-3">
                    
                        <span class="key"> شیوه پرداخت:</span> 
                        <div class="form-control">
                        <span class="value">' . $pay_type . '</span>
                    </div>    
                </div>
                
            </div>
                </div>
            </div>
            
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                    <span class="dash-mtext"> فروشنده </span>
                </div>
                <div class="mz-panel-body">
                    <div class="col-md-6">
                 
                        <span class="key"> فروشنده:</span> 
                        <div class="form-control">
                        <span class="value">' . $vondor->company . '</span>
                    </div>
                </div>
                <div class="col-md-6">
                    
                        <span class="key">  مخاطب مربوطه:</span> 
                        <div class="form-control">
                        <span class="value">' . $contact->firstname . ' ' . $contact->lastname . '</span>
                    </div>
                </div>
                </div>
            </div>
            
            <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> حمل و نقل </span>
            </div>
            <div class="mz-panel-body">
            ' . $sendModels . '
            </div>
            </div>
            
               '.$tarkhisHtml.' 
            
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                    <span class="dash-mtext"> تائیدیه ها </span>
                </div>
                <div class="mz-panel-body">
                    <div class="row" style="text-align: center; padding-top: 20px;">
                <div class="col-md-3">
         
                        <span class="key"> دقیقا مشابه درخواست است:</span> 
                         <div class="form-control">
                        <span class="value">' . $T1 . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                 
                        <span class="key">   امکان ارسال مدارک فنی دارد:</span> 
                         <div class="form-control">
                        <span class="value">' . $T2 . '</span>
                    </div>
                </div>
                <div class="col-md-3">
              
                        <span class="key">  گواهی اصالت:</span> 
                         <div class="form-control">
                        <span class="value">' . $T3 . '</span>
                    </div>
                </div>
                <div class="col-md-3">
                   
                        <span class="key">  test report:</span> 
                         <div class="form-control">
                        <span class="value">' . $T4 . '</span>
                    </div>
                </div>
            </div>
                </div>
            </div>
            
            '.$faniproposal.'
            
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                    <span class="dash-mtext"> شرح کلی </span>
                </div>
                <div class="mz-panel-body">
                <div class="row" style="text-align: center; padding-top: 20px;">
            
                <div class="col-md-12">
                    <p class="value">' . $aRow['newMain']['description'] . '</p>
                </div>
                
            </div>
                </div>
            </div>
   
            
        </div>
    </div>';

    preg_match_all('/<(.*?)>.*?<\/\1>/ims', $aRow['newMain']['description'], $matches);
    $height2 += 1500+(strlen($aRow['newMain']['description'])/200) * 18;
    $height2 += count($matches[0]) * 18;

    $height = 0;

    $rowTwo = [];
    if(isset($aRow['newMain'])){
        $rowTwo[] = $bightml2;
        $height = $height2;
    }else{
        $rowTwo[] = $bightml1;
        $height = $height1;
    }


    //$rowTwo[] = isset($aRow['newMain']) ? $bightml2 : $bightml1;





    $rowTwo[] = '<div style="height: '.$height.'px; display: none;" id="showMainT_'.$i.'"></div>';
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