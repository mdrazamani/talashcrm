<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php //init_head();?>
<div class="<?php if($openEdit == true){echo 'open-edit ';} ?>lead-wrapper" <?php if(isset($lead) && ($lead->junk == 1 || $lead->lost == 1)){ echo 'lead-is-junk-or-lost';} ?>>
   <?php if(isset($lead)){ ?>
   <div class="btn-group pull-left lead-actions-left">
      <a href="#" lead-edit class="mright10 font-medium-xs pull-left<?php if($lead_locked == true){echo ' hide';} ?>">
         <?php echo _l('ویرایش'); ?>
         <i class="fa fa-pencil-square-o"></i>
      </a>
           <?php echo form_open('admin/leads/create_pdf',array('id'=>'pdfForm')); ?>
<!--           <input type="hidden" id="htmlPdf" name="htmlPdf" />-->
           <input type="hidden" id="idForPdf" name="idForPdf" value="<?php echo $lead->id;?>"/>
<!--           <input type="hidden" id="cssPdf" name="cssPdf" />-->
           <span style="padding: 5px;" id="ajaxP">
               print
           </span>

            <span style="padding: 5px;" id="ajaxP2">
               print2222222
           </span>
       <?php echo form_close(); ?>
      <a href="#" class="font-medium-xs dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="lead-more-btn">
      <?php echo _l('بیشتر'); ?>
      <span class="caret"></span>
      </a>
      <ul class="dropdown-menu dropdown-menu-left" id="lead-more-dropdown">
         <?php if($lead->junk == 0){
         if($lead->lost == 0 && (total_rows(db_prefix().'clients',array('leadid'=>$lead->id)) == 0)){ ?>
         <li>
            <a href="#" onclick="lead_mark_as_lost(<?php echo $lead->id; ?>); return false;">
              <i class="fa fa-mars"></i>
              <?php echo _l('علامت گذاری به عنوان گمشده'); ?>
            </a>
         </li>
         <?php } else if($lead->lost == 1){ ?>
         <li>
            <a href="#" onclick="lead_unmark_as_lost(<?php echo $lead->id; ?>); return false;">
              <i class="fa fa-smile-o"></i>
              <?php echo _l('خارج شدن از حالت گمشده'); ?>
            </a>
         </li>
         <?php } ?>
         <?php } ?>
         <!-- mark as junk -->
         <?php if($lead->lost == 0){
         if($lead->junk == 0 && (total_rows(db_prefix().'clients',array('leadid'=>$lead->id)) == 0)){ ?>
         <li>
            <a href="#" onclick="lead_mark_as_junk(<?php echo $lead->id; ?>); return false;">
              <i class="fa fa fa-times"></i>
              <?php echo _l('علامت گذاری به عنوان آشغال'); ?>
            </a>
         </li>
         <?php } else if($lead->junk == 1){ ?>
         <li>
            <a href="#" onclick="lead_unmark_as_junk(<?php echo $lead->id; ?>); return false;">
              <i class="fa fa-smile-o"></i>
              <?php echo _l('خارج شدن از حالت آشغال'); ?>
            </a>
         </li>
         <?php } ?>
         <?php } ?>
         <?php if((has_permission('leads','','delete') && $lead_locked == false) || is_admin()){ ?>
         <li>
            <a href="<?php echo admin_url('leads/delete/'.$lead->id); ?>" class="text-danger delete-text _delete" data-toggle="tooltip" title="">
              <i class="fa fa-remove"></i>
              <?php echo _l('حذف اقدام'); ?>
            </a>
         </li>
         <?php } ?>
      </ul>
   </div>
      <a data-toggle="tooltip" class="btn btn-default pull-right lead-print-btn lead-top-btn lead-view mleft5" onclick="print_lead_information(); return false;" data-placement="top" title="<?php echo _l('print'); ?>" href="#">
      <i class="fa fa-print"></i>
      </a>

    <?php if($lead->is_trash != "1"){?>
           <div data-dismiss="modal" aria-label="Close">
               <input type="hidden" id="lead_id" value="<?php echo $lead->id; ?>"/>
<!--               <button type="button" id="convetTop" data-toggle="modal" data-target="#customer_group_modal" class="btn btn-success pull-right lead-top-btn mleft5">-->
<!--                   <i class="ti ti-adjustments-alt" ></i>-->
<!--                   --><?php //echo _l('تبدیل به پروژه'); ?>
<!--               </button>-->

               <a href="<?php echo admin_url('leads/convert_modal/'.$lead->id);?>" data-toggle="modal" data-target="#customer_group_modal" class="btn btn-success pull-right lead-top-btn mleft5">
                   <i class="ti ti-adjustments-alt" ></i>
                   <?php echo _l('تبدیل به پروژه'); ?>
               </a>




           </div>
    <?php }?>

       <?php if($lead->is_trash == "0"){?>
       <div>
           <?php echo form_open(admin_url('leads/add_trash'),array('id'=>'add_trash')); ?>
           <input type="hidden" name="addTrash_id" value="<?php echo $lead->id;?>"/>
           <input type="hidden" name="trash_staff" value="<?php echo $mainStaff->staffid;?>"/>
           <button type="submit" class="btn btn-warning pull-right lead-top-btn mleft5">
           <i class="ti ti-trash"></i>
               <?php echo _l('تبدیل به خاتمه یافته'); ?>
           </button>
           <?php echo form_close(); ?>
       </div>
       <?php }else{?>
           <div>
               <?php echo form_open(admin_url('leads/add_too_lead'),array('id'=>'add_too_lead')); ?>
               <input type="hidden" name="addToolead_id" value="<?php echo $lead->id;?>"/>
               <input type="hidden" name="lead_staff" value="<?php echo $mainStaff->staffid;?>"/>
               <button type="submit" class="btn btn-info pull-right lead-top-btn mleft5">
                   <i class="ti ti-arrow-guide"></i>
                   <?php echo _l('تبدیل به اقدام'); ?>
               </button>
               <?php echo form_close(); ?>
           </div>
       <?php }?>

      <?php if($lead_locked == false){ ?>
      <div class="lead-edit<?php if(isset($lead)){echo ' hide';} ?>">
         <button type="button" class="btn btn-info pull-right mleft5 lead-top-btn lead-save-btn" onclick="document.getElementById('lead-form-submit').click();">
              <?php echo _l('submit'); ?>
          </button>
      </div>
      <?php } ?>
   <?php } ?>
   <div class="clearfix no-margin"></div>

   <?php if(isset($lead)){ ?>


   <div class="alert alert-warning hide mtop20" role="alert" id="lead_proposal_warning">
      <?php echo _l('proposal_warning_email_change',array(_l('lead_lowercase'),_l('lead_lowercase'),_l('lead_lowercase'))); ?>
      <hr />
      <a href="#" onclick="update_all_proposal_emails_linked_to_lead(<?php echo $lead->id; ?>); return false;">
        <?php echo _l('update_proposal_email_yes'); ?>
        </a>
      <br />
      <a href="#" onclick="init_lead_modal_data(<?php echo $lead->id; ?>); return false;">
        <?php echo _l('update_proposal_email_no'); ?>
      </a>
   </div>
   <?php } ?>
   <?php echo form_open((isset($lead) ? admin_url('leads/lead/'.$lead->id) : admin_url('leads/lead')),array('id'=>'lead_form')); ?>
   <div class="row">
      <div class="lead-view<?php if(!isset($lead)){echo ' hide';} ?>" id="leadViewWrapper">
          <hr/>





          <style id="thisCss">
              .txtCenter{
                  text-align: center;
              }
              .txtRight{
                  text-align: right !important;
              }
              .txtCenterNew{
                  text-align: center !important;
              }
              .pa6{
                  padding: 6px;
              }
              .font-size-24{
                  font-size: 20px;
                  font-weight: 900;
              }



              .mz-col-md-12 {
                  width: 100%;
              }
              .mz-col-md-11 {
                  width: 91.66666667%;
              }
              .mz-col-md-10 {
                  width: 83.33333333%;
              }
              .mz-col-md-9 {
                  width: 75%;
              }
              .mz-col-md-8 {
                  width: 66.66666667%;
              }
              .mz-col-md-7 {
                  width: 58.33333333%;
              }
              .mz-col-md-6 {
                  width: 50%;
              }
              .mz-col-md-5 {
                  width: 41.66666667%;
              }
              .mz-col-md-4 {
                  width: 33.33333333%;
              }
              .mz-col-md-3 {
                  width: 24%;
              }
              .mz-col-md-2 {
                  width: 16.66666667%;
              }
              .mz-col-md-1 {
                  width: 8.33333333%;
              }

              .mz-row div{
                  display: inline-block;
              }

              .ser{
                  background-color: #eee;
                  padding: 4px;
                  margin: 4px;
                  font-weight: bold;
                  font-size: 15px;
              }
          </style>

          <div class="col-md-12 col-xs-12" id="thisHtmlPdf">
              <div class="invoicePdfHead txtCenter">
                  <div class="mz-row">
                      <div class="mz-col-md-3">
                          <div>تصویر</div>
                      </div>
                      <div class="mz-col-md-6">
                          <div class="font-size-24"><?php
                              echo (isset($lead) && $lead->name != '' ? $lead->name : '-');
                              echo $lead->is_trash != 0 ? '<p style="color: red;">مختومه شده</p>' : '';
                              ?></div>
                      </div>
                      <div class="mz-col-md-3">
                          <div class="pa6">شماره: <span><?php echo (isset($lead) && $lead->id != '' ? $lead->id : '-'); ?></span></div>
                          <div class="pa6">از تاریخ: <span> <?php echo (isset($lead) && $lead->id != '' ? _d($lead->dateS) : '-');?> </span></div>
                          <div class="pa6">تا تاریخ: <span> <?php echo (isset($lead) && $lead->id != '' ? _d($lead->dateE) : '-');?> </span></div>
                      </div>
                  </div>
              </div>
              <div class="invoicePdfBody">

                  <div class="sec2">
                      <div class="sec2Header ser txtCenter" style="text-align: center;">
                          مشخصات اقدام
                      </div>
                      <div class="row pa6">
                          <div class="col-md-8">











                                <?php $genderF = $mainStaff->sex == 'female' ? 'خانم ' : 'آقای ';?>
                              <div class="pa6">ایجاد کننده:  <span><?php echo (isset($lead) && $mainStaff != '' ? $genderF.' '.$mainStaff->firstname.' '.$mainStaff->lastname : '-');?></span></div>
                              <div class="pa6">ارزش برآورد شده:  <span><?php echo (isset($lead) && $lead->lead_value != '' ? $lead->lead_value : '-').$base_currency->symbol;?></span></div>
                              <div class="pa6"> تاریخ ایجاد : <span><?php echo _dt($lead->dateadded);?></span></div>
                          </div>
                          <div class="col-md-4">
                              <?php $genderTF = $thisStaff->sex == 'female' ? 'خانم ' : 'آقای ';?>
                              <?php $genderTFT = $trashStaff->sex == 'female' ? 'خانم ' : 'آقای ';?>
                              <div class="pa6">اختصاص یافته به : <span><?php echo (isset($lead) && $thisStaff != '' ? $genderTF.' '.$thisStaff->firstname.' '.$thisStaff->lastname : '-'); ;?></span></div>
                              <?php if($lead->is_trash == "1"){?>
                              <div class="pa6"> خاتمه یافته توسط : <span><?php echo (isset($lead) && $trashStaff != '' ? $genderTFT.' '.$trashStaff->firstname.' '.$trashStaff->lastname : '-'); ;?></span></div>
                              <div class="pa6"> تاریخ خاتمه : <span><?php echo _dt($lead->date_trash);?></span></div>
                              <?php }?>


                          </div>
                      </div>
                  </div>

                  <div class="sec2">
                      <div class="sec2Header ser txtCenter">
                          مشخصات خریدار
                      </div>
                      <div class="row pa6">
                          <div class="col-md-8">
                              <div class="pa6">خریدار: <span><?php
                                      $shakhes = '';
                                      if($Lclient->customer_type == '1'){
                                          $shakhes = 'شرکت محترم ';
                                      }else if($Lclient->customer_type == '2'){
                                          $shakhes = 'جناب آقای ';
                                      }
                                      echo $shakhes.' '.$Lclient->company;
                                      ?></span></div>
                              <div class="pa6">تماس: <span><?php echo $Lclient->phonenumber;?></span></div>
                              <div class="pa6">نشانی: <span>
                                                <?php echo $Lclient->state.' - '.$Lclient->city.' - '.$Lclient->address;?>
                                                </span></div>

                              <div class="pa6">شماره درخواست: <span><?php echo (isset($lead) && $lead->id != '' ? $lead->Dnumber : '-');?></span></div>
                              <!-- تهران- خ ولیعصر- نرسیده به پارك ساعی پلاك 109 -->
                          </div>
                          <div class="col-md-4">
                              <div class="pa6">ایمیل: <span><?php echo $Lclient->cusEmail;?></span></div>
                              <div class="pa6">فکس: <span><?php echo $Lclient->cusFax;?></span></div>

                              <?php foreach ($Lcontacts as $contact){
                                  $gender = $contact->sex == 'female' ? 'خانم ' : 'آقای ';
                                echo '<div class="pa6"> '.$contact->title.': <span>'.$gender.' '.$contact->lastname.'</span></div>';
                              }?>
                          </div>
                      </div>
                  </div>
                  <div class="sec3">
                      <div class="sec3Header ser txtCenter">
                          مشخصات کالا مورد معامله
                      </div>
                      <table class="table table-hover no-mtop">
                          <thead>
                          <tr>
                              <th class="txtCenterNew">ردیف</th>
                              <th class="txtCenterNew">کد کالا</th>
                              <th class="txtCenterNew">شرح کالا یا خدمات</th>
                              <th class="txtCenterNew">مقدار</th>
                              <th class="txtCenterNew">واحد</th>
                              <th class="txtCenterNew">مبلغ واحد(ريال)</th>
                              <th class="txtCenterNew">جمع کل(ريال)</th>
                          </tr>
                          </thead>
                          <tbody>
                          <?php $i=1; $allPrice=0; foreach($Litems as $item){?>
                              <tr>
                                  <td class="txtCenterNew"><?php echo $i++;?></td>
                                  <td class="txtCenterNew"><?php echo $item["value"];?></td>
                                  <td class="txtCenterNew"><?php echo $item["description"];?></td>
                                  <td class="txtCenterNew"><?php echo $item["qty"];?></td>
                                  <td class="txtCenterNew"><?php echo $item["unit"];?></td>
                                  <td class="txtCenterNew"><?php echo number_format($item["rate"]);?></td>
                                  <td class="txtCenterNew"><?php echo number_format($item["rate"]*$item["qty"]);?></td>
                              </tr>
                              <?php $allPrice += $item["rate"]*$item["qty"]; }?>
                          <tr>
                              <td class="txtRight" colspan="6">جمع</td>
                              <td colspan="6" class="txtCenterNew"><?php echo number_format($allPrice);?></td>
                          </tr>
                          <tr>
                              <td class="txtRight" colspan="6">مالیات بر ارزش افزوده</td>
                              <td colspan="6" class="txtCenterNew"><?php echo number_format(($allPrice*9)/100);?></td>
                          </tr>
                          <tr>
                              <td class="txtRight" colspan="6">
                                  جمع کل به همراه مالیات بر ارزش افزوده: <span><?php
                                      require_once(APPPATH.'helpers/NumberWord.php');
                                      $numberF = new NumberWord();
                                      echo $numberF->numberToWordsNew(round($allPrice+($allPrice*9)/100)).' '.$proposal->symbol;
                                      ?></span>
                              </td>

                              <td colspan="6" class="txtCenterNew">
                                  <?php
                                  echo number_format(round($allPrice+($allPrice*9)/100));
                                  ?>
                              </td>
                          </tr>
                          </tbody>
                      </table>
                  </div>
              </div>
              <div class="invoicePdfFooter">
                  <div class="sec2Header ser txtCenter">
                       توضیحات
                  </div>
                  <div class="pa6">
                      <?php echo (isset($lead) && $lead->description != '' ? $lead->description : '-'); ?>
                  </div>
              </div>
          </div>

