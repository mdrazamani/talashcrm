<?php
defined('BASEPATH') or exit('No direct script access allowed');

$this->ci->load->model('projects_model');

$aColumns = [
    'id',
    'rel_id',
    'rel_type',
    'description',
    'long_description',
    'qty',
    'rate',
    'unit',
    'item_order',
    //'(SELECT GROUP_CONCAT(lastname SEPARATOR ",") FROM ' . db_prefix() . 'leads JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'leads.assigned = ' . db_prefix() . 'staff.staffid WHERE id = ' . db_prefix() . 'leads.id ORDER BY id) as lastname_a'
];

$sIndexColumn = 'id';
$sTable       = db_prefix() . 'itemable';
$where = [
    'AND rel_type = "projects"',
    'AND rel_id  = "'.$project_id.'"'
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
foreach ($rResult as $aRow) {

    $item_details_Main = $this->ci->projects_model->item_details_Main($aRow['id']);
    $item_details_jagoin_ha = $this->ci->projects_model->item_details_jagoin_ha($aRow['id']);
    $staff = $this->ci->projects_model->get_mz_staff($item_details_Main->addedfrom);

    $start = "'start'";
    $end = "'end'";

    $row = [];
    $row[] = '
    <span onclick="show(' . $i . ','.$start.')" id="showDetails_' . $i . '"><i class="fa fa-plus" style="color: #84c529; cursor: pointer; font-size: 17px;"></i></span>
    <span onclick="show(' . $i . ','.$end.')" id="notShowDetails_' . $i . '" style="display: none;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
    ';

    $row[] = '<span>' . ($i + 1) . '</span>';
    $row[] = '<span>' . $aRow['description'] . '</span>';
    $row[] = '<span>' . round($aRow['qty']) .' ' .$aRow['unit']. '</span>';

    $staff_name = !empty($staff->firstname) ? $staff->firstname.' '.$staff->lastname : '- - -';
    $mainDateAdded = !empty($item_details_Main->date_added) ? jdate("Y/m/d - g:i:s", $item_details_Main->date_added) : '- - -';

    $row[] = '<span> '.$staff_name.'</span>';
    $row[] = '<span> '.$mainDateAdded.' </span>';
    $javascriptInputs = $aRow['id'].",'".$aRow['description']."'";

    $sends = unserialize($item_details_Main->sends);

    $styleSendHtml = 'color: #84c529;';
    if($sends == false || empty($sends)){
        $styleSendHtml = '';
    }

    $actions = '<span style="color: #03a9f4; cursor: pointer; width: 15px; margin: 0 10px;" onclick="showUpdate('.$javascriptInputs.')"><i class="fa fa-plus"></i></span>';
    $actions .= !empty($item_details_Main->id) ? '<span onclick="showPm('.$item_details_Main->id.')" class="btn-black" style="cursor: pointer; width: 15px; margin: 0 10px; '.$styleSendHtml.' "><i class="fa fa-send"></i></span>' : '<span class="btn-black" style="cursor: pointer; width: 15px; margin: 0 10px; color: #ccc; "><i class="fa fa-send"></i></span>';
    if($type == 'forosh'){
        $actions .= !empty($item_details_Main->id) ? '<a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$item_details_Main->id.'" class="btn-black" style="cursor: pointer; width: 15px; color:#84c529; margin: 0 10px; "><i class="fa fa-arrow-left"></i></a>' : '<span class="btn-black" style="cursor: pointer; width: 15px; color:#ccc; margin: 0 10px; "><i class="fa fa-arrow-left"></i></a>';
    }
    $row[] = $actions;


    $height = 850;

    $addHtmlJ = '';
    foreach($item_details_jagoin_ha as $key => $item){
        $addHtmlJ.='
         <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                        <span class="dash-mtext"> شماره '.($key+1).' </span>
                        <div style="float: left; padding: 0px; cursor: pointer; position: relative;" id="addJagozin">
                            <span onclick="showPm('.$item['id'].')" class="btn btn-primary" style="background-color: #333;"><i class="fa fa-send"></i></span>
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
        $height+=650;
        $height += (strlen($item['mainDesc'])/200) * 22;
    }

    if(empty($addHtmlJ)){
        $addHtmlJ = '<div class="alert alert-warning">محصول فوق هیچ جایگزینی ندارد.</div>';
    }

    $addDetailsText = $aRow['id'].",'".$aRow['description']."'";

    $rowTwo = [];
    $rowTwo[] = '<div style="position:absolute; right: 30px; left: 30px; display: none; transition: all .4s ease 0s;" id="showMain_' . $i . '">
        <div style="position: relative; background: #f8f9fd; padding: 15px; border-radius: 5px;">
            
            <div class="mz-panel">
            <div class="mz-panel-header">
                <div class="row" style="text-align: center;">
                    <div class="col-md-4"><span onclick="showUpdate('.$addDetailsText.')" class="btn btn-info"><span class="dash-mtext" style="color: white;"> تکمیل جزئیات </span><i class="fa fa-plus"></i></span></div>
                    <div class="col-md-4"><span onclick="showPm('.$item_details_Main->id.')" class="btn btn-primary" style="background-color: #333;"><span class="dash-mtext" style="color: white;"> ارجاع </span><i class="fa fa-send"></i></span></div>
                    <div class="col-md-4"><a href="'.$project_id.'?group=project_thisViews_lead&itemId='.$item_details_Main->id.'" class="btn btn-success"><span class="dash-mtext" style="color: white;"> افزودن قیمت </span><i class="fa fa-arrow-left"></i></a></div>
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
                        <span class="form-control value">'.$item_details_Main->productNumber.'</span>
                   
                </div>
                <div class="col-md-4">
                    
                        <span class="key"> برند:</span>
                        <span class="form-control value">'.$item_details_Main->productBrand.'</span>
                
                </div>
                <div class="col-md-4">
                    
                        <span class="key">کشور سازنده:</span>
                        <span class="form-control value">'.$item_details_Main->productCountry.'</span>
                 
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
                        <span class="form-control value">'.$item_details_Main->vazn.'</span>
                   
                </div>
                <div class="col-md-3">
                    
                        <span class="key"> طول(cm):</span>
                        <span class="form-control value">'.$item_details_Main->tol.'</span>
                
                </div>
                <div class="col-md-3">
                    
                        <span class="key"> عرض(cm):</span>
                        <span class="form-control value">'.$item_details_Main->arz.'</span>
                 
                </div>
                <div class="col-md-3">
                    
                        <span class="key"> ارتفاع(cm):</span>
                        <span class="form-control value">'.$item_details_Main->ertefa.'</span>
                 
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
                        <p>'.$item_details_Main->mainDesc.'</p>
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



    $height += (strlen($aRow['mainDesc'])/200) * 18;

    $rowTwo[] = '<div style="height: '.$height.'px; display: none;" id="showMainT_'.$i.'"></div>';
    $rowTwo[] = '';
    $rowTwo[] = '';
    $rowTwo[] = '';
    $rowTwo[] = '';
    $rowTwo[] = '';

    $output['aaData'][] = $row;
    $output['aaData'][] = $rowTwo;
    $i++;
}