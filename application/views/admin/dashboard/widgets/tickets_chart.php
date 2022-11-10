<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="widget" id="widget-<?php echo create_widget_id(); ?>">
  <?php if((get_option('access_tickets_to_none_staff_members') == 1 && !is_staff_member() || is_staff_member()) && (count($tickets_reply_by_status_no_json['datasets'][0]['data']) > 0 || count($tickets_awaiting_reply_by_department_no_json['datasets'][0]['data']) > 0)){ ?>
  <div class="mz-panel">
      <div class="mz-panel-header">
          <span class="dash-micon"><i class="my-ti ti ti-ticket"></i></span>
          <span class="dash-mtext">تیکت های کارمندان</span>
      </div>
   <div class="mz-panel-body padding-10">
       <div class="widget-dragger" style="visibility: hidden;"><span class="dash-micon" style="visibility: visible; margin-left: 20px; margin-top: -10px;"><i class="my-ti ti ti-adjustments-horizontal"></i></span></div>
     <div class="row">
      <div class="col-md-12 mbot10">
        <p class="padding-5"> <?php echo _l('home_tickets_awaiting_reply_by_status'); ?></p>
        <hr class="hr-panel-heading-dashboard">
        <canvas height="170" id="tickets-awaiting-reply-by-status"></canvas>
      </div>
      <div class="clearfix"></div>
      <hr class="no-margin" />
      <div class="clearfix mtop10"></div>
      <div class="col-md-12">
<!--       <p class="padding-5">--><?php //echo _l('home_tickets_awaiting_reply_by_department'); ?><!--</p>-->
<!--       <hr class="hr-panel-heading-dashboard">-->
       <canvas height="170" id="tickets-awaiting-reply-by-department"></canvas>
     </div>
   </div>
 </div>
</div>
<?php } ?>
</div>

