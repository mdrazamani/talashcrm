<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_tail(); ?>

<?php

    $type_process = 'bazargani_kharegi';
    $type_process = $thisViews['dp']['en_name'];
    $type_process_view_path = 'processes/bazargani_kharegi';
    $type_process_view_path = 'processes/'.$type_process;
    $type_process_controller = 'projects';
    $type_process_action = 'addAdakheliProcess';

    $data_view = [
        'data_view' => array(
            'title' => $thisViews['dp']['fa_name'],
            'currencys' => array(
                ['key' => '0', 'value' => 'ریال'],
                ['key' => '1', 'value' => 'دلار آمریکا'],
                ['key' => '2', 'value' => 'یورو'],
                ['key' => '3', 'value' => 'پوند'],
                ['key' => '4', 'value' => 'دلار سنگاپور'],
            ),
            'zaman' => array(
                ['key' => '0', 'value' => 'ساعت'],
                ['key' => '1', 'value' => 'روز'],
                ['key' => '2', 'value' => 'هفته'],
                ['key' => '3', 'value' => 'ماه'],
                ['key' => '4', 'value' => 'سال']
            ),
            'raveshHaml' => array(
                ['key' => '0', 'value' => 'هوایی'],
                ['key' => '1', 'value' => 'دریایی'],
                ['key' => '2', 'value' => 'زمینی'],
                ['key' => '3', 'value' => 'مسافر']
            ),
            'nahveTarkhis' => array(
                ['key' => '0', 'value' => 'ثبت سفارش'],
                ['key' => '1', 'value' => 'آزاد'],
                ['key' => '2', 'value' => 'از طریق همکار']
            ),
            'pardakhtType' => array(
                ['key' => '0', 'value' => 'نقدی'],
                ['key' => '1', 'value' => 'حواله'],
                ['key' => '2', 'value' => 'کارت به کارت']
            ),
        ),
        'values' => ''
    ];
?>


<?php
//var_dump($ItemDetailsValues);
//echo $ItemDetailsValues->product_name;
?>

