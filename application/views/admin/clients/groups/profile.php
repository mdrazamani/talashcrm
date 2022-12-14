<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="row">
   <?php echo form_open($this->uri->uri_string(),array('class'=>'client-form','autocomplete'=>'off')); ?>
   <div class="additional"></div>
   <div class="col-md-12">
      <div class="horizontal-scrollable-tabs">
         <div class="scroller arrow-left"><i class="fa fa-angle-left"></i></div>
         <div class="scroller arrow-right"><i class="fa fa-angle-right"></i></div>
         <div class="horizontal-tabs">
            <ul class="nav nav-tabs profile-tabs row customer-profile-tabs nav-tabs-horizontal" role="tablist">
               <li role="presentation" class="<?php if(!$this->input->get('tab')){echo 'active';}; ?>">
                  <a href="#contact_info" aria-controls="contact_info" role="tab" data-toggle="tab">
                  <?php echo _l( 'مشخصات مشتری'); ?>
                  </a>
               </li>
               <?php
                  $customer_custom_fields = false;
                  if(total_rows(db_prefix().'customfields',array('fieldto'=>'customers','active'=>1)) > 0 ){
                       $customer_custom_fields = true;
                   ?>
               <li role="presentation" class="<?php if($this->input->get('tab') == 'custom_fields'){echo 'active';}; ?>">
                  <a href="#custom_fields" aria-controls="custom_fields" role="tab" data-toggle="tab">
                  <?php echo hooks()->apply_filters('customer_profile_tab_custom_fields_text', _l( 'custom_fields')); ?>
                  </a>
               </li>
               <?php } ?>
               <li role="presentation">
                  <a href="#billing_and_shipping" aria-controls="billing_and_shipping" role="tab" data-toggle="tab">
                  <?php echo _l( 'صورت حساب-حمل و نقل'); ?>
                  </a>
               </li>
                <li role="presentation">
                    <a href="#iran_companys" aria-controls="iran_companys" role="tab" data-toggle="tab">
                        <?php echo _l( 'موارد اضافه'); ?>
                    </a>
                </li>
               <?php hooks()->do_action('after_customer_billing_and_shipping_tab', isset($client) ? $client : false); ?>
               <?php if(isset($client)){ ?>
               <li role="presentation">
                  <a href="#customer_admins" aria-controls="customer_admins" role="tab" data-toggle="tab">
                  <?php echo _l( 'مدیران مشتری' ); ?>
                  <?php if(count($customer_admins) > 0 ) { ?>
                     <span class="badge bg-default"><?php echo count($customer_admins) ?></span>
                  <?php } ?>
                  </a>
               </li>
               <?php hooks()->do_action('after_customer_admins_tab',$client); ?>
               <?php } ?>
            </ul>
         </div>
      </div>
      <div class="tab-content mtop15">
         <?php hooks()->do_action('after_custom_profile_tab_content',isset($client) ? $client : false); ?>
         <?php if($customer_custom_fields) { ?>
         <div role="tabpanel" class="tab-pane <?php if($this->input->get('tab') == 'custom_fields'){echo ' active';}; ?>" id="custom_fields">
            <?php $rel_id=( isset($client) ? $client->userid : false); ?>
            <?php echo render_custom_fields( 'customers',$rel_id); ?>
         </div>
         <?php } ?>
         <div role="tabpanel" class="tab-pane<?php if(!$this->input->get('tab')){echo ' active';}; ?>" id="contact_info">
            <div class="row">
               <div class="col-md-12 mtop15 <?php if(isset($client) && (!is_empty_customer_company($client->userid) && total_rows(db_prefix().'contacts',array('userid'=>$client->userid,'is_primary'=>1)) > 0)) { echo ''; } else {echo ' hide';} ?>" id="client-show-primary-contact-wrapper">
                  <div class="checkbox checkbox-info mbot20 no-mtop">
                     <input type="checkbox" name="show_primary_contact"<?php if(isset($client) && $client->show_primary_contact == 1){echo ' checked';}?> value="1" id="show_primary_contact">
                     <label for="show_primary_contact"><?php echo _l('show_primary_contact',_l('invoices').', '._l('estimates').', '._l('payments').', '._l('credit_notes')); ?></label>
                  </div>
               </div>
               <div class="col-md-6">

                   <?php
                   $value = (isset($client) ? $client->customer_type : '');
                   $checked1 =
                   $value1 = '1';
                   $value2 = '2';
                   ?>
                   <?php echo render_input( 'customer_type', 'حقوقی',$value1,'radio',(isset($client) ? ($value == $value1 ? ['checked' => ''] : "") : ['checked' => '']),'','mz-formGroup','mz-radioClass'); ?>
                   <?php echo render_input( 'customer_type', 'حقیقی',$value2,'radio',($value == $value2 ? ['checked' => ''] : ""),'','mz-formGroup','mz-radioClass'); ?>

                  <?php $value=( isset($client) ? $client->company : ''); ?>
                  <?php $attrs = (isset($client) ? array() : array('autofocus'=>true)); ?>
                  <?php echo render_input( 'company', 'نام شرکت',$value,'text',$attrs,'','typeis1'); ?>

                   <?php $value=( isset($client) ? $client->customerName : ''); ?>
                   <?php echo render_input( 'customerName', 'نام',$value,'text',$attrs,'','typeis2'); ?>
                   <?php $value=( isset($client) ? $client->customerFamily : ''); ?>
                   <?php echo render_input( 'customerFamily', 'نام خانوادگی',$value,'text',$attrs,'','typeis2'); ?>


                  <div id="company_exists_info" class="hide"></div>
                  <?php //if(get_option('company_requires_vat_number_field') == 1){
                     //$value=( isset($client) ? $client->vat : '');
                     //echo render_input( 'vat', 'کد مالیاتی',$value);
                     //} ?>
                  <?php
                  $value=( isset($client) ? $client->cusEmail : '');
                  echo render_input( 'cusEmail', 'ایمیل',$value,'email');
                  $value=( isset($client) ? $client->phonenumber : '');
                  ?>
                  <?php echo render_input( 'phonenumber', 'تلفن تماس',$value); ?>
                  <?php if((isset($client) && empty($client->website)) || !isset($client)){
                     $value=( isset($client) ? $client->website : '');
                     echo render_input( 'website', 'وبسایت',$value);
                     } else { ?>
                  <div class="form-group">
                     <label for="website"><?php echo _l('client_website'); ?></label>
                     <div class="input-group">
                        <input type="text" name="website" id="website" value="<?php echo $client->website; ?>" class="form-control">
                        <div class="input-group-addon">
                           <span><a href="<?php echo maybe_add_http($client->website); ?>" target="_blank" tabindex="-1"><i class="fa fa-globe"></i></a></span>
                        </div>
                     </div>
                  </div>
                  <?php }
                     $selected = array();
                     if(isset($customer_groups)){
                       foreach($customer_groups as $group){
                          array_push($selected,$group['groupid']);
                       }
                     }
                     if(is_admin() || get_option('staff_members_create_inline_customer_groups') == '1'){
                      echo render_select_with_input_group('groups_in[]',$groups,array('id','name'),'گروه',$selected,'<a href="#" data-toggle="modal" data-target="#customer_group_modal"><i class="fa fa-plus"></i></a>',array('multiple'=>true,'data-actions-box'=>true),array(),'','',false);
                      } else {
                        echo render_select('groups_in[]',$groups,array('id','name'),'customer_groups',$selected,array('multiple'=>true,'data-actions-box'=>true),array(),'','',false);
                      }
                     ?>
                  <?php if(!isset($client)){ ?>
                  <i class="fa fa-question-circle pull-left" data-toggle="tooltip" data-title="<?php echo _l('customer_currency_change_notice'); ?>"></i>
                  <?php }
                     $s_attrs = array('data-none-selected-text'=>_l('system_default_string'));
                     $selected = '';
                     if(isset($client) && client_have_transactions($client->userid)){
                        $s_attrs['disabled'] = true;
                     }
                     foreach($currencies as $currency){
                        if(isset($client)){
                          if($currency['id'] == $client->default_currency){
                            $selected = $currency['id'];
                         }
                      }
                     }
                            // Do not remove the currency field from the customer profile!
                     echo render_select('default_currency',$currencies,array('id','name','symbol'),'ارز',$selected,$s_attrs); ?>
                  <?php if(!is_language_disabled()){ ?>
                  <div class="form-group select-placeholder">
                     <label for="default_language" class="control-label"><?php echo _l('زبان پیش فرض'); ?>
                     </label>
                     <select name="default_language" id="default_language" class="form-control selectpicker" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                        <option value=""><?php echo _l('system_default_string'); ?></option>
                        <?php foreach($this->app->get_available_languages() as $availableLanguage){
                           $selected = '';
                           if(isset($client)){
                              if($client->default_language == $availableLanguage){
                                 $selected = 'selected';
                              }
                           }
                           ?>
                        <option value="<?php echo $availableLanguage; ?>" <?php echo $selected; ?>><?php echo ucfirst($availableLanguage); ?></option>
                        <?php } ?>
                     </select>
                  </div>
                  <?php } ?>

               </div>
               <div class="col-md-6">
                  <?php $value=( isset($client) ? $client->address : ''); ?>
                  <?php echo render_textarea( 'address', 'آدرس',$value); ?>
                  <?php $value=( isset($client) ? $client->city : ''); ?>
                  <?php echo render_input( 'city', 'شهر',$value); ?>
                  <?php $value=( isset($client) ? $client->state : ''); ?>
                  <?php echo render_input( 'state', 'استان-ایالت',$value); ?>
                  <?php $value=( isset($client) ? $client->zip : ''); ?>
                  <?php echo render_input( 'zip', 'کد پستی',$value); ?>
                  <?php $countries= get_all_countries();
                     $customer_default_country = get_option('customer_default_country');
                     $selected =( isset($client) ? $client->country : $customer_default_country);
                     echo render_select( 'country',$countries,array( 'country_id',array( 'short_name')), 'کشور',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex')));
                     ?>
               </div>
            </div>
         </div>
         <?php if(isset($client)){ ?>
         <div role="tabpanel" class="tab-pane" id="customer_admins">
            <?php if (has_permission('customers', '', 'create') || has_permission('customers', '', 'edit')) { ?>
            <a href="#" data-toggle="modal" data-target="#customer_admins_assign" class="btn btn-info mbot30"><?php echo _l('کارمند مربوطه را تعیین کنید'); ?></a>
            <?php } ?>
            <table class="table dt-table">
               <thead>
                  <tr>
                     <th><?php echo _l('کارمند'); ?></th>
                     <th><?php echo _l('تاریخ تعیین شده'); ?></th>
                     <?php if(has_permission('customers','','create') || has_permission('customers','','edit')){ ?>
                     <th><?php echo _l('گزینه ها'); ?></th>
                     <?php } ?>
                  </tr>
               </thead>
               <tbody>
                  <?php foreach($customer_admins as $c_admin){ ?>
                  <tr>
                     <td><a href="<?php echo admin_url('profile/'.$c_admin['staff_id']); ?>">
                        <?php echo staff_profile_image($c_admin['staff_id'], array(
                           'staff-profile-image-small',
                           'mright5'
                           ));
                           echo get_staff_full_name($c_admin['staff_id']); ?></a>
                     </td>
                     <td data-order="<?php echo $c_admin['date_assigned']; ?>"><?php echo _dt($c_admin['date_assigned']); ?></td>
                     <?php if(has_permission('customers','','create') || has_permission('customers','','edit')){ ?>
                     <td>
                        <a href="<?php echo admin_url('clients/delete_customer_admin/'.$client->userid.'/'.$c_admin['staff_id']); ?>" class="btn btn-danger _delete btn-icon"><i class="fa fa-remove"></i></a>
                     </td>
                     <?php } ?>
                  </tr>
                  <?php } ?>
               </tbody>
            </table>
         </div>
         <?php } ?>
         <div role="tabpanel" class="tab-pane" id="billing_and_shipping">
            <div class="row">
               <div class="col-md-12">
                  <div class="row">
                     <div class="col-md-6">
                        <h4 class="no-mtop"><?php echo _l('آدرس صورت حساب'); ?> <a href="#" class="pull-right billing-same-as-customer"><small class="font-medium-xs"><?php echo _l('مانند اطلاعات مشتری'); ?></small></a></h4>
                        <hr />
                        <?php $value=( isset($client) ? $client->billing_street : ''); ?>
                        <?php echo render_textarea( 'billing_street', 'آدرس',$value); ?>
                        <?php $value=( isset($client) ? $client->billing_city : ''); ?>
                        <?php echo render_input( 'billing_city', 'شهر',$value); ?>
                        <?php $value=( isset($client) ? $client->billing_state : ''); ?>
                        <?php echo render_input( 'billing_state', 'استان-ایالت',$value); ?>
                        <?php $value=( isset($client) ? $client->billing_zip : ''); ?>
                        <?php echo render_input( 'billing_zip', 'کد پستی',$value); ?>
                        <?php $selected=( isset($client) ? $client->billing_country : '' ); ?>
                        <?php echo render_select( 'billing_country',$countries,array( 'country_id',array( 'short_name')), 'کشور',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex'))); ?>
                     </div>
                     <div class="col-md-6">
                        <h4 class="no-mtop">
                           <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('customer_shipping_address_notice'); ?>"></i>
                           <?php echo _l('آدرس حمل و نقل'); ?> <a href="#" class="pull-right customer-copy-billing-address"><small class="font-medium-xs"><?php echo _l('کپی آدرس صورت حساب'); ?></small></a>
                        </h4>
                        <hr />
                        <?php $value=( isset($client) ? $client->shipping_street : ''); ?>
                        <?php echo render_textarea( 'shipping_street', 'آدرس',$value); ?>
                        <?php $value=( isset($client) ? $client->shipping_city : ''); ?>
                        <?php echo render_input( 'shipping_city', 'شهر',$value); ?>
                        <?php $value=( isset($client) ? $client->shipping_state : ''); ?>
                        <?php echo render_input( 'shipping_state', 'استان-ایالت',$value); ?>
                        <?php $value=( isset($client) ? $client->shipping_zip : ''); ?>
                        <?php echo render_input( 'shipping_zip', 'کد پستی',$value); ?>
                        <?php $selected=( isset($client) ? $client->shipping_country : '' ); ?>
                        <?php echo render_select( 'shipping_country',$countries,array( 'country_id',array( 'short_name')), 'کشور',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex'))); ?>
                     </div>
                     <?php if(isset($client) &&
                        (total_rows(db_prefix().'invoices',array('clientid'=>$client->userid)) > 0 || total_rows(db_prefix().'estimates',array('clientid'=>$client->userid)) > 0 || total_rows(db_prefix().'creditnotes',array('clientid'=>$client->userid)) > 0)){ ?>
                     <div class="col-md-12">
                        <div class="alert alert-warning">
                           <div class="checkbox checkbox-default">
                              <input type="checkbox" name="update_all_other_transactions" id="update_all_other_transactions">
                              <label for="update_all_other_transactions">
                              <?php echo _l('customer_update_address_info_on_invoices'); ?><br />
                              </label>
                           </div>
                           <b><?php echo _l('customer_update_address_info_on_invoices_help'); ?></b>
                           <div class="checkbox checkbox-default">
                              <input type="checkbox" name="update_credit_notes" id="update_credit_notes">
                              <label for="update_credit_notes">
                              <?php echo _l('customer_profile_update_credit_notes'); ?><br />
                              </label>
                           </div>
                        </div>
                     </div>
                     <?php } ?>
                  </div>
               </div>
            </div>
         </div>

          <!-- mz -->
          <div role="tabpanel" class="tab-pane" id="iran_companys">
              <div class="row">
                  <div class="col-md-12">
                      <div class="row">
                          <div class="col-md-6">
                              <!-- mz -->
                              <?php $value=( isset($client) ? $client->Economic_code : ''); ?>
                              <?php echo render_input( 'Economic_code', 'کد اقتصادی',$value,'','','','typeis1'); ?>
                              <?php $value=( isset($client) ? $client->National_ID : ''); ?>
                              <?php
                              $value=( isset($client) ? $client->cusFax : '');
                              echo render_input( 'cusFax', 'فکس',$value);
                              ?>
                              <?php echo render_input( 'National_ID', 'شناسه ملی',$value,'','','','typeis1'); ?>

                              <?php $value=( isset($client) ? $client->NationalCode : ''); ?>
                              <?php echo render_input( 'NationalCode', 'کد ملی',$value,'','','','typeis2'); ?>
                              <!-- mz -->
                          </div>
                          <div class="col-md-6">
                              <?php $value=( isset($client) ? $client->registration_number : ''); ?>
                              <?php echo render_input( 'registration_number', 'شماره ثبت',$value,'','','','typeis1'); ?>
                              <?php $value=( isset($client) ? $client->Signatories : ''); ?>
                              <?php echo render_input( 'Signatories', 'صاحبان حق امضا (با , جدا کنید)',$value,'','','','typeis1'); ?>

                              <?php $Company_types = array(
                                  ["Company_type_id"=>'0',"short_name"=>'سهامی عام'],
                                  ["Company_type_id"=>'1',"short_name"=>'سهامی خاص'],
                                  ["Company_type_id"=>'2',"short_name"=>'مسئولیت محدود'],
                                  ["Company_type_id"=>'3',"short_name"=>'سایر']
                              ); ?>
                              <?php $selected=( isset($client) ? $client->Company_type : '' ); ?>
                              <?php echo render_select( 'Company_type',$Company_types,array( 'Company_type_id',array( 'short_name')), 'نوع شرکت',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex')),'','typeis1'); ?>

                          </div>

                      </div>
                  </div>
              </div>
          </div>
          <!-- mz -->

      </div>
   </div>
   <?php echo form_close(); ?>
</div>
<?php if(isset($client)){ ?>
<?php if (has_permission('customers', '', 'create') || has_permission('customers', '', 'edit')) { ?>
<div class="modal fade" id="customer_admins_assign" tabindex="-1" role="dialog">
   <div class="modal-dialog">
      <?php echo form_open(admin_url('clients/assign_admins/'.$client->userid)); ?>
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"><?php echo _l('assign_admin'); ?></h4>
         </div>
         <div class="modal-body">
            <?php
               $selected = array();
               foreach($customer_admins as $c_admin){
                  array_push($selected,$c_admin['staff_id']);
               }
               echo render_select('customer_admins[]',$staff,array('staffid',array('firstname','lastname')),'',$selected,array('multiple'=>true),array(),'','',false); ?>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
            <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
         </div>
      </div>
      <!-- /.modal-content -->
      <?php echo form_close(); ?>
   </div>
   <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<?php } ?>
<?php } ?>
<?php $this->load->view('admin/clients/client_group'); ?>


<script>
    let customer_type = document.querySelectorAll("#customer_type");
    let typeis1 = document.querySelectorAll(".typeis1");
    let typeis2 = document.querySelectorAll(".typeis2");

     let company = document.getElementById("company");
     //let customerName = document.getElementById("customerName");
     let customerFamily = document.getElementById("customerFamily");
   // console.log(customer_type);
    let type = <?php echo (isset($client) ? $client->customer_type : "1");?>;

    if(type == 1){
        for(let t2 of typeis2){
            t2.style.display="none";
        }
        for(let t1 of typeis1){
            t1.style.display="block";
        }
    }

    if(type == 2){
        for(let t1 of typeis1){
            t1.style.display="none";
        }
        for(let t2 of typeis2){
            t2.style.display="block";
        }
    }

    customer_type[0].addEventListener('click',()=>{
        type=1;
        for(let t2 of typeis2){
            t2.style.display="none";
        }

        for(let t1 of typeis1){
            t1.style.display="block";
        }
    });
    customer_type[1].addEventListener('click',()=>{
        type=2;
        console.log(type);
        for(let t1 of typeis1){
            t1.style.display="none";
        }

        for(let t2 of typeis2){
            t2.style.display="block";
        }
    });

    customerFamily.addEventListener('keyup',()=>{
        company.value = customerName.value + ' ' + customerFamily.value;
    });

</script>
