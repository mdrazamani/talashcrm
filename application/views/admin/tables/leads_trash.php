<?php
defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    db_prefix() . 'leads.id as id',
    'name',
    'company',
    'lead_value',
    'customerId',
    'lastname',
    'assigned',
    'assignedName',
    'staff_trash_name',
    'date_trash',
    'trash_staff',
    'addedfrom',
    'dateadded',
    //'(SELECT GROUP_CONCAT(lastname SEPARATOR ",") FROM ' . db_prefix() . 'leads JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'leads.assigned = ' . db_prefix() . 'staff.staffid WHERE id = ' . db_prefix() . 'leads.id ORDER BY id) as lastname_a'
    ];

$sIndexColumn = 'id';
$sTable       = db_prefix() . 'leads';
$where = [];
if (!empty($this->ci->input->post('lead_id'))) {
    array_push($where, ' AND is_trash = "1"');
}

$join = [
    'JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid  = ' . db_prefix() . 'leads.addedfrom',
 //   'JOIN n2' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid  = ' . db_prefix() . 'leads.assigned',
];

$result = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where);
//$this->ci->input->post('lead_id')
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];
    $hrefAttr = 'href="' . admin_url('leads/index/' . $aRow['id']) . '" onclick="init_lead(' . $aRow['id'] . ');return false;"';

    $hrefAttr = 'href="' . admin_url('leads/index/' . $aRow['id']) . '" onclick="init_lead(' . $aRow['id'] . ');return false;"';
    $row[]    = '<a ' . $hrefAttr . '>' . $aRow['id'] . '</a>';

    $row[] = '<a ' . $hrefAttr . '>' . $aRow['name'] . '</a>';

    $row[] = '<a href="'.admin_url('clients/client/').$aRow['customerId'].'">' . $aRow['company'] . '</a>';

    $row[] = '<span>'.number_format($aRow['lead_value']).'</span>';

    $add_trashOutput = '';
    if ($aRow['addedfrom'] != 0) {
        $full_name = $aRow['lastname'];

        $add_trashOutput = '<a data-toggle="tooltip" data-title="' . $full_name . '" href="' . admin_url('profile/' . $aRow['addedfrom']) . '">' . staff_profile_image($aRow['addedfrom'], [
                'staff-profile-image-small',
            ]) . '</a>';

        // For exporting
        $add_trashOutput .= '<span class="hide">' . $full_name . '</span>';
    }

    $row[] = $add_trashOutput;

    $assignedOutput = '';
    if ($aRow['assigned'] != 0) {
        $full_name = $aRow['assignedName'];

        $assignedOutput = '<a data-toggle="tooltip" data-title="' . $full_name . '" href="' . admin_url('profile/' . $aRow['assigned']) . '">' . staff_profile_image($aRow['assigned'], [
                'staff-profile-image-small',
            ]) . '</a>';

        // For exporting
        $assignedOutput .= '<span class="hide">' . $full_name . '</span>';
    }

    $row[] = $assignedOutput;



    $staff_trashOutput = '';
    if ($aRow['trash_staff'] != 0) {
        $full_name = $aRow['staff_trash_name'];

        $staff_trashOutput = '<a data-toggle="tooltip" data-title="' . $full_name . '" href="' . admin_url('profile/' . $aRow['trash_staff']) . '">' . staff_profile_image($aRow['trash_staff'], [
                'staff-profile-image-small',
            ]) . '</a>';

        // For exporting
        $staff_trashOutput .= '<span class="hide">' . $full_name . '</span>';
    }

    $row[] = $staff_trashOutput;

    $row[] = '<span>'._jdt($aRow["lastname"]).'</span>';
    $row[] = '<span>'._jdt($aRow["date_trash"]).'</span>';


   // $row[]  = '22';

   // $row['DT_RowClass'] = 'has-row-options';
    //$row = hooks()->apply_filters('projects_table_row_data', $row, $aRow);
    $output['aaData'][] = $row;
}