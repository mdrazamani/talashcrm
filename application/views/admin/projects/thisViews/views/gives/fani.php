<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<?php
$type_process = $thisViews['dp']['en_name'];
$type_process_view_path = 'processes/'.$type_process;
$type_process_controller = 'projects';
$type_process_action = 'addAdakheliProcess';
?>

<input type="hidden" name="projectId" id="projectId" value="<?php echo $project->id; ?>">
<input type="hidden" name="projectId" id="type" value="<?php echo $thisViews['dp']['en_name']; ?>">

<?php
$table_data = array(
    _l(''),
    _l('#'),
    _l('عنوان'),
    _l('تعداد'),
    _l('فرستنده'),
    _l('تاریخ'),
    _l('الویت'),
    _l('اقدام'),
    //_l('فروشنده'),
    //_l('پیشنهاد دهنده'),
    //_l('تاریخ'),
    //_l('جزئیات'),
);
render_datatable($table_data,'gList');
?>

<?php //init_tail(); ?>

<?php
hooks()->add_action('app_admin_footer', function(){
    ?>
    <script>
        $(function(){
            var trash_ServerParams = {};
            $.each($('._hidden_inputs._filters input'),function(){
                trash_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
                trash_ServerParams['projectId'] = $('#projectId').val();
                trash_ServerParams['project_id22'] = 'hello';
            });
            //console.log(trash_ServerParams);
            initDataTable('.table-gList', admin_url+'projects/getGivesLists_kharegi/'+$('#projectId').val()+'/'+$('#type').val(), ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
        })
    </script>
<?php }) ?>