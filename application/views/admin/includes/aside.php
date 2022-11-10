<?php defined('BASEPATH') or exit('No direct script access allowed');
   $totalQuickActionsRemoved = 0;
   $quickActions = $this->app->get_quick_actions_links();
   foreach($quickActions as $key => $item){
    if(isset($item['permission'])){
     if(!has_permission($item['permission'],'','create')){
       $totalQuickActionsRemoved++;
     }
   }
   }
   ?>

<aside id="menu" class="sidebar">
   <ul class="nav metis-menu" id="side-menu">
      <li class="dashboard_user<?php if($totalQuickActionsRemoved == count($quickActions)){echo ' dashboard-user-no-qa';}?>">

          <a href="#">
<!--              <span class="dash-micon"><i class="my-ti ti ti-power"></i></span>-->
              <span class="dash-mtext"><?php if(strlen(_l($current_user->firstname)) <= 15){ echo _l($current_user->firstname); }else{ echo substr(_l($current_user->firstname), 0, 15)."...";} ?></span>
          </a>
       </li>
      <?php if($totalQuickActionsRemoved != count($quickActions)){ ?>
      <li class="quick-links">
         <div class="dropdown dropdown-quick-links mtop10">
            <a href="#" class="dropdown-toggle" id="dropdownQuickLinks" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                <span class="dash-micon"><i class="my-ti ti ti-gavel" aria-hidden="true"></i></span>
            </a>
            <ul class="dropdown-menu" aria-labelledby="dropdownQuickLinks">
               <?php
                  foreach($quickActions as $key => $item){
                   $url = '';
                   if(isset($item['permission'])){
                     if(!has_permission($item['permission'],'','create')){
                      continue;
                    }
                  }
                  if(isset($item['custom_url'])){
                    $url = $item['url'];
                  } else {
                    $url = admin_url(''.$item['url']);
                  }
                  $href_attributes = '';
                  if(isset($item['href_attributes'])){
                    foreach ($item['href_attributes'] as $key => $val) {
                      $href_attributes .= $key . '=' . '"' . $val . '"';
                    }
                  }
                  ?>
               <li>
                  <a href="<?php echo $url; ?>" <?php echo $href_attributes; ?>>
                  <i class="fa fa-plus-square-o"></i>
                  <?php echo $item['name']; ?>
                  </a>
               </li>
               <?php } ?>
            </ul>
         </div>
      </li>
      <?php } ?>
      <?php
         hooks()->do_action('before_render_aside_menu');
         ?>

       <!----------------------------->
