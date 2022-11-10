<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="widget" id="widget-<?php echo create_widget_id(); ?>" data-name="<?php echo _l('projects_chart'); ?>">
  <div class="row">
    <div class="col-md-12">
     <div class="mz-panel">
         <div class="mz-panel-header">
             <span class="dash-micon"><i class="my-ti ti ti-chart-bar"></i></span>
             <span class="dash-mtext">نمودار پروژه ها</span>
         </div>
       <div class="mz-panel-body padding-10">
           <div class="widget-dragger" style="visibility: hidden;"><span class="dash-micon" style="visibility: visible; margin-left: 20px; margin-top: -10px;"><i class="my-ti ti ti-adjustments-horizontal"></i></span></div>
<!--        <p class="padding-5">--><?php //echo _l('home_stats_by_project_status'); ?><!--</p>-->
<!--        <hr class="hr-panel-heading-dashboard">-->
        <div class="relative" style="height:250px">
         <canvas class="chart" height="250" id="projects_status_stats"></canvas>
       </div>
     </div>
   </div>
 </div>
</div>
</div>
