<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="mz-panel">
    <div class="mz-panel-header">
        <span class="dash-mtext"><?php echo _l('تنظیمات پروژه'); ?></span>
    </div>
    <div class="mz-panel-body" id="project-settings-area">
        <div class="form-group select-placeholder">
            <label for="contact_notification" class="control-label">
                <span class="text-danger">*</span>
                <?php echo _l('ارسال اعلان'); ?>
            </label>
            <select name="contact_notification" id="contact_notification" class="form-control selectpicker"
                    data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>" required>
                <?php
                $options = [
                    ['id'=> 1 , 'name' => _l('project_send_all_contacts_with_notifications_enabled')],
                    ['id'=> 2 , 'name' => _l('project_send_specific_contacts_with_notification')],
                    ['id'=> 0 , 'name' => _l('project_do_not_send_contacts_notifications')]
                ];
                foreach ($options as $option) { ?>
                    <option value="<?php echo $option['id']; ?>" <?php if ((isset($project) && $project->contact_notification == $option['id'])) {
                        echo ' selected';
                    } ?>><?php echo $option['name']; ?></option>
                <?php } ?>
            </select>
        </div>
        <?php foreach($settings as $setting){

            $checked = ' checked';
            if(isset($project)){
                if($project->settings->{$setting} == 0){
                    $checked = '';
                }
            } else {
                foreach($last_project_settings as $last_setting) {
                    if($setting == $last_setting['name']){
                        // hide_tasks_on_main_tasks_table is not applied on most used settings to prevent confusions
                        if($last_setting['value'] == 0 || $last_setting['name'] == 'hide_tasks_on_main_tasks_table'){
                            $checked = '';
                        }
                    }
                }
                if(count($last_project_settings) == 0 && $setting == 'hide_tasks_on_main_tasks_table') {
                    $checked = '';
                }
            } ?>
            <?php if($setting != 'available_features'){ ?>
                <div class="checkbox">
                    <input type="checkbox" name="settings[<?php echo $setting; ?>]" <?php echo $checked; ?> id="<?php echo $setting; ?>">
                    <label for="<?php echo $setting; ?>">
                        <?php if($setting == 'hide_tasks_on_main_tasks_table'){ ?>
                            <?php echo _l('hide_tasks_on_main_tasks_table'); ?>
                        <?php } else{ ?>
                            <?php echo _l('project_allow_client_to',_l('project_setting_'.$setting)); ?>
                        <?php } ?>
                    </label>
                </div>
            <?php } else { ?>
                <div class="form-group mtop15 select-placeholder project-available-features">
                    <label for="available_features"><?php echo _l('بخش های قابل مشاهده'); ?></label>
                    <select name="settings[<?php echo $setting; ?>][]" id="<?php echo $setting; ?>" multiple="true" class="selectpicker" id="available_features" data-width="100%" data-actions-box="true" data-hide-disabled="true">
                        <?php foreach(get_project_tabs_admin() as $tab) {
                            $selected = '';
                            if(isset($tab['collapse'])){ ?>
                                <optgroup label="<?php echo $tab['name']; ?>">
                                    <?php foreach($tab['children'] as $tab_dropdown) {
                                        $selected = '';
                                        if(isset($project) && (
                                                (isset($project->settings->available_features[$tab_dropdown['slug']])
                                                    && $project->settings->available_features[$tab_dropdown['slug']] == 1)
                                                || !isset($project->settings->available_features[$tab_dropdown['slug']]))) {
                                            $selected = ' selected';
                                        } else if(!isset($project) && count($last_project_settings) > 0) {
                                            foreach($last_project_settings as $last_project_setting) {
                                                if($last_project_setting['name'] == $setting) {
                                                    if(isset($last_project_setting['value'][$tab_dropdown['slug']])
                                                        && $last_project_setting['value'][$tab_dropdown['slug']] == 1) {
                                                        $selected = ' selected';
                                                    }
                                                }
                                            }
                                        } else if(!isset($project)) {
                                            $selected = ' selected';
                                        }
                                        ?>
                                        <option value="<?php echo $tab_dropdown['slug']; ?>"<?php echo $selected; ?><?php if(isset($tab_dropdown['linked_to_customer_option']) && is_array($tab_dropdown['linked_to_customer_option']) && count($tab_dropdown['linked_to_customer_option']) > 0){ ?> data-linked-customer-option="<?php echo implode(',',$tab_dropdown['linked_to_customer_option']); ?>"<?php } ?>><?php echo $tab_dropdown['name']; ?></option>
                                    <?php } ?>
                                </optgroup>
                            <?php } else {
                                if(isset($project) && (
                                        (isset($project->settings->available_features[$tab['slug']])
                                            && $project->settings->available_features[$tab['slug']] == 1)
                                        || !isset($project->settings->available_features[$tab['slug']]))) {
                                    $selected = ' selected';
                                } else if(!isset($project) && count($last_project_settings) > 0) {
                                    foreach($last_project_settings as $last_project_setting) {
                                        if($last_project_setting['name'] == $setting) {
                                            if(isset($last_project_setting['value'][$tab['slug']])
                                                && $last_project_setting['value'][$tab['slug']] == 1) {
                                                $selected = ' selected';
                                            }
                                        }
                                    }
                                } else if(!isset($project)) {
                                    $selected = ' selected';
                                }
                                ?>
                                <option value="<?php echo $tab['slug']; ?>"<?php if($tab['slug'] =='project_overview'){echo ' disabled selected';} ?>
                                    <?php echo $selected; ?>
                                    <?php if(isset($tab['linked_to_customer_option']) && is_array($tab['linked_to_customer_option']) && count($tab['linked_to_customer_option']) > 0){ ?> data-linked-customer-option="<?php echo implode(',',$tab['linked_to_customer_option']); ?>"<?php } ?>>
                                    <?php echo $tab['name']; ?>
                                </option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                </div>
            <?php } ?>
            <hr class="no-margin" />
        <?php } ?>
    </div>
</div>