<!--       <li>-->
<!--           <a href="#">-->
<!--               <span class="dash-micon"><i class="my-ti ti ti-home"></i></span>-->
<!--               <span class="dash-mtext">داشبورد مثال</span>-->
<!--           </a>-->
<!--       </li>-->
       <!----------------------------->

      <?php
      $I_item = 0;
      foreach($sidebar_menu as $key => $item){
         if((isset($item['collapse']) && $item['collapse']) && count($item['children']) === 0) {
           continue;
         }
         ?>
      <li id="li_<?php echo $I_item;?>" class="menu-item-<?php echo $item['slug']; ?>"
         <?php echo _attributes_to_string(isset($item['li_attributes']) ? $item['li_attributes'] : []); ?>>
         <a class="aside_a" href="<?php echo count($item['children']) > 0 ? '#' : $item['href']; ?>"
          aria-expanded="false"
          <?php echo _attributes_to_string(isset($item['href_attributes']) ? $item['href_attributes'] : []); ?>>
             <span class="dash-micon"><i class="my-ti <?php echo $item['icon']; ?>"></i></span>
             <span class="dash-mtext"><?php echo _l($item['name'],'', false); ?></span>
             <?php if(count($item['children']) > 0){ ?>
                     <div class="arrow-left-d">
                         <span class="ti ti-arrow-narrow-left" id="arrow-left-<?php echo $I_item;?>"></span>
                     </div>
                     <div class="arrow-right-d">
                         <span class="ti ti-arrow-narrow-right" id="arrow-right-<?php echo $I_item;?>" style="display: none;"></span>
                     </div>
             <?php } ?>
             <?php if (isset($item['badge'], $item['badge']['value']) && !empty($item['badge'])) {?>
               <span class="badge pull-right
               <?=isset($item['badge']['type']) &&  $item['badge']['type'] != '' ? "bg-{$item['badge']['type']}" : 'bg-info' ?>"
               <?=(isset($item['badge']['type']) &&  $item['badge']['type'] == '') ||
                        isset($item['badge']['color']) ? "style='background-color: {$item['badge']['color']}'" : '' ?>>
               <?= $item['badge']['value'] ?>
            </span>
            <?php } ?>
            </a>
         <?php if(count($item['children']) > 0){ ?>
         <ul class="nav nav-second-level collapse" aria-expanded="false">
            <?php foreach($item['children'] as $submenu){
               ?>
            <li class="sub-menu-item-<?php echo $submenu['slug']; ?>"
              <?php echo _attributes_to_string(isset($submenu['li_attributes']) ? $submenu['li_attributes'] : []); ?>>
              <a href="<?php echo $submenu['href']; ?>"
               <?php echo _attributes_to_string(isset($submenu['href_attributes']) ? $submenu['href_attributes'] : []); ?>>
               <?php if(!empty($submenu['icon'])){ ?>
                   <span class="dash-micon2"><i class="my2-ti <?php echo $submenu['icon']; ?>"></i></span>
               <?php } ?>
                  <span class="dash-mtext2"><?php echo _l($submenu['name'],'',false); ?></span>
               </a>
             <?php if (isset($submenu['badge'], $submenu['badge']['value']) && !empty($submenu['badge'])) {?>
               <span class="badge pull-right
               <?=isset($submenu['badge']['type']) &&  $submenu['badge']['type'] != '' ? "bg-{$submenu['badge']['type']}" : 'bg-info' ?>"
               <?=(isset($submenu['badge']['type']) &&  $submenu['badge']['type'] == '') ||
                isset($submenu['badge']['color']) ? "style='background-color: {$submenu['badge']['color']}'" : '' ?>>
               <?= $submenu['badge']['value'] ?>
            </span>
            <?php } ?>
            </li>
            <?php } ?>
         </ul>
         <?php } ?>
      </li>
          <!--
          <script>
              var iL_<?php // echo $I_item;?> = document.getElementById("arrow-left-<?php // echo $I_item;?>");
              var iR_<?php // echo $I_item;?> = document.getElementById("arrow-right-<?php // echo $I_item;?>");
              var lI_<?php // echo $I_item;?> = document.getElementById("li_<?php // echo $I_item;?>");
              lI_<?php // echo $I_item;?>.addEventListener('click', ()=>{
                  if(iL_<?php // echo $I_item;?>.style.display === "none"){
                      iR_<?php // echo $I_item;?>.style.display="none";
                      iL_<?php // echo $I_item;?>.style.display="inline-block";
                  }else{
                      iL_<?php // echo $I_item;?>.style.display="none";
                      iR_<?php // echo $I_item;?>.style.display="inline-block";
                  }
              });
          </script>
          -->
      <?php hooks()->do_action('after_render_single_aside_menu', $item); ?>
      <?php $I_item++; } ?>
      <?php if($this->app->show_setup_menu() == true && (is_staff_member() || is_admin())){ ?>
      <li<?php if(get_option('show_setup_menu_item_only_on_hover') == 1) { echo ' style="display:none;"'; } ?> id="setup-menu-item">
         <a href="#" class="open-customizer aside_a">
             <span class="dash-micon"><i class="my-ti ti ti-settings"></i></span>
             <span class="dash-mtext">
             <?php echo _l('تنظیمات'); ?>
             <?php
                 if ($modulesNeedsUpgrade = $this->app_modules->number_of_modules_that_require_database_upgrade()) {
                   echo '<span class="badge menu-badge bg-warning">' . $modulesNeedsUpgrade . '</span>';
                 }
             ?>
             </span>
         </a>
         <?php } ?>
      </li>
       <li class="mtop10"></li>
      <?php hooks()->do_action('after_render_aside_menu'); ?>
      <?php $this->load->view('admin/projects/pinned'); ?>
   </ul>
    <!--
    <div class="ps__rail-x" tabindex="0" style="left: 0px; width: 0px;">
        <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
    </div>
    <div class="ps__rail-y" style="top: 0px; height: 464px; right: 0px;">
        <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 130px;"></div>
    </div>
    -->

</aside>
