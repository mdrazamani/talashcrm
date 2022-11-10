<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-trash"></i></span>
                        <span class="dash-mtext">اقدام های خاتمه یافته</span>

                        <?php
                        echo _jd('2022-09-06');
                        //echo "<br/>";
                        //echo time();
                        ?>

                    </div>
                    <div class="mz-panel-body">
                        <div class="_buttons">
                            <a href="<?php echo admin_url('leads');?>" class="btn mright5 btn-info pull-left display-block">
                                <?php echo _l('اقدام ها'); ?>
                            </a>
                            <div class="row">
                                <div class="col-md-5">
                                    <a href="#" class="btn btn-default btn-with-tooltip" data-toggle="tooltip" data-title="<?php echo _l('leads_summary'); ?>" data-placement="bottom" onclick="slideToggle('.leads-overview'); return false;"><i class="fa fa-bar-chart"></i></a>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                            <div class="row hide leads-overview">
                                <hr class="hr-panel-heading" />
                                <div class="col-md-12">
                                    <h4 class="no-margin"><?php echo _l('leads_summary'); ?></h4>
                                </div>
                                <?php
                                foreach($summary as $status) { ?>
                                    <div class="col-md-2 col-xs-6 border-right">
                                        <h3 class="bold">
                                            <?php
                                            if(isset($status['percent'])) {
                                                echo '<span data-toggle="tooltip" data-title="'.$status['total'].'">'.$status['percent'].'%</span>';
                                            } else {
                                                // Is regular status
                                                echo $status['total'];
                                            }
                                            ?>
                                        </h3>
                                        <span style="color:<?php echo $status['color']; ?>" class="<?php echo isset($status['junk']) || isset($status['lost']) ? 'text-danger' : ''; ?>"><?php echo $status['name']; ?></span>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                        <hr class="hr-panel-heading" />
                        <div class="_filters _hidden_inputs">
                            <?php
                            if(isset($trashes)) {
                                echo form_hidden('lead_id','245646');
                            }
                            ?>
                        </div>

                        <div class="tab-content">
                            <?php
                            if($this->session->has_userdata('leads_kanban_view') && $this->session->userdata('leads_kanban_view') == 'true') { ?>
                                <div class="active kan-ban-tab" id="kan-ban-tab" style="overflow:auto;">
                                    <div class="kanban-leads-sort">
                                        <span class="bold"><?php echo _l('leads_sort_by'); ?>: </span>
                                        <a href="#" onclick="leads_kanban_sort('dateadded'); return false" class="dateadded">
                                            <?php if(get_option('default_leads_kanban_sort') == 'dateadded'){echo '<i class="kanban-sort-icon fa fa-sort-amount-'.strtolower(get_option('default_leads_kanban_sort_type')).'"></i> ';} ?><?php echo _l('leads_sort_by_datecreated'); ?>
                                        </a>
                                        |
                                        <a href="#" onclick="leads_kanban_sort('leadorder');return false;" class="leadorder">
                                            <?php if(get_option('default_leads_kanban_sort') == 'leadorder'){echo '<i class="kanban-sort-icon fa fa-sort-amount-'.strtolower(get_option('default_leads_kanban_sort_type')).'"></i> ';} ?><?php echo _l('leads_sort_by_kanban_order'); ?>
                                        </a>
                                        |
                                        <a href="#" onclick="leads_kanban_sort('lastcontact');return false;" class="lastcontact">
                                            <?php if(get_option('default_leads_kanban_sort') == 'lastcontact'){echo '<i class="kanban-sort-icon fa fa-sort-amount-'.strtolower(get_option('default_leads_kanban_sort_type')).'"></i> ';} ?><?php echo _l('leads_sort_by_lastcontact'); ?>
                                        </a>
                                    </div>
                                    <div class="row">
                                        <div class="container-fluid leads-kan-ban">
                                            <div id="kan-ban"></div>
                                        </div>
                                    </div>
                                </div>
                            <?php } else { ?>
                                <div class="row" id="leads-table">

                                    <div class="clearfix"></div>
                                    <div class="col-md-12">
                                        <a href="#" data-toggle="modal" data-table=".table-leads" data-target="#leads_bulk_actions" class="hide bulk-actions-btn table-btn"><?php echo _l('bulk_actions'); ?></a>
                                        <div class="modal fade bulk_actions" id="leads_bulk_actions" tabindex="-1" role="dialog">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title"><?php echo _l('bulk_actions'); ?></h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <?php if(has_permission('leads','','delete')){ ?>
                                                            <div class="checkbox checkbox-danger">
                                                                <input type="checkbox" name="mass_delete" id="mass_delete">
                                                                <label for="mass_delete"><?php echo _l('mass_delete'); ?></label>
                                                            </div>
                                                            <hr class="mass_delete_separator" />
                                                        <?php } ?>
                                                        <div id="bulk_change">
                                                            <div class="form-group">
                                                                <div class="checkbox checkbox-primary checkbox-inline">
                                                                    <input type="checkbox" name="leads_bulk_mark_lost" id="leads_bulk_mark_lost" value="1">
                                                                    <label for="leads_bulk_mark_lost">
                                                                        <?php echo _l('lead_mark_as_lost'); ?>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <?php echo render_select('move_to_status_leads_bulk',$statuses,array('id','name'),'ticket_single_change_status'); ?>
                                                            <?php
                                                            echo render_select('move_to_source_leads_bulk',$sources,array('id','name'),'lead_source');
                                                            echo render_datetime_input('leads_bulk_last_contact','leads_dt_last_contact');
                                                            echo render_select('assign_to_leads_bulk',$staff,array('staffid',array('firstname','lastname')),'leads_dt_assigned');
                                                            ?>
                                                            <div class="form-group">
                                                                <?php echo '<p><b><i class="fa fa-tag" aria-hidden="true"></i> ' . _l('tags') . ':</b></p>'; ?>
                                                                <input type="text" class="tagsinput" id="tags_bulk" name="tags_bulk" value="" data-role="tagsinput">
                                                            </div>
                                                            <hr />
                                                            <div class="form-group no-mbot">
                                                                <div class="radio radio-primary radio-inline">
                                                                    <input type="radio" name="leads_bulk_visibility" id="leads_bulk_public" value="public">
                                                                    <label for="leads_bulk_public">
                                                                        <?php echo _l('lead_public'); ?>
                                                                    </label>
                                                                </div>
                                                                <div class="radio radio-primary radio-inline">
                                                                    <input type="radio" name="leads_bulk_visibility" id="leads_bulk_private" value="private">
                                                                    <label for="leads_bulk_private">
                                                                        <?php echo _l('private'); ?>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                                                        <a href="#" class="btn btn-info" onclick="leads_bulk_action(this); return false;"><?php echo _l('confirm'); ?></a>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>






<?php //var_dump($trashStaff); ?>






                                        <!-------- --------->


                                                                <!-- if invoiceid found in url -->
                                                                <?php //echo form_hidden('project_id',$project->id); ?>
                                                                <?php
                                                                $table_data = array(
                                                                    _l('#'),
                                                                    _l('عنوان'),
                                                                    _l('مشتری'),
                                                                    _l('ارزش اقدام'),
                                                                    _l('ایجاد کننده'),
                                                                    _l('اختصاص یافته به'),
                                                                    _l('خاتمه دهنده'),
                                                                    _l('تاریخ ایجاد شدن'),
                                                                    _l('تاریخ خاتمه یافتن'),
                                                                );
                                                                render_datatable($table_data,'trash');
                                                                ?>


                                        <?php
                                        hooks()->add_action('app_admin_footer', function(){
                                            ?>
                                            <script>
                                                $(function(){
                                                    var trash_ServerParams = {};
                                                    $.each($('._hidden_inputs._filters input'),function(){
                                                        trash_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
                                                    });
                                                    console.log(trash_ServerParams);
                                                    initDataTable('.table-trash', admin_url+'leads/trash_table', ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
                                                })
                                            </script>
                                        <?php }) ?>


                                        <!-------- --------->
















                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>





    </div>
</div>
<!--<script id="hidden-columns-table-leads" type="text/json">-->
<!--   --><?php ////echo get_staff_meta(get_staff_user_id(), 'hidden-columns-table-leads'); ?>
<!--</script>-->
<?php //include_once(APPPATH.'views/admin/leads/status.php'); ?>

<script>
    //var openLeadID = '<?php //echo $leadid; ?>//';
    //$(function(){
    //    leads_kanban();
    //    $('#leads_bulk_mark_lost').on('change', function(){
    //        $('#move_to_status_leads_bulk').prop('disabled', $(this).prop('checked') == true);
    //        $('#move_to_status_leads_bulk').selectpicker('refresh')
    //    });
    //    $('#move_to_status_leads_bulk').on('change', function(){
    //        if($(this).selectpicker('val') != '') {
    //            $('#leads_bulk_mark_lost').prop('disabled', true);
    //            $('#leads_bulk_mark_lost').prop('checked', false);
    //        } else {
    //            $('#leads_bulk_mark_lost').prop('disabled', false);
    //        }
    //    });
    //});
</script>
<?php init_tail(); ?>

</body>
</html>