<div class="mz-panel">
    <div class="mz-panel-header">
    <?php
        echo !empty($actionValues->showCode) ? '<span>شناسه: ' .$actionValues->showCode.'</span>' : '';
        echo '<span style="padding: 8px;">نام آیتم: ' .$ItemDetailsValues->product_name.'</span>';
        echo '<span style="padding: 8px;">مدل آیتم: ' .$ItemDetailsValues->product_model.'</span>';
        echo '<span style="padding: 8px;">تعداد خرید: ' . round($itemAbleValues->qty).' '.$itemAbleValues->unit.'</span>';
    ?>
    </div>



    <div class="mz-panel-body" style=" margin: 20px;">

        <div class="row">
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <div style=" cursor: pointer;" id="mz_show1Z1" onClick="showOnZ1()">
                        <span class="dash-micon" style="padding: 8px;" id="show_off_onZ1"><i class="fa fa-plus" style="color: #84c529; font-size: 17px;"></i></span>
                        <span class="dash-mtext">قیمت های قبلی گذاشته شده ی آیتم</span>
                    </div>
                    <div style=" cursor: pointer; display: none;" id="mz_show2Z1" onClick="closeOnZ1()">
                        <span class="dash-micon" id="show_on_offZ1" style="padding: 8px;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
                        <span class="dash-mtext">قیمت های قبلی گذاشته شده ی آیتم</span>
                    </div>
                </div>
                <div class="mz-panel-body" id="mz_panel_body_showZ1" style="display: none;">
                    <div class="row">
                        <?php
                        $table_data = array(
                            //_l(''),
                            _l('#'),
                            _l('شماره'),
                            _l('آیتم'),
                            _l('قیمت خرید'),
                            _l('نوع ارز'),
                            _l('فروشنده'),
                            _l('پیشنهاد دهنده'),
                            _l('تاریخ'),
                            _l('ارجاع'),
                        );
                        render_datatable($table_data,'pList');
                        ?>

                        <?php //init_tail(); ?>

                        <?php
                        hooks()->add_action('app_admin_footer', function(){
                            ?>
                            <script>
                                $(function(){
                                    var trash_ServerParams = {};
                                    $.each($('._hidden_inputs._filters input'),function(){
                                        trash_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
                                        trash_ServerParams['projectId'] = $('#projectId').val();
                                        trash_ServerParams['type'] = $('#type').val();
                                        trash_ServerParams['project_id22'] = 'hello';
                                    });
                                    //console.log(trash_ServerParams);
                                    initDataTable('.table-pList', admin_url+'projects/pList/'+$('#projectId').val()+'/'+$('#type').val(), ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
                                })
                            </script>
                        <?php }) ?>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <div style=" cursor: pointer;" id="mz_show1Z2" onClick="showOnZ2()">
                        <span class="dash-micon" style="padding: 8px;" id="show_off_onZ2"><i class="fa fa-plus" style="color: #84c529; font-size: 17px;"></i></span>
                        <span class="dash-mtext">قیمت های قبلی گذاشته شده معادل تعداد</span>
                    </div>
                    <div style=" cursor: pointer; display: none;" id="mz_show2Z2" onClick="closeOnZ2()">
                        <span class="dash-micon" id="show_on_offZ2" style="padding: 8px;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
                        <span class="dash-mtext">قیمت های قبلی گذاشته شده معادل تعداد</span>
                    </div>
                </div>
                <div class="mz-panel-body" id="mz_panel_body_showZ2" style="display: none;">
                    <div class="row">
                        <?php
                        $table_data = array(
                            //_l(''),
                            _l('#'),
                            _l('شماره'),
                            _l('آیتم'),
                            _l('قیمت خرید'),
                            _l('نوع ارز'),
                            _l('فروشنده'),
                            _l('پیشنهاد دهنده'),
                            _l('تاریخ'),
                            _l('ارجاع'),
                        );
                        render_datatable($table_data,'pList');
                        ?>

                        <?php //init_tail(); ?>

                        <?php
                        hooks()->add_action('app_admin_footer', function(){
                            ?>
                            <script>
                                $(function(){
                                    var trash_ServerParams = {};
                                    $.each($('._hidden_inputs._filters input'),function(){
                                        trash_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
                                        trash_ServerParams['projectId'] = $('#projectId').val();
                                        trash_ServerParams['type'] = $('#type').val();
                                        trash_ServerParams['project_id22'] = 'hello';
                                    });
                                    //console.log(trash_ServerParams);
                                    initDataTable('.table-pList', admin_url+'projects/pList/'+$('#projectId').val()+'/'+$('#type').val(), ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
                                })
                            </script>
                        <?php }) ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <div style=" cursor: pointer;" id="mz_show1Z3" onClick="showOnZ3()">
                        <span class="dash-micon" style="padding: 8px;" id="show_off_onZ3"><i class="fa fa-plus" style="color: #84c529; font-size: 17px;"></i></span>
                        <span class="dash-mtext">محصولات جایگزین آیتم</span>
                    </div>
                    <div style=" cursor: pointer; display: none;" id="mz_show2Z3" onClick="closeOnZ3()">
                        <span class="dash-micon" id="show_on_offZ3" style="padding: 8px;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
                        <span class="dash-mtext">محصولات جایگزین آیتم</span>
                    </div>
                </div>
                <div class="mz-panel-body" id="mz_panel_body_showZ3" style="display: none;">
                    <div class="row">
                        <?php
                        $table_data = array(
                            //_l(''),
                            _l('#'),
                            _l('شماره'),
                            _l('آیتم'),
                            _l('قیمت خرید'),
                            _l('نوع ارز'),
                            _l('فروشنده'),
                            _l('پیشنهاد دهنده'),
                            _l('تاریخ'),
                            _l('ارجاع'),
                        );
                        render_datatable($table_data,'pList');
                        ?>

                        <?php //init_tail(); ?>

                        <?php
                        hooks()->add_action('app_admin_footer', function(){
                            ?>
                            <script>
                                $(function(){
                                    var trash_ServerParams = {};
                                    $.each($('._hidden_inputs._filters input'),function(){
                                        trash_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
                                        trash_ServerParams['projectId'] = $('#projectId').val();
                                        trash_ServerParams['type'] = $('#type').val();
                                        trash_ServerParams['project_id22'] = 'hello';
                                    });
                                    //console.log(trash_ServerParams);
                                    initDataTable('.table-pList', admin_url+'projects/pList/'+$('#projectId').val()+'/'+$('#type').val(), ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
                                })
                            </script>
                        <?php }) ?>
                    </div>
                </div>
            </div>
        </div>






        <div class="row">
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <div style=" cursor: pointer;" id="mz_show1Z4" onClick="showOnZ4()">
                        <span class="dash-micon" style="padding: 8px;" id="show_off_onZ4"><i class="fa fa-plus" style="color: #84c529; font-size: 17px;"></i></span>
                        <span class="dash-mtext"> مشخصات فنی آیتم</span>
                    </div>
                    <div style=" cursor: pointer; display: none;" id="mz_show2Z4" onClick="closeOnZ4()">
                        <span class="dash-micon" id="show_on_offZ4" style="padding: 8px;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
                        <span class="dash-mtext"> مشخصات فنی آیتم</span>
                    </div>
                </div>
                <div class="mz-panel-body" id="mz_panel_body_showZ4" style="display: none;">
                    hello
                </div>
            </div>
        </div>

        <div class="row">
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <div style=" cursor: pointer;" id="mz_show1Z5" onClick="showOnZ5()">
                        <span class="dash-micon" style="padding: 8px;" id="show_off_onZ5"><i class="fa fa-plus" style="color: #84c529; font-size: 17px;"></i></span>
                        <span class="dash-mtext">سابقه فروش آیتم</span>
                    </div>
                    <div style=" cursor: pointer; display: none;" id="mz_show2Z5" onClick="closeOnZ5()">
                        <span class="dash-micon" id="show_on_offZ5" style="padding: 8px;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
                        <span class="dash-mtext">سابقه فروش آیتم</span>
                    </div>
                </div>
                <div class="mz-panel-body" id="mz_panel_body_showZ5" style="display: none;">
                    hello
                </div>
            </div>
        </div>




        <div class="row">
            <div class="mz-panel">
                <div class="mz-panel-header">
                    <div style=" cursor: pointer;" id="mz_show1Z6" onClick="showOnZ6()">
                        <span class="dash-micon" style="padding: 8px;" id="show_off_onZ6"><i class="fa fa-plus" style="color: #84c529; font-size: 17px;"></i></span>
                        <span class="dash-mtext">ایمیل</span>
                    </div>
                    <div style=" cursor: pointer; display: none;" id="mz_show2Z6" onClick="closeOnZ6()">
                        <span class="dash-micon" id="show_on_offZ6" style="padding: 8px;"><i class="fa fa-minus" style="color: #cf0318; cursor: pointer; font-size: 17px;"></i></span>
                        <span class="dash-mtext">ایمیل</span>
                    </div>
                </div>
                <div class="mz-panel-body" id="mz_panel_body_showZ6" style="display: none;">
                    hello
                </div>
            </div>
        </div>


    </div>

</div>

<script>
    let mz_panel_body_show = document.getElementById('mz_panel_body_show');
    let mz_show1 = document.getElementById('mz_show1');
    let mz_show2 = document.getElementById('mz_show2');
    function showOn(){
        mz_show1.style.display = "none";
        mz_show2.style.display = "block";
        mz_panel_body_show.style.display="block";
    }

    function closeOn(){
        mz_show2.style.display = "none";
        mz_show1.style.display = "block";
        mz_panel_body_show.style.display="none";
    }

    //-----------------------------------------------------

    let mz_panel_body_showZ1 = document.getElementById('mz_panel_body_showZ1');
    let mz_show1Z1 = document.getElementById('mz_show1Z1');
    let mz_show2Z1 = document.getElementById('mz_show2Z1');
    function showOnZ1(){
        mz_show1Z1.style.display = "none";
        mz_show2Z1.style.display = "block";
        mz_panel_body_showZ1.style.display="block";
    }

    function closeOnZ1(){
        mz_show2Z1.style.display = "none";
        mz_show1Z1.style.display = "block";
        mz_panel_body_showZ1.style.display="none";
    }

    //-----------------------------------------------------

    let mz_panel_body_showZ2 = document.getElementById('mz_panel_body_showZ2');
    let mz_show1Z2 = document.getElementById('mz_show1Z2');
    let mz_show2Z2 = document.getElementById('mz_show2Z2');
    function showOnZ2(){
        mz_show1Z2.style.display = "none";
        mz_show2Z2.style.display = "block";
        mz_panel_body_showZ2.style.display="block";
    }

    function closeOnZ2(){
        mz_show2Z2.style.display = "none";
        mz_show1Z2.style.display = "block";
        mz_panel_body_showZ2.style.display="none";
    }

    //-----------------------------------------------------

    let mz_panel_body_showZ3 = document.getElementById('mz_panel_body_showZ3');
    let mz_show1Z3 = document.getElementById('mz_show1Z3');
    let mz_show2Z3 = document.getElementById('mz_show2Z3');
    function showOnZ3(){
        mz_show1Z3.style.display = "none";
        mz_show2Z3.style.display = "block";
        mz_panel_body_showZ3.style.display="block";
    }

    function closeOnZ3(){
        mz_show2Z3.style.display = "none";
        mz_show1Z3.style.display = "block";
        mz_panel_body_showZ3.style.display="none";
    }


    //-----------------------------------------------------

    let mz_panel_body_showZ4 = document.getElementById('mz_panel_body_showZ4');
    let mz_show1Z4 = document.getElementById('mz_show1Z4');
    let mz_show2Z4 = document.getElementById('mz_show2Z4');
    function showOnZ4(){
        mz_show1Z4.style.display = "none";
        mz_show2Z4.style.display = "block";
        mz_panel_body_showZ4.style.display="block";
    }

    function closeOnZ4(){
        mz_show2Z4.style.display = "none";
        mz_show1Z4.style.display = "block";
        mz_panel_body_showZ4.style.display="none";
    }

    //-----------------------------------------------------

    let mz_panel_body_showZ5 = document.getElementById('mz_panel_body_showZ5');
    let mz_show1Z5 = document.getElementById('mz_show1Z5');
    let mz_show2Z5 = document.getElementById('mz_show2Z5');
    function showOnZ5(){
        mz_show1Z5.style.display = "none";
        mz_show2Z5.style.display = "block";
        mz_panel_body_showZ5.style.display="block";
    }

    function closeOnZ5(){
        mz_show2Z5.style.display = "none";
        mz_show1Z5.style.display = "block";
        mz_panel_body_showZ5.style.display="none";
    }

    //-----------------------------------------------------

    let mz_panel_body_showZ6 = document.getElementById('mz_panel_body_showZ6');
    let mz_show1Z6 = document.getElementById('mz_show1Z6');
    let mz_show2Z6 = document.getElementById('mz_show2Z6');
    function showOnZ6(){
        mz_show1Z6.style.display = "none";
        mz_show2Z6.style.display = "block";
        mz_panel_body_showZ6.style.display="block";
    }

    function closeOnZ6(){
        mz_show2Z6.style.display = "none";
        mz_show1Z6.style.display = "block";
        mz_panel_body_showZ6.style.display="none";
    }
</script>

<?php echo form_open('admin/'.$type_process_controller.'/'.$type_process_action, array('id'=>$type_process.'_Form')); ?>

<?php $this->view('admin/projects/thisViews/views/processes/process_details'); ?>

<?php $this->view('admin/projects/thisViews/views/'.$type_process_view_path, $data_view); ?>

<input type="hidden" name="projectID" id="projectID" value="<?php echo $project->id; ?>"/>
<input type="hidden" name="staffID" id="staffID" value="<?php echo $_SESSION['staff_user_id']; ?>"/>
<input type="hidden" name="itemID" id="itemID" value="<?php echo !empty($_GET['itemId']) ? $_GET['itemId'] : ''; ?>"/>
<input type="hidden" name="bazargani_type" id="bazargani_type" value="<?php echo $type_process;?>"/>

<input type="hidden" name="initialID" id="initialID" value="<?php echo $_GET['initialID']; ?>">

<div class="btn-bottom-toolbar btn-toolbar-container-out text-right" style="left: 0;">
    <button class="btn btn-info only-save customer-form-submiter" id="btnSub">
        ذخیره            </button>
    <button class="btn btn-info save-and-add-contact customer-form-submiter" id="btnSub2">
        ذخیره و افزودن پیشنهاد جدید            </button>
    <button class="btn btn-info save-and-add-contact customer-form-submiter" id="btnSub2">
        ذخیره و ارجاع            </button>
    <button class="btn btn-info save-and-add-contact customer-form-submiter" id="btnSub2">
        ذخیره و ارسال ایمیل            </button>
</div>
<?php echo form_close(); ?>


<script>
    let form = document.getElementById('<?php echo $type_process.'_Form'; ?>');
    let btnSub = document.getElementById('btnSub');
    btnSub.addEventListener('click',()=>{
        form.submit();
    });
</script>
