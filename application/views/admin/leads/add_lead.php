<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<style>
    .custom-fields-form-row{
        visibility: hidden;
    }
</style>
<div id="wrapper">
    <?php echo form_open('admin/leads/add_lead_new',array('id'=>'item-project','class'=>'_transaction_form proposal-form'));?>
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-bell-plus"></i></span>
                        <span class="dash-mtext">افزودن اقدام جدید</span>
                    </div>
                    <div class="mz-panel-body">


                        <div class="col-md-4">
                            <?php
                            $selected = '';
                            if(isset($lead)){
                                $selected = $lead->status;
                            } else if(isset($status_id)){
                                $selected = $status_id;
                            }
                            echo render_leads_status_select($statuses, $selected,'وضعیت');
                            ?>
                        </div>
                        <div class="col-md-4">
                            <?php
                            $selected = (isset($lead) ? $lead->source : get_option('leads_default_source'));
                            echo render_leads_source_select($sources, $selected,'منبع');
                            ?>
                        </div>
                        <div class="col-md-4">
                            <?php
                            $assigned_attrs = array();
                            $selected = (isset($lead) ? $lead->assigned : get_staff_user_id());
                            if(isset($lead)
                                && $lead->assigned == get_staff_user_id()
                                && $lead->addedfrom != get_staff_user_id()
                                && !is_admin($lead->assigned)
                                && !has_permission('leads','','view')
                            ){
                                $assigned_attrs['disabled'] = true;
                            }
                            echo render_select('assigned',$members,array('staffid',array('firstname','lastname')),'اختصاص به',$selected,$assigned_attrs); ?>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group no-mbot" id="inputTagsWrapper">
                                <label for="tags" class="control-label"><i class="fa fa-tag" aria-hidden="true"></i> <?php echo _l('tags'); ?></label>
                                <input type="text" class="tagsinput" id="tags" name="tags" value="<?php echo (isset($lead) ? prep_tags_input(get_tags_in($lead->id,'lead')) : ''); ?>" data-role="tagsinput">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <?php $attrs = (isset($proposal) ? array() : array('autofocus'=>true)); ?>
                            <?php echo render_input('name','عنوان','درخواست ','text',$attrs); ?>



                            <div class="form-group select-placeholder">
                                <label for="clientid" class="control-label"><?php echo _l('مشتری'); ?></label>
                                <label class="mz-float-left"><a href="http://localhost/talash_crm/admin/clients/client">(<?php echo _l('مشتری جدید');?>) </a></label>


                                <select id="clientid" name="customerId" data-live-search="true" data-width="100%" class="ajax-search" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                    <?php $selected = (isset($project) ? $project->clientid : '');
                                    if($selected == ''){
                                        $selected = (isset($customer_id) ? $customer_id: '');
                                    }
                                    if($selected != ''){
                                        $rel_data = get_relation_data('customer',$selected);
                                        $rel_val = get_relation_values($rel_data,'customer');
                                        echo '<option value="'.$rel_val['id'].'" selected>'.$rel_val['name'].'</option>';
                                    } ?>
                                </select>

                            </div>
                            <input type="text" name="company" id="company">

                            <div class="form-group select-placeholder <?php echo (isset($project) && $project->contact_notification == 2) ? '' : '' ?>" id="notify_contacts_wrapper">
                                <label for="notify_contacts" class="control-label"><span class="text-danger">*</span> <?php echo _l('مخاطب، مخاطب های مربوطه') ?></label>
                                <select name="contactId[]" data-id="notify_contacts" id="notify_contacts" class="ajax-search" data-width="100%" data-live-search="true"
                                        data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>" multiple>
                                    <?php
                                    $notify_contact_ids = isset($project) ? unserialize($project->notify_contacts) : [];
                                    foreach ($notify_contact_ids as $contact_id) {
                                        $rel_data = get_relation_data('contact',$contact_id);
                                        $rel_val = get_relation_values($rel_data,'contact');
                                        echo '<option value="'.$rel_val['id'].'" selected>'.$rel_val['name'].'</option>';
                                    }
                                    ?>
                                </select>
                            </div>

                            <?php //$value = (isset($lead) ? $lead->title : ''); ?>
                            <?php //echo render_input('title','lead_title',$value); ?>



                            <?php //$value = (isset($lead) ? $lead->company : ''); ?>
                            <?php //echo render_input('company','lead_company',$value); ?>

                            <?php echo render_input('Dnumber','شماره درخواست',''); ?>

                        </div>

                        <div class="col-md-6">
                            <div class="form-group select-placeholder">
                                <label for="peymentType" class="control-label"><?php echo _l('میزان اهمیت'); ?></label>
                                <select name="Dforce" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                    <option value="" selected><?php echo _l('لطفا انتخاب کنید'); ?></option>
                                    <option value="<?php echo _l('1'); ?>"><?php echo _l('خیلی زیاد'); ?></option>
                                    <option value="<?php echo _l('2'); ?>"><?php echo _l('زیاد'); ?></option>
                                    <option value="<?php echo _l('3'); ?>"><?php echo _l('متوسط'); ?></option>
                                    <option value="<?php echo _l('4'); ?>"><?php echo _l('کم'); ?></option>
                                    <option value="<?php echo _l('5'); ?>"><?php echo _l('خیلی کم'); ?></option>
                                </select>
                            </div>


                            <div class="form-group">
                                <label for="lead_value"><?php echo _l('ارزش اقدام'); ?></label>
                                <div class="input-group currency_input" data-toggle="tooltip" title="<?php echo _l('lead_value_tooltip'); ?>">
                                    <input type="number" class="form-control" name="lead_value" value="<?php if(isset($lead)){echo $lead->lead_value; }?>">
                                    <div class="input-group-addon">
                                        <?php echo $base_currency->symbol; ?>
                                    </div>
                                </div>
                                </label>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <?php //$value = (isset($project) ? _d($project->start_date) : _d(date('Y-m-d'))); ?>
                                <?php echo render_date_input('dateS','تاریخ شروع',''); ?>
                                <?php //$value = (isset($project) ? _d($project->deadline) : ''); ?>
                                <?php echo render_date_input('dateE','تاریخ پایان',''); ?>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <?php //$value = (isset($lead) ? $lead->description : ''); ?>
                            <?php //echo render_textarea('description','lead_description',$value); ?>

                            <!-- -->
                            <hr class="hr-panel-heading" />
                            <div class="mz-panel">
                                <div class="mz-panel-header">
                                    <span class="dash-micon"><i class="my-ti ti ti-repeat"></i></span>
                                    <span class="dash-mtext">اقلام مورد معامله</span>
                                </div>
                                <?php
                                $this->load->view('admin/estimates/_add_edit_items');
                                ?>
                            </div>
                            <?php $this->load->view('admin/invoice_items/item2'); ?>

                            <hr class="hr-panel-heading" />
                            <!-- -->



                            <?php //$rel_id_custom_field = (isset($project) ? $project->id : false); ?>
                            <?php //echo render_custom_fields('projects',$rel_id_custom_field); ?>
                            <p class="bold"><?php echo _l('شرح اقدام'); ?></p>
                            <?php //$contents = ''; if(isset($project)){$contents = $project->description;} ?>
                            <?php echo render_textarea('description','','',array(),array(),'','tinymce'); ?>








                            <div class="row">
                                <div class="col-md-12">
                                    <?php if(!isset($lead)){ ?>
                                        <div class="lead-select-date-contacted hide">
                                            <?php echo render_datetime_input('custom_contact_date','lead_add_edit_datecontacted','',array('data-date-end-date'=>date('Y-m-d'))); ?>
                                        </div>
                                    <?php } else { ?>
                                        <?php echo render_datetime_input('lastcontact','leads_dt_last_contact',_dt($lead->lastcontact),array('data-date-end-date'=>date('Y-m-d'))); ?>
                                    <?php } ?>
                                    <div class="checkbox-inline checkbox checkbox-primary<?php if(isset($lead)){echo ' hide';} ?><?php if(isset($lead) && (is_lead_creator($lead->id) || has_permission('leads','','edit'))){echo ' lead-edit';} ?>">
                                        <input type="checkbox" name="is_public" <?php if(isset($lead)){if($lead->is_public == 1){echo 'checked';}}; ?> id="lead_public">
                                        <label for="lead_public"><?php echo _l('عمومی'); ?></label>
                                    </div>
                                    <?php if(!isset($lead)){ ?>
                                        <div class="checkbox-inline checkbox checkbox-primary">
                                            <input type="checkbox" name="contacted_today" id="contacted_today" checked>
                                            <label for="contacted_today"><?php echo _l('امروز'); ?></label>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mtop15">
                            <?php $rel_id = (isset($lead) ? $lead->id : false); ?>
                            <?php echo render_custom_fields('leads',$rel_id); ?>
                        </div>

                    </div>



                </div>
            </div>
        </div>
    </div>
    <div class="btn-bottom-toolbar btn-toolbar-container-out text-right">
        <button class="btn btn-default">
            انصراف            </button>
        <button class="btn btn-info save-and-add-contact customer-form-submiter">
            ذخیره        </button>
    </div>
    <?php echo form_close(); ?>
</div>



<script id="hidden-columns-table-leads" type="text/json">
   <?php echo get_staff_meta(get_staff_user_id(), 'hidden-columns-table-leads'); ?>
</script>






<?php init_tail(); ?>
<script>
    <?php if(isset($project)){ ?>
    var original_project_status = '<?php echo $project->status; ?>';
    <?php } ?>

    $(function(){

        $contacts_select = $('#notify_contacts'),
            $contacts_wrapper = $('#notify_contacts_wrapper'),
            $clientSelect = $('#clientid'),
            $contact_notification_select = $('#contact_notification');

        init_ajax_search('contacts', $contacts_select, {
            rel_id: $contacts_select.val(),
            type: 'contacts',
            extra: {
                client_id: function () {return $clientSelect.val();}
            }
        });

        if ($clientSelect.val() == '') {
            $contacts_select.prop('disabled', true);
            $contacts_select.selectpicker('refresh');
        } else {
            $contacts_select.siblings().find('input[type="search"]').val(' ').trigger('keyup');
        }

        $clientSelect.on('changed.bs.select', function () {
            if ($clientSelect.selectpicker('val') == '') {
                $contacts_select.prop('disabled', true);
            } else {
                $contacts_select.siblings().find('input[type="search"]').val(' ').trigger('keyup');
                $contacts_select.prop('disabled', false);
            }
            deselect_ajax_search($contacts_select[0]);
            $contacts_select.find('option').remove();
            $contacts_select.selectpicker('refresh');
        });

        $contact_notification_select.on('changed.bs.select', function () {
            if ($contact_notification_select.selectpicker('val') == 2) {
                $contacts_select.siblings().find('input[type="search"]').val(' ').trigger('keyup');
                $contacts_wrapper.removeClass('hide');
            } else {
                $contacts_wrapper.addClass('hide');
                deselect_ajax_search($contacts_select[0]);
            }
        });

        $('select[name="billing_type"]').on('change',function(){
            var type = $(this).val();
            if(type == 1){
                $('#project_cost').removeClass('hide');
                $('#project_rate_per_hour').addClass('hide');
            } else if(type == 2){
                $('#project_cost').addClass('hide');
                $('#project_rate_per_hour').removeClass('hide');
            } else {
                $('#project_cost').addClass('hide');
                $('#project_rate_per_hour').addClass('hide');
            }
        });

        appValidateForm($('form'), {
            name: 'required',
            clientid: 'required',
            start_date: 'required',
            billing_type: 'required',
            'notify_contacts[]': {
                required: {
                    depends: function() {
                        return !$contacts_wrapper.hasClass('hide');
                    }
                }
            },
        });


    });
</script>









<?php include_once(APPPATH.'views/admin/leads/status.php'); ?>
<?php //init_tail(); ?>
<script>
    var openLeadID = '<?php echo $leadid; ?>';
    $(function(){
        leads_kanban();
        $('#leads_bulk_mark_lost').on('change', function(){
            $('#move_to_status_leads_bulk').prop('disabled', $(this).prop('checked') == true);
            $('#move_to_status_leads_bulk').selectpicker('refresh')
        });
        $('#move_to_status_leads_bulk').on('change', function(){
            if($(this).selectpicker('val') != '') {
                $('#leads_bulk_mark_lost').prop('disabled', true);
                $('#leads_bulk_mark_lost').prop('checked', false);
            } else {
                $('#leads_bulk_mark_lost').prop('disabled', false);
            }
        });
    });
</script>

<script>
    let cusIDmain = document.getElementById('clientid');
    let babyCus = document.getElementById('company');

    babyCus.style.visibility="hidden";
    cusIDmain.addEventListener('change',()=>{
        let str;
        for(let i=0; i < cusIDmain.childNodes.length; i++){
           if(cusIDmain.childNodes[i].value == cusIDmain.value)
            str = cusIDmain.childNodes[i].innerText;
        }
        babyCus.value = str;

    });

    //------------------------------------------------------


    let conIDmain = document.getElementById('notify_contacts');
    let babyCon = document.getElementById('custom_fields[leads][8]');

    babyCon.style.visibility="hidden";
    conIDmain.addEventListener('change',()=>{
        let str;
        babyCon.value = '';
        for(let i=0; i < conIDmain.childNodes.length; i++){
            if(conIDmain.childNodes[i].value == conIDmain.value)
                str = conIDmain.childNodes[i].innerText;
        }
        babyCon.value = str;
    });

</script>

</body>
</html>
