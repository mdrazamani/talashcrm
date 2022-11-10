<?php
defined('BASEPATH') or exit('No direct script access allowed');

$this->ci->load->model('projects_model');
$this->ci->load->model('currencies_model');

$aColumns = [
    'id',
    //'itemId',
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
    ' AND projectId = "'.$project_id.'"',
    ' AND itemId = "'.$itemIdController.'"',
    ' AND parent_id = "0"'
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
$allMain = [];
foreach ($rResult as $aRow) {
    $allMain = $this->ci->projects_model->item_details_id_get_mz($aRow['id'], $type, $project_id, $_SESSION['staff_user_id']);
}

foreach ($allMain as $aRow2) {

    $staff = $this->ci->projects_model->get_mz_staff($aRow2['added_from']);
    $vondor = $this->ci->projects_model->get_mz_vondor($aRow2['vendor_id']);
    $itemsDet = $this->ci->projects_model->item_details_id($aRow2['bazargani_item_id']);
    $allCurrencys = $this->ci->currencies_model->get();

    $row = [];

    $row[] = '<span>' . ($i + 1) . '</span>';
    $row[] = '<div class="checkbox"><input type="radio" onclick="update_price_item('.$aRow2['bazargani_item_id'].','.$aRow2['bazargani_id'].')" name="radioBtnSelect" value="'.$aRow2['bazargani_id'].'" id="ibi_'.$aRow2['bazargani_id'].'"><label for="ibi_'.$aRow2['bazargani_id'].'"></label></div>';

    $start = "'start'";
    $end = "'end'";

    $showModal23InS = $aRow2['bazargani_id'].",'hamlPriceN".$aRow2['bazargani_id']."'";

    $row[] = '<span onclick="showModal33('.$showModal23InS.')""><i class="fa fa-plus" style="color: #84c529; cursor: pointer; font-size: 17px;"></i></span>';
    $row[] = '<span>' . $staff->firstname . ' ' . $staff->lastname . '</span>';
    $row[] = '<span>' . $vondor->company . '</span>';
    $row[] = '<span>' . jdate('Y/m/d - g:i:s', $aRow2["added_date"]) . '</span>';

    $currencys_price = array();
    $currency1 = 0;
    foreach($allCurrencys as $cc){
        if($aRow2["currency_type"] == $cc['id']){
            $currency1 = $cc['price']; break;
        }
    }

    $thisAllPrice = ($aRow2['sell_price']*$currency1)+($aRow2['sell_price']*$aRow2['gomrok_price']*$currency1)+($aRow2['tarkhis_price'])+($aRow2['havalePrice']);

    //$thisAllPrice = 1000;

    $row[] = '<span style="text-align: center;" id="thisPrice'.$aRow2['bazargani_id'].'">'.number_format($thisAllPrice).'</span>
    <input type="hidden" name="" id="thisPriceN'.$aRow2['bazargani_id'].'" value="'.$thisAllPrice.'" />
    <input type="hidden" name="" id="hamlPriceN'.$aRow2['bazargani_id'].'" value="" />
    <input type="hidden" name="" id="endAllPriceN'.$aRow2['bazargani_id'].'" value="'.$thisAllPrice.'" />';

    $faniProposalCheck = !empty($aRow['faniProposal']) ? '<i class="fa fa-check" style="color: #84c529; font-size: 17px;"></i>' : '<i class="fa fa-remove" style="color: #cf0318;  font-size: 17px;"></i>';

    $row[] = '<span style="text-align: center;">'.$faniProposalCheck.'</span>';

    //$jagozin = $itemsDet->parent_id == 0 ? '<i class="fa fa-remove" style="color: #cf0318;  font-size: 17px;"></i>' : '<i class="fa fa-check" style="color: #84c529; font-size: 17px;"></i>';

    //$row[] = '<span style="text-align: center;">'.$jagozin.'</span>';

    $row[] = '<span style="text-align: center;" onclick="showModal23('.$showModal23InS.')" class="btn btn-info"><i class="fa fa-plus"></i></span>
              <div id="hazineHAml'.$aRow2['bazargani_id'].'" style="color: #cf0318;"></div>';

    $row[] = '<input type="number" class="form-control" name="" id="persent'.$aRow2['bazargani_id'].'" min="0" placeholder="دردصد بالاسری" />';

    $row[] = '<input type="number" class="form-control" name="" id="endPrice'.$aRow2['bazargani_id'].'" min="0" placeholder="قیمت فروش" />
            <span id="sood'.$aRow2['bazargani_id'].'" style="color: #84c529;"></span>
    <script>
        let main_end_price'.$aRow2['bazargani_id'].' = 0;
        let persent'.$aRow2['bazargani_id'].' = document.getElementById("persent'.$aRow2['bazargani_id'].'");
        let endPrice'.$aRow2['bazargani_id'].' = document.getElementById("endPrice'.$aRow2['bazargani_id'].'");
        let sood'.$aRow2['bazargani_id'].' = document.getElementById("sood'.$aRow2['bazargani_id'].'");
        let hamlPriceN'.$aRow2['bazargani_id'].' = document.getElementById("hamlPriceN'.$aRow2['bazargani_id'].'");
        let endAllPriceN'.$aRow2['bazargani_id'].' = "";
        let thisPrice'.$aRow2['bazargani_id'].' = '.$thisAllPrice.';
        
        persent'.$aRow2['bazargani_id'].'.addEventListener("keyup", ()=>{
        
            endAllPriceN'.$aRow2['bazargani_id'].' = parseInt(document.getElementById("endAllPriceN'.$aRow2['bazargani_id'].'").value);
        
            if(hamlPriceN'.$aRow2['bazargani_id'].'.value != ""){
                 if(persent'.$aRow2['bazargani_id'].'.value != ""){
                main_end_price'.$aRow2['bazargani_id'].' = (endAllPriceN'.$aRow2['bazargani_id'].'*persent'.$aRow2['bazargani_id'].'.value)/100;
                endPrice'.$aRow2['bazargani_id'].'.value = (main_end_price'.$aRow2['bazargani_id'].'+endAllPriceN'.$aRow2['bazargani_id'].');
                sood'.$aRow2['bazargani_id'].'.innerHTML = "\+"+(main_end_price'.$aRow2['bazargani_id'].');
                }else{
                    sood'.$aRow2['bazargani_id'].'.innerHTML = "";
                     endPrice'.$aRow2['bazargani_id'].'.value = "";
                }
            }else{
                sood'.$aRow2['bazargani_id'].'.innerHTML = `<span style="color: #cf0318;">ابتدا یک حمل را انتخاب کنید!</span>`;
            }
        });
        
        persent'.$aRow2['bazargani_id'].'.addEventListener("change", ()=>{
        
            endAllPriceN'.$aRow2['bazargani_id'].' = parseInt(document.getElementById("endAllPriceN'.$aRow2['bazargani_id'].'").value);
        
            if(hamlPriceN'.$aRow2['bazargani_id'].'.value != ""){
                 if(persent'.$aRow2['bazargani_id'].'.value != ""){
                main_end_price'.$aRow2['bazargani_id'].' = (endAllPriceN'.$aRow2['bazargani_id'].'*persent'.$aRow2['bazargani_id'].'.value)/100;
                endPrice'.$aRow2['bazargani_id'].'.value = (main_end_price'.$aRow2['bazargani_id'].'+endAllPriceN'.$aRow2['bazargani_id'].');
                sood'.$aRow2['bazargani_id'].'.innerHTML = "\+"+(main_end_price'.$aRow2['bazargani_id'].');
                }else{
                    sood'.$aRow2['bazargani_id'].'.innerHTML = "";
                     endPrice'.$aRow2['bazargani_id'].'.value = "";
                }
            }else{
                sood'.$aRow2['bazargani_id'].'.innerHTML = `<span style="color: #cf0318;">ابتدا یک حمل را انتخاب کنید!</span>`;
            }
        });
        
        endPrice'.$aRow2['bazargani_id'].'.addEventListener("keyup", ()=>{
        
            endAllPriceN'.$aRow2['bazargani_id'].' = parseInt(document.getElementById("endAllPriceN'.$aRow2['bazargani_id'].'").value);
        
            if(hamlPriceN'.$aRow2['bazargani_id'].'.value != ""){
                if(endPrice' . $aRow2['bazargani_id'] . '.value != ""){
                    sood' . $aRow2['bazargani_id'] . '.innerHTML = "\+"+(endPrice' . $aRow2['bazargani_id'] . '.value-endAllPriceN' . $aRow2['bazargani_id'] . ');
                    persent' . $aRow2['bazargani_id'] . '.value = ((endPrice' . $aRow2['bazargani_id'] . '.value-endAllPriceN' . $aRow2['bazargani_id'] . ')*100)/endAllPriceN' . $aRow2['bazargani_id'] . ';
                }else{
                    sood' . $aRow2['bazargani_id'] . '.innerHTML = "";
                    persent' . $aRow2['bazargani_id'] . '.value = "";
                }
            }else{
                sood'.$aRow2['bazargani_id'].'.innerHTML = `<span style="color: #cf0318;">ابتدا یک حمل را انتخاب کنید!</span>`;
            }    
        });
        
        endPrice'.$aRow2['bazargani_id'].'.addEventListener("change", ()=>{
        
            endAllPriceN'.$aRow2['bazargani_id'].' = parseInt(document.getElementById("endAllPriceN'.$aRow2['bazargani_id'].'").value);
        
            if(hamlPriceN'.$aRow2['bazargani_id'].'.value != ""){
                if(endPrice' . $aRow2['bazargani_id'] . '.value != ""){
                    sood' . $aRow2['bazargani_id'] . '.innerHTML = "\+"+(endPrice' . $aRow2['bazargani_id'] . '.value-endAllPriceN' . $aRow2['bazargani_id'] . ');
                    persent' . $aRow2['bazargani_id'] . '.value = ((endPrice' . $aRow2['bazargani_id'] . '.value-endAllPriceN' . $aRow2['bazargani_id'] . ')*100)/endAllPriceN' . $aRow2['bazargani_id'] . ';
                }else{
                    sood' . $aRow2['bazargani_id'] . '.innerHTML = "";
                    persent' . $aRow2['bazargani_id'] . '.value = "";
                }
            }else{
                sood'.$aRow2['bazargani_id'].'.innerHTML = `<span style="color: #cf0318;">ابتدا یک حمل را انتخاب کنید!</span>`;
            }    
        });
        
//        let ibi_'.$aRow2['bazargani_id'].' = document.getElementById("ibi_'.$aRow2['bazargani_id'].'");
//        ibi_'.$aRow2['bazargani_id'].'.addEventListener("click", ()=>{
//            console.log(ibi_'.$aRow2['bazargani_id'].'.value);
//        });
        
    </script>';

    $output['aaData'][] = $row;

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