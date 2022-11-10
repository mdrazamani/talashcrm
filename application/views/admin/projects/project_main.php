<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="mz-panel">
    <div class="mz-panel-header">
        <?php echo !empty($title_i) ? $title_i : ''; ?>
        <span class="dash-mtext">   <?php echo $title; ?></span>
    </div>

    <?php //var_dump($add_items);?>


    <div class="mz-panel-body">
        <?php
        $disable_type_edit = '';
        if(isset($project)){
            if($project->billing_type != 1){
                if(total_rows(db_prefix().'tasks',array('rel_id'=>$project->id,'rel_type'=>'project','billable'=>1,'billed'=>1)) > 0){
                    $disable_type_edit = 'disabled';
                }
            }
        }
        ?>

        <?php $value = (isset($project) ? $project->name : '');
        if(empty($value)){
            $value = (isset($lead) ? $lead->name : '');
        }
        ?>
        <?php echo render_input('name','عنوان پروژه',$value); ?>

        <?php if(isset($lead)){ ?>
            <input type="hidden" id="is_lead" name="is_lead" value="<?php echo $lead->id;?>" />
        <?php }?>
        <div class="form-group select-placeholder">
            <label for="clientid" class="control-label"><?php echo _l('مشتری'); ?></label>
            <label class="mz-float-left"><a href="http://localhost/crm/perfex_crm/admin/clients/client">(<?php echo _l('مشتری جدید');?>) </a></label>


            <select id="clientid" name="clientid" data-live-search="true" data-width="100%" class="ajax-search" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                <?php $selected = (isset($project) ? $project->clientid : '');
                if(empty($selected)){
                    $selected = (isset($lead) ? $lead->customerId : '');
                }
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

        <!-- hide class -->
        <div class="form-group select-placeholder <?php echo (isset($project) && $project->contact_notification == 2) ? '' : '' ?>" id="notify_contacts_wrapper">
            <label for="notify_contacts" class="control-label"><span class="text-danger">*</span> <?php echo _l('مخاطب، مخاطب های مربوطه') ?></label>
            <select name="notify_contacts[]" data-id="notify_contacts" id="notify_contacts" class="ajax-search" data-width="100%" data-live-search="true"
                    data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>" multiple>
                <?php
                $notify_contact_ids = isset($project) ? unserialize($project->notify_contacts) : [];
                if(empty($notify_contact_ids)){
                    $notify_contact_ids = (isset($lead) ? unserialize($lead->contactId) : []);
                }
                foreach ($notify_contact_ids as $contact_id) {
                    $rel_data = get_relation_data('contact',$contact_id);
                    $rel_val = get_relation_values($rel_data,'contact');
                    echo '<option value="'.$rel_val['id'].'" selected>'.$rel_val['name'].'</option>';
                }
                ?>
            </select>
        </div>

        <div class="form-group">
            <div class="checkbox checkbox-success">
                <input type="checkbox" <?php if((isset($project) && $project->progress_from_tasks == 1) || !isset($project)){echo 'checked';} ?> name="progress_from_tasks" id="progress_from_tasks">
                <label for="progress_from_tasks"><?php echo _l('محاسبه پیشرفت از طریق وظایف'); ?></label>
            </div>
        </div>
        <?php
        if(isset($project) && $project->progress_from_tasks == 1){
            $value = $this->projects_model->calc_progress_by_tasks($project->id);
        } else if(isset($project) && $project->progress_from_tasks == 0){
            $value = $project->progress;
        } else {
            $value = 0;
        }
        ?>
        <label for=""><?php echo _l('پیشرفت'); ?> <span class="label_progress"><?php echo $value; ?>%</span></label>
        <?php echo form_hidden('progress',$value); ?>
        <div class="project_progress_slider project_progress_slider_horizontal mbot15"></div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group select-placeholder">
                    <label for="billing_type"><?php echo _l('نوع صورت حساب'); ?></label>
                    <div class="clearfix"></div>
                    <select name="billing_type" class="selectpicker" id="billing_type" data-width="100%" <?php echo $disable_type_edit ; ?> data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                        <option value=""></option>
                        <option value="1" <?php if(isset($project) && $project->billing_type == 1 || !isset($project) && $auto_select_billing_type && $auto_select_billing_type->billing_type == 1){echo 'selected'; } ?>><?php echo _l('نرخ ثابت'); ?></option>
                        <option value="2" <?php if(isset($project) && $project->billing_type == 2 || !isset($project) && $auto_select_billing_type && $auto_select_billing_type->billing_type == 2){echo 'selected'; } ?>><?php echo _l('ساعت پروژه'); ?></option>
                        <option value="3" data-subtext="<?php echo _l('(کار بر اساس نرخ ساعتی)'); ?>" <?php if(isset($project) && $project->billing_type == 3 || !isset($project) && $auto_select_billing_type && $auto_select_billing_type->billing_type == 3){echo 'selected'; } ?>><?php echo _l('ساعت کار'); ?></option>
                    </select>
                    <?php if($disable_type_edit != ''){
                        echo '<p class="text-danger">'._l('cant_change_billing_type_billed_tasks_found').'</p>';
                    }
                    ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group select-placeholder">
                    <label for="status"><?php echo _l('وضعیت'); ?></label>
                    <div class="clearfix"></div>
                    <select name="status" id="status" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                        <?php foreach($statuses as $status){ ?>
                            <option value="<?php echo $status['id']; ?>" <?php if(!isset($project) && $status['id'] == 2 || (isset($project) && $project->status == $status['id'])){echo 'selected';} ?>><?php echo $status['name']; ?></option>
                        <?php } ?>
                    </select>
                </div>
            </div>
        </div>
        <?php if(isset($project) && project_has_recurring_tasks($project->id)) { ?>
            <div class="alert alert-warning recurring-tasks-notice hide"></div>
        <?php } ?>
        <?php if(is_email_template_active('project-finished-to-customer')){ ?>
            <div class="form-group project_marked_as_finished hide">
                <div class="checkbox checkbox-primary">
                    <input type="checkbox" name="project_marked_as_finished_email_to_contacts" id="project_marked_as_finished_email_to_contacts">
                    <label for="project_marked_as_finished_email_to_contacts"><?php echo _l('project_marked_as_finished_to_contacts'); ?></label>
                </div>
            </div>
        <?php } ?>
        <?php if(isset($project)){ ?>
            <div class="form-group mark_all_tasks_as_completed hide">
                <div class="checkbox checkbox-primary">
                    <input type="checkbox" name="mark_all_tasks_as_completed" id="mark_all_tasks_as_completed">
                    <label for="mark_all_tasks_as_completed"><?php echo _l('project_mark_all_tasks_as_completed'); ?></label>
                </div>
            </div>
            <div class="notify_project_members_status_change hide">
                <div class="checkbox checkbox-primary">
                    <input type="checkbox" name="notify_project_members_status_change" id="notify_project_members_status_change">
                    <label for="notify_project_members_status_change"><?php echo _l('notify_project_members_status_change'); ?></label>
                </div>
                <hr />
            </div>
        <?php } ?>
        <?php
        $input_field_hide_class_total_cost = '';
        if(!isset($project)){
            if($auto_select_billing_type && $auto_select_billing_type->billing_type != 1 || !$auto_select_billing_type){
                $input_field_hide_class_total_cost = 'hide';
            }
        } else if(isset($project) && $project->billing_type != 1){
            $input_field_hide_class_total_cost = 'hide';
        }
        ?>

        <?php if(isset($lead)){

                    ?>
            <div id="project_cost" class="">
                <?php $value = (isset($project) ? $project->project_cost : '');
                if(empty($value)){
                    $value = round((isset($lead) ? $lead->lead_value : ''));
                }
                ?>
                <?php echo render_input('project_cost','کل مبلغ برآورد شده(ریال)',$value,'number'); ?>
            </div>
               <?php }else{
            ?>
            <div id="project_cost" class="<?php echo $input_field_hide_class_total_cost; ?>">
                <?php $value = (isset($project) ? $project->project_cost : ''); ?>
                <?php echo render_input('project_cost','کل مبلغ برآورد شده(ریال)',$value,'number'); ?>
            </div>
       <?php }
         ?>

        <?php
        $input_field_hide_class_rate_per_hour = '';
        if(!isset($project)){
            if($auto_select_billing_type && $auto_select_billing_type->billing_type != 2 || !$auto_select_billing_type){
                $input_field_hide_class_rate_per_hour = 'hide';
            }
        } else if(isset($project) && $project->billing_type != 2){
            $input_field_hide_class_rate_per_hour = 'hide';
        }
        ?>
        <div id="project_rate_per_hour" class="<?php echo $input_field_hide_class_rate_per_hour; ?>">
            <?php $value = (isset($project) ? $project->project_rate_per_hour : ''); ?>
            <?php
            $input_disable = array();
            if($disable_type_edit != ''){
                $input_disable['disabled'] = true;
            }
            ?>
            <?php echo render_input('project_rate_per_hour','نرخ هر یک ساعت',$value,'number',$input_disable); ?>
        </div>
        <div class="row">
            <div class="col-md-6">
                <?php echo render_input('estimated_hours','کل زمان برآورد شده(ساعت)',isset($project) ? $project->estimated_hours : '','number'); ?>
            </div>
            <div class="col-md-6">
                <?php
                $selected = array();
                if(isset($project_members)){
                    foreach($project_members as $member){
                        array_push($selected,$member['staff_id']);
                    }
                } else {
                    array_push($selected,get_staff_user_id());
                }
                echo render_select('project_members[]',$staff,array('staffid',array('firstname','lastname')),'اعضا مربوطه',$selected,array('multiple'=>true,'data-actions-box'=>true),array(),'','',false);
                ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <?php $value = (isset($project) ? _d($project->start_date) : _d(date('Y-m-d')));
                if(empty($value)){
                    $value = (isset($lead) ? _d($lead->dateS) : '');
                }
                ?>
                <?php echo render_date_input('start_date','تاریخ شروع',$value); ?>
            </div>
            <div class="col-md-6">
                <?php $value = (isset($project) ? _d($project->deadline) : '');
                if(empty($value)){
                    $value = (isset($lead) ? _d($lead->dateE) : '');
                }
                ?>
                <?php echo render_date_input('deadline','مرز پایان',$value); ?>
            </div>
        </div>
        <?php if(isset($project) && $project->date_finished != null && $project->status == 4) { ?>
            <?php echo render_datetime_input('date_finished','project_completed_date',_dt($project->date_finished)); ?>
        <?php } ?>
        <div class="form-group">
            <label for="tags" class="control-label"><i class="fa fa-tag" aria-hidden="true"></i> <?php echo _l('برچسب ها'); ?></label>
            <input type="text" class="tagsinput" id="tags" name="tags" value="<?php echo (isset($project) ? prep_tags_input(get_tags_in($project->id,'project')) : ''); ?>" data-role="tagsinput">
        </div>

        <?php
        //                        if($this->input->get('estimate_request_id')) {
        //                            echo form_hidden('estimate_request_id', $this->input->get('estimate_request_id'));
        //                        }
        //                        echo $this->input->get('estimate_request_id');
        ?>
        <?php //$this->load->view('admin/invoice_items/item_select'); ?>

        <hr class="hr-panel-heading" />
        <?php //echo form_open('',array('id'=>'item-project','class'=>'_transaction_form proposal-form'));?>
        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-repeat"></i></span>
                <span class="dash-mtext">اقلام مورد معامله</span>
            </div>
            <?php $this->load->view('admin/estimates/_add_edit_items'); ?>
        </div>
        <?php $this->load->view('admin/invoice_items/item2'); ?>
        <?php //echo form_close(); ?>
        <hr class="hr-panel-heading" />




        <?php $rel_id_custom_field = (isset($project) ? $project->id : false); ?>
        <?php echo render_custom_fields('projects',$rel_id_custom_field); ?>
        <p class="bold"><?php echo _l('شرح پروژه'); ?></p>
        <?php $contents = ''; if(isset($project)){$contents = $project->description;}
        if(empty($contents)){
            $contents = (isset($lead) ? $lead->description : '');
        }
        ?>
        <?php echo render_textarea('description','',$contents,array(),array(),'','tinymce'); ?>

        <?php if (isset($estimate)) {?>
            <hr class="hr-panel-heading" />
            <h5 class="font-medium"><?php echo _l('estimate_items_convert_to_tasks') ?></h5>
            <input type="hidden" name="estimate_id" value="<?php echo $estimate->id ?>">
            <div class="row">
                <?php foreach($estimate->items as $item) { ?>
                    <div class="col-md-8 border-right">
                        <div class="checkbox mbot15">
                            <input type="checkbox" name="items[]" value="<?php echo $item['id'] ?>" checked id="item-<?php echo $item['id'] ?>">
                            <label for="item-<?php echo $item['id'] ?>">
                                <h5 class="no-mbot no-mtop text-uppercase"><?php echo $item['description'] ?></h5>
                                <span class="text-muted"><?php echo $item['long_description'] ?></span>
                            </label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div data-toggle="tooltip" title="<?php echo _l('task_single_assignees_select_title'); ?>">
                            <?php echo render_select('items_assignee[]',$staff,array('staffid',array('firstname','lastname')),'', get_staff_user_id(),array('data-actions-box'=>true),array(),'','clean-select',false); ?>
                        </div>
                    </div>
                <?php } ?>
            </div>
        <?php } ?>
        <hr class="hr-panel-heading" />

        <?php if(is_email_template_active('assigned-to-project')){ ?>
            <div class="checkbox checkbox-primary">
                <input type="checkbox" name="send_created_email" id="send_created_email">
                <label for="send_created_email"><?php echo _l('ارسال ایمیل ایجاد پروژه'); ?></label>
            </div>
        <?php } ?>
        <div class="btn-bottom-toolbar text-right">
            <button type="submit" data-form="#project_form" class="btn btn-info" autocomplete="off" data-loading-text="<?php echo _l('wait_text'); ?>"><?php echo _l('ذخیره'); ?></button>
        </div>
    </div>
</div>