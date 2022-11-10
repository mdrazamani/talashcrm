<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<?php echo form_hidden('_attachment_sale_id',$proposal->id); ?>
<?php echo form_hidden('_attachment_sale_type','proposal'); ?>
<div class="mz-panel">
   <div class="mz-panel-body">
       <div class="NoPayments">
      <div class="horizontal-scrollable-tabs preview-tabs-top">
         <div class="scroller arrow-left"><i class="fa fa-angle-left"></i></div>
         <div class="scroller arrow-right"><i class="fa fa-angle-right"></i></div>
         <div class="horizontal-tabs">
            <ul class="nav nav-tabs nav-tabs-horizontal mbot15" role="tablist">
               <li role="presentation" class="active">
                  <a href="#tab_proposal" aria-controls="tab_proposal" role="tab" data-toggle="tab">
                  <?php echo _l('پیش فاکتور'); ?>
                  </a>
               </li>
               <?php if(isset($proposal)){
                   $totalPish=0;
                   $totalMondePish=0;
               if($pishPayments){
                   foreach($pishPayments as $pish){
                       $totalPish+=$pish["amount"];
                   }

                   ?>
                   <li role="presentation">
                       <a href="#tab_pishPeymenys" onclick="get_proposal_comments(); return false;" aria-controls="tab_pishPeymenys" role="tab" data-toggle="tab">
                           <?php
                           echo _l('پیش پرداخت ها');
                           ?>
                           <span class="badge total_comments <?php echo count($pishPayments) === 0 ? 'hide' : ''; ?>"><?php echo count($pishPayments); ?></span>
                       </a>
                   </li>
               <?php }
                   $totalMondePish = $totalPish ? $proposal->total-$totalPish : $proposal->total;
               ?>

               <li role="presentation">
                  <a href="#tab_comments" onclick="get_proposal_comments(); return false;" aria-controls="tab_comments" role="tab" data-toggle="tab">
                  <?php
                  echo _l('نظرات');
                  $total_comments = total_rows(db_prefix() . 'proposal_comments', [
                      'proposalid' => $proposal->id,
                    ]
                  );
                  ?>
                      <span class="badge total_comments <?php echo $total_comments === 0 ? 'hide' : ''; ?>"><?php echo $total_comments ?></span>
                  </a>
               </li>
               <li role="presentation">
                  <a href="#tab_reminders" onclick="initDataTable('.table-reminders', admin_url + 'misc/get_reminders/' + <?php echo $proposal->id ;?> + '/' + 'proposal', undefined, undefined, undefined,[1,'asc']); return false;" aria-controls="tab_reminders" role="tab" data-toggle="tab">
                  <?php echo _l('یادآوری ها'); ?>
                  <?php
                     $total_reminders = total_rows(db_prefix().'reminders',
                      array(
                       'isnotified'=>0,
                       'staff'=>get_staff_user_id(),
                       'rel_type'=>'proposal',
                       'rel_id'=>$proposal->id
                       )
                      );
                     if($total_reminders > 0){
                      echo '<span class="badge">'.$total_reminders.'</span>';
                     }
                     ?>
                  </a>
               </li>
               <li role="presentation" class="tab-separator">
                  <a href="#tab_tasks" onclick="init_rel_tasks_table(<?php echo $proposal->id; ?>,'proposal'); return false;" aria-controls="tab_tasks" role="tab" data-toggle="tab">
                  <?php echo _l('وظایف'); ?>
                  </a>
               </li>
               <li role="presentation" class="tab-separator">
                     <a href="#tab_notes" onclick="get_sales_notes(<?php echo $proposal->id; ?>,'proposals'); return false" aria-controls="tab_notes" role="tab" data-toggle="tab">
                     <?php echo _l('یادداشت'); ?>
                     <span class="notes-total">
                        <?php if($totalNotes > 0){ ?>
                           <span class="badge"><?php echo $totalNotes; ?></span>
                        <?php } ?>
                     </span>
                     </a>
               </li>
               <li role="presentation" class="tab-separator">
                     <a href="#tab_templates" onclick="get_templates('proposals', <?php echo $proposal->id ?? '' ?>); return false" aria-controls="tab_templates" role="tab" data-toggle="tab">
                        <?php
                        echo _l('قالب');
                        $total_templates = total_rows(db_prefix() . 'templates', [
                            'type' => 'proposals',
                          ]
                        );
                        ?>
                         <span class="badge total_templates <?php echo $total_templates === 0 ? 'hide' : ''; ?>"><?php echo $total_templates ?></span>
                     </a>
               </li>
               <li role="presentation" data-toggle="tooltip" title="<?php echo _l('emails_tracking'); ?>" class="tab-separator">
                  <a href="#tab_emails_tracking" aria-controls="tab_emails_tracking" role="tab" data-toggle="tab">
                    <?php if(!is_mobile()){ ?>
                     <i class="fa fa-envelope-open-o" aria-hidden="true"></i>
                     <?php } else { ?>
                     <?php echo _l('emails_tracking'); ?>
                     <?php } ?>
                  </a>
               </li>
               <li role="presentation" data-toggle="tooltip" data-title="<?php echo _l('view_tracking'); ?>" class="tab-separator">
                  <a href="#tab_views" aria-controls="tab_views" role="tab" data-toggle="tab">
                    <?php if(!is_mobile()){ ?>
                     <i class="fa fa-eye"></i>
                     <?php } else { ?>
                     <?php echo _l('view_tracking'); ?>
                     <?php } ?>
                  </a>
               </li>
               <li role="presentation" data-toggle="tooltip" data-title="<?php echo _l('toggle_full_view'); ?>" class="tab-separator toggle_view">
                  <a href="#" onclick="small_table_full_view(); return false;">
                  <i class="fa fa-expand"></i></a>
               </li>
               <?php } ?>
            </ul>
         </div>
      </div>

      <div class="row mtop10">
         <div class="col-md-3">
            <?php echo format_proposal_status($proposal->status,'pull-left mright5 mtop5'); ?>
         </div>
         <div class="col-md-9 text-right _buttons proposal_buttons">
            <?php if(has_permission('proposals','','edit')){ ?>
            <a href="<?php echo admin_url('proposals/proposal/'.$proposal->id); ?>" data-placement="left" data-toggle="tooltip" title="<?php echo _l('proposal_edit'); ?>" class="btn btn-default btn-with-tooltip" data-placement="bottom"><i class="fa fa-pencil-square-o"></i></a>
            <?php } ?>
            <div class="btn-group">
               <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-file-pdf-o"></i><?php if(is_mobile()){echo ' PDF';} ?> <span class="caret"></span></a>
               <ul class="dropdown-menu dropdown-menu-right">
                  <li class="hidden-xs"><a href="<?php echo admin_url('proposals/pdf/'.$proposal->id.'?output_type=I'); ?>"><?php echo _l('view_pdf'); ?></a></li>
                  <li class="hidden-xs"><a href="<?php echo admin_url('proposals/pdf/'.$proposal->id.'?output_type=I'); ?>" target="_blank"><?php echo _l('view_pdf_in_new_window'); ?></a></li>
                  <li><a href="<?php echo admin_url('proposals/pdf/'.$proposal->id); ?>"><?php echo _l('download'); ?></a></li>
                  <li>
                     <a href="<?php echo admin_url('proposals/pdf/'.$proposal->id.'?print=true'); ?>" target="_blank">
                     <?php echo _l('print'); ?>
                     </a>
                  </li>
               </ul>
            </div>
            <a href="#" class="btn btn-default btn-with-tooltip" data-target="#proposal_send_to_customer" data-toggle="modal"><span data-toggle="tooltip" class="btn-with-tooltip" data-title="<?php echo _l('proposal_send_to_email'); ?>" data-placement="bottom"><i class="fa fa-envelope"></i></span></a>
            <!-- mz -->

                 <?php
                 if($proposal->status != "3"){
                     echo '<a href="http://localhost/talash_crm/admin/proposals/mark_action_status/3/'.$proposal->id.'" data-placement="right" data-toggle="tooltip" class="mleft5 pull-right btn-with-tooltip btn btn-success itemAlign disFlex" title="تائید کردن"> <i class="my-ti-white ti ti-checkbox"></i></a>';
                 }elseif($proposal->invoice_id == NULL){
                     //onclick="proposal_convert_template(this); return false;"
                     //data-toggle="tooltip" data-placement="right"
                     echo '<a href="#" class="mleft5 pull-right btn-with-tooltip btn btn-success itemAlign disFlex" data-template="invoice" data-toggle="modal" data-target="#convert_to_invoice"  title="تبدیل به فاکتور"><i class="my-ti-white ti ti-file-invoice"></i></a>';

                    if($proposal->total > $totalPish) {
                        echo '<span title="افزودن پیش پرداخت" class="mleft5 pull-right btn-with-tooltip itemAlign btn btn-success disFlex addPeyment" data-toggle="modal" data-target="#add_peyment_modal"><i class="my-ti-white ti ti-square-plus"></i></span>';
                        echo '<span class="label label-danger pull-left mright5 mtop5 s-status proposal-status-3">م: '.number_format($totalMondePish).'</span>';
                    }else{
                        echo '<span class="label label-success pull-left mright5 mtop5 s-status proposal-status-3">پیش پرداخت شده</span>';
                     }
                 }?>
             <!-- mz -->

            <div class="btn-group ">
               <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <?php echo _l('بیشتر'); ?> <span class="caret"></span>
               </button>
               <ul class="dropdown-menu dropdown-menu-right">
                  <li>
                     <a href="<?php echo site_url('proposal/'.$proposal->id .'/'.$proposal->hash); ?>" target="_blank"><?php echo _l('proposal_view'); ?></a>
                  </li>
                  <?php hooks()->do_action('after_proposal_view_as_client_link', $proposal); ?>
                  <?php if(!empty($proposal->open_till) && date('Y-m-d') < $proposal->open_till && ($proposal->status == 4 || $proposal->status == 1) && is_proposals_expiry_reminders_enabled()) { ?>
                  <li>
                     <a href="<?php echo admin_url('proposals/send_expiry_reminder/'.$proposal->id); ?>"><?php echo _l('send_expiry_reminder'); ?></a>
                  </li>
                  <?php } ?>
                  <li>
                     <a href="#" data-toggle="modal" data-target="#sales_attach_file"><?php echo _l('invoice_attach_file'); ?></a>
                  </li>
                  <?php if(has_permission('proposals','','create')){ ?>
                  <li>
                     <a href="<?php echo admin_url() . 'proposals/copy/'.$proposal->id; ?>"><?php echo _l('proposal_copy'); ?></a>
                  </li>
                  <?php } ?>
                  <?php if($proposal->estimate_id == NULL && $proposal->invoice_id == NULL){ ?>
                  <?php foreach($proposal_statuses as $status){
                     if(has_permission('proposals','','edit')){
                      if($proposal->status != $status){ ?>
                  <li>
                     <a href="<?php echo admin_url() . 'proposals/mark_action_status/'.$status.'/'.$proposal->id; ?>"><?php echo _l('proposal_mark_as',format_proposal_status($status,'',false)); ?></a>
                  </li>
                  <?php
                     } } } ?>
                  <?php } ?>
                  <?php if(!empty($proposal->signature) && has_permission('proposals','','delete')){ ?>
                  <li>
                     <a href="<?php echo admin_url('proposals/clear_signature/'.$proposal->id); ?>" class="_delete">
                     <?php echo _l('clear_signature'); ?>
                     </a>
                  </li>
                  <?php } ?>
                  <?php if(has_permission('proposals','','delete')){ ?>
                  <li>
                     <a href="<?php echo admin_url() . 'proposals/delete/'.$proposal->id; ?>" class="text-danger delete-text _delete"><?php echo _l('proposal_delete'); ?></a>
                  </li>
                  <?php } ?>
               </ul>
            </div>

            <?php if($proposal->estimate_id == NULL && $proposal->invoice_id == NULL){ ?>
            <?php if(has_permission('estimates','','create') || has_permission('invoices','','create')){ ?>
           <!-- <div class="btn-group">
               <button type="button" class="btn btn-success dropdown-toggle<?php //if($proposal->rel_type == 'customer' && total_rows(db_prefix().'clients',array('active'=>0,'userid'=>$proposal->rel_id)) > 0){echo ' disabled';} ?>" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <?php //echo _l('proposal_convert'); ?> <span class="caret"></span>
               </button>
               <ul class="dropdown-menu dropdown-menu-right">
                  <?php
//                     $disable_convert = false;
//                     $not_related = false;
//
//                     if($proposal->rel_type == 'lead'){
//                      if(total_rows(db_prefix().'clients',array('leadid'=>$proposal->rel_id)) == 0){
//                       $disable_convert = true;
//                       $help_text = 'proposal_convert_to_lead_disabled_help';
//                     }
//                     } else if(empty($proposal->rel_type)){
//                     $disable_convert = true;
//                     $help_text = 'proposal_convert_not_related_help';
//                     }
                     ?>
                  <?php //if(has_permission('estimates','','create')){ ?>
                  <li <?php //if($disable_convert){ echo 'data-toggle="tooltip" title="'._l($help_text,_l('proposal_convert_estimate')).'"';} ?>><a href="#" <?php //if($disable_convert){ echo 'style="cursor:not-allowed;" onclick="return false;"';} else {echo 'data-template="estimate" onclick="proposal_convert_template(this); return false;"';} ?>><?php echo _l('proposal_convert_estimate'); ?></a></li>
                  <?php //} ?>
                  <?php //if(has_permission('invoices','','create')){ ?>
                  <li <?php //if($disable_convert){ echo 'data-toggle="tooltip" title="'._l($help_text,_l('proposal_convert_invoice')).'"';} ?>><a href="#" <?php //if($disable_convert){ echo 'style="cursor:not-allowed;" onclick="return false;"';} else {echo 'data-template="invoice" onclick="proposal_convert_template(this); return false;"';} ?>><?php echo _l('فاکتور'); ?></a></li>
                  <?php //} ?>
               </ul>
            </div> -->
            <?php } ?>
            <?php } else {
               if($proposal->estimate_id != NULL){
                echo '<a href="'.admin_url('estimates/list_estimates/'.$proposal->estimate_id).'" class="btn btn-info">'.format_estimate_number($proposal->estimate_id).'</a>';
               } else {
                echo '<a href="'.admin_url('invoices/list_invoices/'.$proposal->invoice_id).'" class="btn btn-info">'.format_invoice_number($proposal->invoice_id).'</a>';
               }
               } ?>
         </div>
      </div>
      <div class="clearfix"></div>
      <hr class="hr-panel-heading" />
      <div class="row">
         <div class="col-md-12">
            <div class="tab-content">

                <?php //if(){?>

               <div role="tabpanel" class="tab-pane active" id="tab_proposal">
                  <div class="row mtop10">
                     <?php if($proposal->status == 3 && !empty($proposal->acceptance_firstname) && !empty($proposal->acceptance_lastname) && !empty($proposal->acceptance_email)){ ?>
                     <div class="col-md-12">
                        <div class="alert alert-info">
                           <?php echo _l('accepted_identity_info',array(
                              _l('proposal_lowercase'),
                              '<b>'.$proposal->acceptance_firstname . ' ' . $proposal->acceptance_lastname . '</b> (<a href="mailto:'.$proposal->acceptance_email.'">'.$proposal->acceptance_email.'</a>)',
                              '<b>'. _dt($proposal->acceptance_date).'</b>',
                              '<b>'.$proposal->acceptance_ip.'</b>'.(is_admin() ? '&nbsp;<a href="'.admin_url('proposals/clear_acceptance_info/'.$proposal->id).'" class="_delete text-muted" data-toggle="tooltip" data-title="'._l('clear_this_information').'"><i class="fa fa-remove"></i></a>' : '')
                              )); ?>
                        </div>
                     </div>
                     <?php }
                     if($proposal->project_id != 0){ ?>
                          <div class="col-md-12">
                              <h4 class="font-medium mbot15"><?php echo _l('پیش فاکتور: ',array(
                                      _l('proposal_lowercase'),
                                      _l('project_lowercase')
                                  ))._l(format_proposal_number($proposal->id))._l(' مربوط به پروژه ')._l('<a href="'.admin_url('projects/view/'.$proposal->project_id).'" target="_blank">' . $proposal->project_data->name . '</a>')._l(' - کارفرما: ')._l($proposal->project_data->client_data->company); ?></h4>
                          </div>
                      <?php } ?>

                      <hr class="hr-panel-heading" />

                      <?php
                      //var_dump($contacts);
                      //var_dump($staff_data);
                      //var_dump($proposal);

                      $this -> load -> helper ( 'pdf' );
                      //var_dump($myPdf->add_pdf('p'));


                      ?>
                      <style>
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
                            font-size: 24px;
                              font-weight; 900;
                          }

                          .ser{
                              background-color: #eee;
                              padding: 6px;
                              margin: 6px;
                              font-weight: bold;
                              font-size: 16px;
                              border: 2px solid #666;
                          }
                      </style>

                        <div class="invoicePdfHead txtCenter">
                            <div class="row">
                                <div class="col-md-3">
                                    <div>تصویر</div>
                                </div>
                                <div class="col-md-6">
                                    <div class="font-size-24">پیش فاکتور فروش کالا و خدمات</div>
                                    <div class="pa6">شرکت نگار صنعت ماهان – تامین تجهیزات برق، ابزار دقیق و مکانیکال</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="pa6">شماره: <span>02332232323</span></div>
                                    <div class="pa6">تاریخ: <span> <?php echo _d($proposal->date);?> </span></div>
                                </div>
                            </div>
                        </div>
                        <div class="invoicePdfBody">
                            <div class="sec1">
                                <div class="sec1Header ser txtCenter">
                                    مشخصات فروشنده
                                </div>
                                <div class="row pa6">
                                    <div class="col-md-8">
                                        <div class="pa6">فروشنده: <span>شرکت نگار صنعت ماهان</span></div>
                                        <div class="pa6">تماس: <span>86087541-86087415-91090460</span></div>
                                        <div class="pa6">نشانی: <span>تهران - خ ولیعصر - پایین تر از میدان ونک - نرسیده به پل همت - ك سیدالشهدا - پ 3 واحد 1</span></div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="pa6">ایمیل: <span>info@Negarsanatco.com</span></div>
                                        <div class="pa6">وبسایت: <span>Negarsanatco.com</span></div>
                                        <div class="pa6">فکس: <span>88650726</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="sec2">
                                <div class="sec2Header ser txtCenter">
                                    مشخصات خریدار
                                </div>
                                <div class="row pa6">
                                    <div class="col-md-8">
                                        <div class="pa6">خریدار: <span><?php echo $proposal->project_data->client_data->company;?></span></div>
                                        <div class="pa6">تماس: <span><?php echo $proposal->project_data->client_data->phonenumber;?></span></div>
                                        <div class="pa6">نشانی: <span>
                                                <?php echo $proposal->project_data->client_data->state.' - '.$proposal->project_data->client_data->city.' - '.$proposal->project_data->client_data->address;?>
                                                </span></div>
                                        <!-- تهران- خ ولیعصر- نرسیده به پارك ساعی پلاك 109 -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="pa6">ایمیل: <span><?php echo $proposal->project_data->client_data->cusEmail;?></span></div>
                                        <div class="pa6">فکس: <span><?php echo $proposal->project_data->client_data->cusFax;?></span></div>
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
                                    <?php $i=1; $allPrice=0; foreach($proposal->items as $item){?>
                                        <tr>
                                            <td class="txtCenterNew"><?php echo $i++;?></td>
                                            <td class="txtCenterNew"><?php echo $item["rel_id"];?></td>
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
                            <div class="editable proposal tc-content" id="proposal_content_area" style="border:1px solid #d2d2d2;min-height:70px;border-radius:4px;">
                                <?php if(empty($proposal->content)){
                                    echo '<span class="text-danger text-uppercase mtop15 editor-add-content-notice"> ' . _l('click_to_add_content') . '</span>';
                                } else {
                                    echo $proposal->content;
                                }
                                ?>
                            </div>
                        </div>

<!--                     <div class="col-md-6">-->
<!--                        <h4 class="bold">-->
<!--                           --><?php
//                              $tags = get_tags_in($proposal->id,'proposal');
//                              if(count($tags) > 0){
//                               echo '<i class="fa fa-tag" aria-hidden="true" data-toggle="tooltip" data-title="'.html_escape(implode(', ',$tags)).'"></i>';
//                              }
//                              ?>
<!--                           <a href="--><?php //echo admin_url('proposals/proposal/'.$proposal->id); ?><!--">-->
<!--                           <span id="proposal-number">-->
<!--                           --><?php ////echo format_proposal_number($proposal->id); ?>
<!--                           </span>-->
<!--                           </a>-->
<!--                        </h4>-->
<!--                        <h5 class="bold mbot15 font-medium"><a href="--><?php //echo admin_url('proposals/proposal/'.$proposal->id); ?><!--">--><?php ////echo $proposal->subject; ?><!--</a></h5>-->
<!--                        <address>-->
<!--                           --><?php ////echo format_organization_info(); ?>
<!--                        </address>-->
<!--                     </div>-->
<!--                     <div class="col-md-6 text-right">-->
<!--                        <address>-->
<!--                           <span class="bold">--><?php ////echo _l('proposal_to'); ?><!--</span><br />-->
<!--                           --><?php ////echo format_proposal_info($proposal,'admin'); ?>
<!--                        </address>-->
<!--                     </div>-->
                  </div>
                  <hr class="hr-panel-heading" />
                  <?php
                     if(count($proposal->attachments) > 0){ ?>
                  <p class="bold"><?php echo _l('proposal_files'); ?></p>
                  <?php foreach($proposal->attachments as $attachment){
                     $attachment_url = site_url('download/file/sales_attachment/'.$attachment['attachment_key']);
                     if(!empty($attachment['external'])){
                        $attachment_url = $attachment['external_link'];
                     }
                     ?>
                  <div class="mbot15 row" data-attachment-id="<?php echo $attachment['id']; ?>">
                     <div class="col-md-8">
                        <div class="pull-left"><i class="<?php echo get_mime_class($attachment['filetype']); ?>"></i></div>
                        <a href="<?php echo $attachment_url; ?>" target="_blank"><?php echo $attachment['file_name']; ?></a>
                        <br />
                        <small class="text-muted"> <?php echo $attachment['filetype']; ?></small>
                     </div>
                     <div class="col-md-4 text-right">
                        <?php if($attachment['visible_to_customer'] == 0){
                           $icon = 'fa-toggle-off';
                           $tooltip = _l('show_to_customer');
                           } else {
                           $icon = 'fa-toggle-on';
                           $tooltip = _l('hide_from_customer');
                           }
                           ?>
                        <a href="#" data-toggle="tooltip" onclick="toggle_file_visibility(<?php echo $attachment['id']; ?>,<?php echo $proposal->id; ?>,this); return false;" data-title="<?php echo $tooltip; ?>"><i class="fa <?php echo $icon; ?>" aria-hidden="true"></i></a>
                        <?php if($attachment['staffid'] == get_staff_user_id() || is_admin()){ ?>
                        <a href="#" class="text-danger" onclick="delete_proposal_attachment(<?php echo $attachment['id']; ?>); return false;"><i class="fa fa-times"></i></a>
                        <?php } ?>
                     </div>
                  </div>
                  <?php } ?>
                  <?php } ?>
                  <div class="clearfix"></div>
                  <?php if(isset($proposal_merge_fields)){ ?>
                  <p class="bold text-right"><a href="#" onclick="slideToggle('.avilable_merge_fields'); return false;"><?php echo _l('available_merge_fields'); ?></a></p>

                  <div class="hide avilable_merge_fields mtop15">
                     <div class="row">
                        <div class="col-md-12">
                           <ul class="list-group">
                              <?php
                                 foreach($proposal_merge_fields as $field){
                                    foreach($field as $f){
                                      echo '<li class="list-group-item"><b>'.$f['name'].'</b> <a href="#" class="pull-right" onclick="insert_proposal_merge_field(this); return false;">'.$f['key'].'</a></li>';
                                   }
                                }
                             ?>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <?php } ?>
                      <?php if(!empty($proposal->signature)) { ?>
                        <div class="row mtop25">
                           <div class="col-md-6 col-md-offset-6 text-right">
                              <div class="bold">
                                 <p class="no-mbot"><?php echo _l('contract_signed_by') . ": {$proposal->acceptance_firstname} {$proposal->acceptance_lastname}"?></p>
                                 <p class="no-mbot"><?php echo _l('proposal_signed_date') . ': ' . _dt($proposal->acceptance_date) ?></p>
                                 <p class="no-mbot"><?php echo _l('proposal_signed_ip') . ": {$proposal->acceptance_ip}"?></p>
                              </div>
                              <p class="bold"><?php echo _l('document_customer_signature_text'); ?>
                                 <?php if(has_permission('proposals','','delete')){ ?>
                                 <a href="<?php echo admin_url('proposals/clear_signature/'.$proposal->id); ?>" data-toggle="tooltip" title="<?php echo _l('clear_signature'); ?>" class="_delete text-danger">
                                 <i class="fa fa-remove"></i>
                                 </a>
                                 <?php } ?>
                              </p>
                              <div class="pull-right">
                                 <img src="<?php echo site_url('download/preview_image?path='.protected_file_url_by_path(get_upload_path_by_type('proposal').$proposal->id.'/'.$proposal->signature)); ?>" class="img-responsive" alt="">
                              </div>
                           </div>
                        </div>
                        <?php } ?>
               </div>

                <!-- mz -->
                <div role="tabpanel" class="tab-pane" id="tab_pishPeymenys">
                    <div class="row proposal-comments mtop15">
                        <div class="col-md-12">
                            <div id="proposal-comments"></div>
                            <div class="clearfix"></div>
                            <?php
                            $this->load->view('admin/proposals/peyment_table'); ?>
                            <br/>
                            <?php //echo $_SERVER[REQUEST_URI];?>
                        </div>
                    </div>
                </div>
                <!-- mz -->

               <div role="tabpanel" class="tab-pane" id="tab_comments">
                  <div class="row proposal-comments mtop15">
                     <div class="col-md-12">
                        <div id="proposal-comments"></div>
                        <div class="clearfix"></div>
                        <textarea name="content" id="comment" rows="4" class="form-control mtop15 proposal-comment"></textarea>
                        <button type="button" class="btn btn-info mtop10 pull-right" onclick="add_proposal_comment();"><?php echo _l('proposal_add_comment'); ?></button>
                     </div>
                  </div>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_notes">
                  <?php echo form_open(admin_url('proposals/add_note/'.$proposal->id),array('id'=>'sales-notes','class'=>'proposal-notes-form')); ?>
                  <?php echo render_textarea('description'); ?>
                  <div class="text-right">
                     <button type="submit" class="btn btn-info mtop15 mbot15"><?php echo _l('estimate_add_note'); ?></button>
                  </div>
                  <?php echo form_close(); ?>
                  <hr />
                  <div class="mz-panel mtop20 no-shadow" id="sales_notes_area">
                  </div>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_templates">
                  <div class="row proposal-templates">
                     <div class="col-md-12">
                        <button type="button" class="btn btn-info" onclick="add_template('proposals',<?php echo $proposal->id ?? '' ?>);"><?php echo _l('add_template'); ?></button>
                        <hr>
                     </div>
                     <div class="col-md-12">
                        <div id="proposal-templates" class="proposal-templates-wrapper"></div>
                     </div>
                  </div>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_emails_tracking">
                  <?php
                     $this->load->view('admin/includes/emails_tracking',array(
                       'tracked_emails'=>
                       get_tracked_emails($proposal->id, 'proposal'))
                       );
                     ?>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_tasks">
                  <?php init_relation_tasks_table(array( 'data-new-rel-id'=>$proposal->id,'data-new-rel-type'=>'proposal')); ?>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_reminders">
                  <a href="#" data-toggle="modal" class="btn btn-info" data-target=".reminder-modal-proposal-<?php echo $proposal->id; ?>"><i class="fa fa-bell-o"></i> <?php echo _l('proposal_set_reminder_title'); ?></a>
                  <hr />
                  <?php render_datatable(array( _l( 'reminder_description'), _l( 'reminder_date'), _l( 'reminder_staff'), _l( 'reminder_is_notified')), 'reminders'); ?>
                  <?php $this->load->view('admin/includes/modals/reminder',array('id'=>$proposal->id,'name'=>'proposal','members'=>$members,'reminder_title'=>_l('proposal_set_reminder_title'))); ?>
               </div>
               <div role="tabpanel" class="tab-pane ptop10" id="tab_views">
                  <?php
                     $views_activity = get_views_tracking('proposal',$proposal->id);
                       if(count($views_activity) === 0) {
                     echo '<h4 class="no-margin">'._l('not_viewed_yet',_l('proposal_lowercase')).'</h4>';
                     }
                     foreach($views_activity as $activity){ ?>
                  <p class="text-success no-margin">
                     <?php echo _l('view_date') . ': ' . _dt($activity['date']); ?>
                  </p>
                  <p class="text-muted">
                     <?php echo _l('view_ip') . ': ' . $activity['view_ip']; ?>
                  </p>
                  <hr />
                  <?php } ?>
               </div>
            </div>
         </div>
      </div>
   </div>
       <!-- mz -->
<!--       <div class="isPayments" style="display:none;">-->
           <?php $this->load->view('admin/proposals/modals/add_peyment_modal'); ?>
           <?php $this->load->view('admin/proposals/invoice_convert_template'); ?>
<!--       </div>-->
       <!-- mz -->
   </div>

</div>



<div id="modal-wrapper"></div>
<?php $this->load->view('admin/proposals/send_proposal_to_email_template'); ?>
<script>
   init_btn_with_tooltips();
   init_datepicker();
   init_selectpicker();
   init_form_reminder();
   init_tabs_scrollable();

     // defined in manage proposals


   //---------------------------------------------------------

    // let addPeyment = document.querySelectorAll('.addPeyment');
    // let noPayments = document.querySelector('.NoPayments');
    // let isPayments = document.querySelector('.isPayments');
    // let cancelPey = document.querySelector('#cancelPey');
    // let id = document.getElementsByName('_attachment_sale_id');
    //
    // console.log(addPeyment);

   // addPeyment[id[0].value].addEventListener('click',()=>{
   //     noPayments.style.display="none";
   //     isPayments.style.display="block";
   // });

   // cancelPey.addEventListener('click',()=>{
   //     isPayments.style.display="none";
   //     noPayments.style.display="block";
   // });

   //---------------------------------------------------------



     proposal_id = '<?php echo $proposal->id; ?>';
     init_proposal_editor();
</script>
