<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="widget" id="widget-<?php echo create_widget_id(); ?>" data-name="<?php echo _l('calendar'); ?>">
  <div class="clearfix"></div>
  <div class="mz-panel">
      <div class="mz-panel-header">
          <span class="dash-micon"><i class="my-ti ti ti-calendar-event"></i></span>
          <span class="dash-mtext">تقویم</span>
      </div>
   <div class="mz-panel-body">
       <div class="widget-dragger" style="visibility: hidden;"><span class="dash-micon" style="visibility: visible; margin-left: 20px; margin-top: -10px;"><i class="my-ti ti ti-adjustments-horizontal"></i></span></div>
    <div class="dt-loader hide"></div>
    <?php $this->load->view('admin/utilities/calendar_filters'); ?>
    <div id="calendar"></div>
  </div>
</div>
<div class="clearfix"></div>
</div>