<!--         <div class="col-md-4 col-xs-12 lead-information-col">-->
<!--            --><?php //if(total_rows(db_prefix().'customfields',array('fieldto'=>'leads','active'=>1)) > 0 && isset($lead)){ ?>
<!--            <div class="lead-info-heading">-->
<!--               <h4 class="no-margin font-medium-xs bold">-->
<!--                  --><?php //echo _l('custom_fields'); ?>
<!--               </h4>-->
<!--            </div>-->
<!--            --><?php
//            $custom_fields = get_custom_fields('leads');
//            foreach ($custom_fields as $field) {
//                $value = get_custom_field_value($lead->id, $field['id'], 'leads'); ?>
<!--                <p class="text-muted lead-field-heading no-mtop">--><?php //echo $field['name']; ?><!--</p>-->
<!--                <p class="bold font-medium-xs">--><?php //echo ($value != '' ? $value : '-') ?><!--</p>-->
<!--            --><?php //} ?>
<!--            --><?php //} ?>
<!--         </div>-->
         <div class="clearfix"></div>

      </div>
      <div class="clearfix"></div>
      <div class="lead-edit<?php if(isset($lead)){echo ' hide';} ?>">
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
               echo render_leads_source_select($sources, $selected,'lead_add_edit_source');
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
               echo render_select('assigned',$members,array('staffid',array('firstname','lastname')),'lead_add_edit_assigned',$selected,$assigned_attrs); ?>
         </div>
         <div class="clearfix"></div>
            <hr class="mtop5 mbot10" />
             <div class="col-md-12">
                  <div class="form-group no-mbot" id="inputTagsWrapper">
                     <label for="tags" class="control-label"><i class="fa fa-tag" aria-hidden="true"></i> <?php echo _l('tags'); ?></label>
                     <input type="text" class="tagsinput" id="tags" name="tags" value="<?php echo (isset($lead) ? prep_tags_input(get_tags_in($lead->id,'lead')) : ''); ?>" data-role="tagsinput">
                  </div>
               </div>
         <div class="clearfix"></div>
         <hr class="no-mtop mbot15" />

         <div class="col-md-6">
            <?php $value = (isset($lead) ? $lead->name : ''); ?>
            <?php echo render_input('name','عنوان',$value); ?>



             <div class="form-group select-placeholder">
                 <label for="clientid" class="control-label"><?php echo _l('مشتری'); ?></label>
                 <label class="mz-float-left"><a href="http://localhost/talash_crm/admin/clients/client">(<?php echo _l('مشتری جدید');?>) </a></label>


                 <select id="clientid" name="clientid" data-live-search="true" data-width="100%" class="ajax-search" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
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






             <div class="form-group select-placeholder <?php echo (isset($project) && $project->contact_notification == 2) ? '' : '' ?>" id="notify_contacts_wrapper">
                 <label for="notify_contacts" class="control-label"><span class="text-danger">*</span> <?php echo _l('مخاطب، مخاطب های مربوطه') ?></label>
                 <select name="notify_contacts[]" data-id="notify_contacts" id="notify_contacts" class="ajax-search" data-width="100%" data-live-search="true"
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


            <?php $value = (isset($lead) ? $lead->title : ''); ?>
            <?php echo render_input('title','lead_title',$value); ?>
            <?php $value = (isset($lead) ? $lead->email : ''); ?>
            <?php echo render_input('email','lead_add_edit_email',$value); ?>
           <?php if((isset($lead) && empty($lead->website)) || !isset($lead)){
                 $value = (isset($lead) ? $lead->website : '');
                 echo render_input('website','lead_website',$value);
              } else { ?>
              <div class="form-group">
               <label for="website"><?php echo _l('lead_website'); ?></label>
               <div class="input-group">
                  <input type="text" name="website" id="website" value="<?php echo $lead->website; ?>" class="form-control">
                  <div class="input-group-addon">
                     <span>
                      <a href="<?php echo maybe_add_http($lead->website); ?>" target="_blank" tabindex="-1">
                        <i class="fa fa-globe"></i>
                      </a>
                    </span>
                  </div>
               </div>
            </div>
            <?php }
            $value = (isset($lead) ? $lead->phonenumber : ''); ?>
            <?php echo render_input('phonenumber','lead_add_edit_phonenumber',$value); ?>
            <div class="form-group">
                <label for="lead_value"><?php echo _l('lead_value'); ?></label>
                <div class="input-group" data-toggle="tooltip" title="<?php echo _l('lead_value_tooltip'); ?>">
                    <input type="number" class="form-control" name="lead_value" value="<?php if(isset($lead)){echo $lead->lead_value; }?>">
                    <div class="input-group-addon">
                      <?php echo $base_currency->symbol; ?>
                    </div>
                </div>
               </label>
            </div>
            <?php //$value = (isset($lead) ? $lead->company : ''); ?>
            <?php //echo render_input('company','lead_company',$value); ?>
















         </div>
         <div class="col-md-6">
            <?php $value = (isset($lead) ? $lead->address : ''); ?>
            <?php echo render_textarea('address','lead_address',$value,array('rows'=>1,'style'=>'height:36px;font-size:100%;')); ?>
            <?php $value = (isset($lead) ? $lead->city : ''); ?>
            <?php echo render_input('city','شهر',$value); ?>
            <?php $value = (isset($lead) ? $lead->state : ''); ?>
            <?php echo render_input('state','lead_state',$value); ?>
            <?php
               $countries= get_all_countries();
               $customer_default_country = get_option('customer_default_country');
               $selected =( isset($lead) ? $lead->country : $customer_default_country);
               echo render_select( 'country',$countries,array( 'country_id',array( 'short_name')), 'lead_country',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex')));
               ?>
            <?php $value = (isset($lead) ? $lead->zip : ''); ?>
            <?php echo render_input('zip','lead_zip',$value); ?>
            <?php if(!is_language_disabled()){ ?>
            <div class="form-group">
               <label for="default_language" class="control-label"><?php echo _l('localization_default_language'); ?></label>
               <select name="default_language" data-live-search="true" id="default_language" class="form-control selectpicker" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                  <option value=""><?php echo _l('system_default_string'); ?></option>
                  <?php foreach($this->app->get_available_languages() as $availableLanguage){
                     $selected = '';
                     if(isset($lead)){
                       if($lead->default_language == $availableLanguage){
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
         <div class="col-md-12">
            <?php //$value = (isset($lead) ? $lead->description : ''); ?>
            <?php //echo render_textarea('description','lead_description',$value); ?>

             <!-- -->
             <hr class="hr-panel-heading" />
             <?php //echo form_open('',array('id'=>'item-project','class'=>'_transaction_form proposal-form'));?>
             <div class="mz-panel">
                 <div class="mz-panel-header">
                     <span class="dash-micon"><i class="my-ti ti ti-repeat"></i></span>
                     <span class="dash-mtext">اقلام مورد معامله</span>
                 </div>
                 <?php
                 $this->load->view('admin/estimates/_add_edit_items');
                 ?>
             </div>
             <?php //$this->load->view('admin/invoice_items/item2'); ?>
             <?php //echo form_close(); ?>
             <hr class="hr-panel-heading" />
             <!-- -->



             <?php //$rel_id_custom_field = (isset($project) ? $project->id : false); ?>
             <?php //echo render_custom_fields('projects',$rel_id_custom_field); ?>
             <p class="bold"><?php echo _l('شرح پروژه'); ?></p>
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
                  <label for="lead_public"><?php echo _l('lead_public'); ?></label>
               </div>
                  <?php if(!isset($lead)){ ?>
                  <div class="checkbox-inline checkbox checkbox-primary">
                     <input type="checkbox" name="contacted_today" id="contacted_today" checked>
                     <label for="contacted_today"><?php echo _l('lead_add_edit_contacted_today'); ?></label>
                  </div>
                <?php } ?>
               </div>
            </div>
         </div>
         <div class="col-md-12 mtop15">
            <?php $rel_id = (isset($lead) ? $lead->id : false); ?>
            <?php echo render_custom_fields('leads',$rel_id); ?>
         </div>
         <div class="clearfix"></div>
      </div>
   </div>
   <?php if(isset($lead)){ ?>
   <div class="lead-latest-activity lead-view">
      <div class="lead-info-heading">
         <h4 class="no-margin bold font-medium-xs"><?php echo _l('lead_latest_activity'); ?></h4>
      </div>
      <div id="lead-latest-activity" class="pleft5"></div>
   </div>
   <?php } ?>
   <?php if($lead_locked == false){ ?>
   <div class="lead-edit<?php if(isset($lead)){echo ' hide';} ?>">
      <hr />
      <button type="submit" class="btn btn-info pull-right lead-save-btn" id="lead-form-submit"><?php echo _l('submit'); ?></button>
      <button type="button" class="btn btn-default pull-right mright5" data-dismiss="modal"><?php echo _l('close'); ?></button>
   </div>
   <?php } ?>
   <div class="clearfix"></div>
   <?php echo form_close(); ?>
</div>
<?php if(isset($lead) && $lead_locked == true){ ?>
<script>
  $(function() {
      // Set all fields to disabled if lead is locked
      $.each($('.lead-wrapper').find('input, select, textarea'), function() {
          $(this).attr('disabled', true);
          if($(this).is('select')) {
              $(this).selectpicker('refresh');
          }
      });
  });
</script>
<?php } ?>

<span id="resAjaxP"></span>
<?php //init_tail(); ?>
<script>
    $(document).ready(function () {

        let ajaxP = document.getElementById('ajaxP');
        ajaxP.addEventListener('click',()=>{

            //let Stype = 'leads';
           // let Shtml = document.getElementById('leadViewWrapper').outerHTML;
           // let Scss = ;

            // let convetTop = document.getElementById('convetTop');
            // convetTop.addEventListener('click', ()=>{
            //     console.log('hello');
            // });
            //$.ajax({
            //    url: '<?php //echo site_url("admin/leads/create_pdf");?>//',
            //    type: 'post',
            //   // dataType:'json',
            //    data:{
            //        type: Stype,
            //        html: Shtml,
            //    },
            //    success:function(data){
            //        var result = JSON.parse(data);
            //       // $("resAjaxP").html(result.a);
            //        console.log(result);
            //        //console.log(Shtml);
            //    }
            //});


            //$.post("<?php //echo site_url("admin/leads/create_pdf");?>//",
            //    {
            //        type: Stype,
            //        html: Shtml
            //    },
            //    function( data ) {
            //        //$( ".result" ).html( data );
            //        console.log(data);
            //    }
            //);

        });
    })



    let pdfForm = document.getElementById('pdfForm');
    let ajaxP = document.getElementById('ajaxP');
    //let htmlPdf = document.getElementById('htmlPdf');
    //let cssPdf = document.getElementById('cssPdf');
    let Shtml = document.getElementById('thisHtmlPdf').outerHTML;
    let Scss = document.getElementById('thisCss').outerHTML;
    ajaxP.addEventListener('click',()=>{
        //htmlPdf.value = Shtml;
        //cssPdf.value = Scss;
        pdfForm.submit();
    });


</script>