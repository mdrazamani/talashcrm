<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php //init_head(); ?>

<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
    <h4 class="modal-title">
        تبدیل <?php echo $lead->name;?> به پروژه  <span class="btn btn-danger">خیلی زیاد</span>   </h4>
</div>


<?php
//var_dump('hello');
?>

    <?php echo form_open(admin_url('leads/nowConvertToProject'),array('id'=>'project_form')); ?>
<div class="row">
<div class="modal-body">
    <div class="content">
        <?php
        //$default['lead'] = $lead;
        $this->load->view('admin/leads/modals/convertToProject_modal');
        ?>
        <div class="btn-bottom-pusher"></div>
    </div>
</div>
</div>

<!--<input type="hidden" id="is_lead" name="is_lead" value="1" />-->

<div class="modal-footer">
    <button group="button" class="btn btn-default" data-dismiss="modal">انصراف</button>
    <button group="submit" type="submit" class="btn btn-info">ذخیره</button>
</div>
    <?php echo form_close(); ?>

<?php init_tail(); ?>
<script>
    <?php //if(isset($project)){ ?>
   // var original_project_status = '<?php //echo $project->status; ?>';
    <?php //} ?>

    //$(function(){
    //
    //    $contacts_select = $('#notify_contacts'),
    //        $contacts_wrapper = $('#notify_contacts_wrapper'),
    //        $clientSelect = $('#clientid'),
    //        $contact_notification_select = $('#contact_notification');
    //
    //    init_ajax_search('contacts', $contacts_select, {
    //        rel_id: $contacts_select.val(),
    //        type: 'contacts',
    //        extra: {
    //            client_id: function () {return $clientSelect.val();}
    //        }
    //    });
    //
    //    if ($clientSelect.val() == '') {
    //        $contacts_select.prop('disabled', true);
    //        $contacts_select.selectpicker('refresh');
    //    } else {
    //        $contacts_select.siblings().find('input[type="search"]').val(' ').trigger('keyup');
    //    }
    //
    //    $clientSelect.on('changed.bs.select', function () {
    //        if ($clientSelect.selectpicker('val') == '') {
    //            $contacts_select.prop('disabled', true);
    //        } else {
    //            $contacts_select.siblings().find('input[type="search"]').val(' ').trigger('keyup');
    //            $contacts_select.prop('disabled', false);
    //        }
    //        deselect_ajax_search($contacts_select[0]);
    //        $contacts_select.find('option').remove();
    //        $contacts_select.selectpicker('refresh');
    //    });
    //
    //    $contact_notification_select.on('changed.bs.select', function () {
    //        if ($contact_notification_select.selectpicker('val') == 2) {
    //            $contacts_select.siblings().find('input[type="search"]').val(' ').trigger('keyup');
    //            $contacts_wrapper.removeClass('hide');
    //        } else {
    //            $contacts_wrapper.addClass('hide');
    //            deselect_ajax_search($contacts_select[0]);
    //        }
    //    });
    //
    //    $('select[name="billing_type"]').on('change',function(){
    //        var type = $(this).val();
    //        if(type == 1){
    //            $('#project_cost').removeClass('hide');
    //            $('#project_rate_per_hour').addClass('hide');
    //        } else if(type == 2){
    //            $('#project_cost').addClass('hide');
    //            $('#project_rate_per_hour').removeClass('hide');
    //        } else {
    //            $('#project_cost').addClass('hide');
    //            $('#project_rate_per_hour').addClass('hide');
    //        }
    //    });
    //
    //    appValidateForm($('form'), {
    //        name: 'required',
    //        clientid: 'required',
    //        start_date: 'required',
    //        billing_type: 'required',
    //        'notify_contacts[]': {
    //            required: {
    //                depends: function() {
    //                    return !$contacts_wrapper.hasClass('hide');
    //                }
    //            }
    //        },
    //    });
    //
    //    $('select[name="status"]').on('change',function(){
    //        var status = $(this).val();
    //        var mark_all_tasks_completed = $('.mark_all_tasks_as_completed');
    //        var notify_project_members_status_change = $('.notify_project_members_status_change');
    //        mark_all_tasks_completed.removeClass('hide');
    //        if(typeof(original_project_status) != 'undefined'){
    //            if(original_project_status != status){
    //
    //                mark_all_tasks_completed.removeClass('hide');
    //                notify_project_members_status_change.removeClass('hide');
    //
    //                if(status == 4 || status == 5 || status == 3) {
    //                    $('.recurring-tasks-notice').removeClass('hide');
    //                    var notice = "<?php //echo _l('project_changing_status_recurring_tasks_notice'); ?>//";
    //                    notice = notice.replace('{0}', $(this).find('option[value="'+status+'"]').text().trim());
    //                    $('.recurring-tasks-notice').html(notice);
    //                    $('.recurring-tasks-notice').append('<input type="hidden" name="cancel_recurring_tasks" value="true">');
    //                    mark_all_tasks_completed.find('input').prop('checked',true);
    //                } else {
    //                    $('.recurring-tasks-notice').html('').addClass('hide');
    //                    mark_all_tasks_completed.find('input').prop('checked',false);
    //                }
    //            } else {
    //                mark_all_tasks_completed.addClass('hide');
    //                mark_all_tasks_completed.find('input').prop('checked',false);
    //                notify_project_members_status_change.addClass('hide');
    //                $('.recurring-tasks-notice').html('').addClass('hide');
    //            }
    //        }
    //
    //        if(status == 4){
    //            $('.project_marked_as_finished').removeClass('hide');
    //        } else {
    //            $('.project_marked_as_finished').addClass('hide');
    //            $('.project_marked_as_finished').prop('checked',false);
    //        }
    //    });
    //
    //    $('form').on('submit',function(){
    //        $('select[name="billing_type"]').prop('disabled',false);
    //        $('#available_features,#available_features option').prop('disabled',false);
    //        $('input[name="project_rate_per_hour"]').prop('disabled',false);
    //    });
    //
    //    var progress_input = $('input[name="progress"]');
    //    var progress_from_tasks = $('#progress_from_tasks');
    //    var progress = progress_input.val();
    //
    //    $('.project_progress_slider').slider({
    //        min:0,
    //        max:100,
    //        value:progress,
    //        disabled:progress_from_tasks.prop('checked'),
    //        slide: function( event, ui ) {
    //            progress_input.val( ui.value );
    //            $('.label_progress').html(ui.value+'%');
    //        }
    //    });
    //
    //    progress_from_tasks.on('change',function(){
    //        var _checked = $(this).prop('checked');
    //        $('.project_progress_slider').slider({disabled:_checked});
    //    });
    //
    //    $('#project-settings-area input').on('change',function(){
    //        if($(this).attr('id') == 'view_tasks' && $(this).prop('checked') == false){
    //            $('#create_tasks').prop('checked',false).prop('disabled',true);
    //            $('#edit_tasks').prop('checked',false).prop('disabled',true);
    //            $('#view_task_comments').prop('checked',false).prop('disabled',true);
    //            $('#comment_on_tasks').prop('checked',false).prop('disabled',true);
    //            $('#view_task_attachments').prop('checked',false).prop('disabled',true);
    //            $('#view_task_checklist_items').prop('checked',false).prop('disabled',true);
    //            $('#upload_on_tasks').prop('checked',false).prop('disabled',true);
    //            $('#view_task_total_logged_time').prop('checked',false).prop('disabled',true);
    //        } else if($(this).attr('id') == 'view_tasks' && $(this).prop('checked') == true){
    //            $('#create_tasks').prop('disabled',false);
    //            $('#edit_tasks').prop('disabled',false);
    //            $('#view_task_comments').prop('disabled',false);
    //            $('#comment_on_tasks').prop('disabled',false);
    //            $('#view_task_attachments').prop('disabled',false);
    //            $('#view_task_checklist_items').prop('disabled',false);
    //            $('#upload_on_tasks').prop('disabled',false);
    //            $('#view_task_total_logged_time').prop('disabled',false);
    //        }
    //    });
    //
    //    // Auto adjust customer permissions based on selected project visible tabs
    //    // Eq Project creator disable TASKS tab, then this function will auto turn off customer project option Allow customer to view tasks
    //
    //    $('#available_features').on('change',function(){
    //        $("#available_features option").each(function(){
    //            if($(this).data('linked-customer-option') && !$(this).is(':selected')) {
    //                var opts = $(this).data('linked-customer-option').split(',');
    //                for(var i = 0; i<opts.length;i++) {
    //                    var project_option = $('#'+opts[i]);
    //                    project_option.prop('checked',false);
    //                    if(opts[i] == 'view_tasks') {
    //                        project_option.trigger('change');
    //                    }
    //                }
    //            }
    //        });
    //    });
    //    $("#view_tasks").trigger('change');
    //    <?php //if(!isset($project)) { ?>
    //    $('#available_features').trigger('change');
    //    <?php //} ?>
    //});
</script>
</body>
</html>
