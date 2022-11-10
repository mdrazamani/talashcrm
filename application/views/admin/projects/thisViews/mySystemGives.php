<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<?php
$type_process = $thisViews['dp']['en_name'];
$type_process_view_path = 'processes/'.$type_process;
$type_process_controller = 'projects';
$type_process_action = 'addAdakheliProcess';
?>

<input type="hidden" name="projectId" id="projectId" value="<?php echo $project->id; ?>">
<input type="hidden" name="type" id="type" value="<?php echo $thisViews['dp']['en_name']; ?>">

<?php
$table_data = array(
    _l(''),
    _l('#'),
    _l('عنوان'),
    _l('تعداد'),
    _l('تکمیل کننده'),
    _l('تاریخ تکمیل'),
    _l('اقدام'),
    //_l('فروشنده'),
    //_l('پیشنهاد دهنده'),
    //_l('تاریخ'),
    //_l('جزئیات'),
);
render_datatable($table_data,'gList');
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
                trash_ServerParams['project_id22'] = 'hello';
            });
            //console.log(trash_ServerParams);

            //initDataTable('.table-gList', admin_url+'projects/getGivesLists_kharegi/'+$('#projectId').val()+'/'+$('#type').val(), ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);

            initDataTable('.table-gList', admin_url+'projects/getGivesLists/'+$('#projectId').val()+'/'+$('#type').val(), ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
        })
    </script>
<?php }) ?>


<!-- -->
<div class="modal fade" id="updateItem2" style="overflow-y: scroll; background-color: rgba(0,0,0,0.6);" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <?php echo form_open('admin/projects/sendItem', array('id' => 'sendForm')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="closeModal2()" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2"></h4>
            </div>
            <div class="modal-body">

                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                        <span class="dash-mtext"> مشخصات اصلی </span>
                    </div>
                    <div class="mz-panel-body">
                        <div class="row">
                            <div class="col-md-3">
                                <?php echo render_input('productnumber', 'کد محصول', ''); ?>
                            </div>
                            <div class="col-md-3">
                                <?php echo render_input('product_model', 'مدل محصول', ''); ?>
                            </div>
                            <div class="col-md-3">

                                <div class="form-group select-placeholder">
                                    <label for="brandNew" class="control-label"><?php echo _l('برند'); ?></label>
                                    <select name="brandNew" id="brandNew" class="selectpicker" data-width="100%"
                                            data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                        <?php foreach ($data_modal['brands'] as $brand) { ?>
                                            <option value="<?php echo $brand['key']; ?>"><?php echo $brand['value']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>

                            </div>
                            <div class="col-md-3">
                                <div class="form-group select-placeholder">
                                    <label for="countryBuilderNew"
                                           class="control-label"><?php echo _l('کشور سازنده'); ?></label>
                                    <select id="countryBuilderNew" name="countryBuilderNew" class="selectpicker"
                                            data-width="100%"
                                            data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                        <?php foreach ($data_modal['countrys'] as $country) { ?>
                                            <option value="<?php echo $country['key']; ?>"><?php echo $country['value']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                        <span class="dash-mtext"> ورن و ابعاد </span>
                    </div>
                    <div class="mz-panel-body">
                        <div class="row">
                            <div class="col-md-3">
                                <?php echo render_input('abad0', 'وزن(g)', '', 'number', array('min' => '0')); ?>
                            </div>
                            <div class="col-md-3">
                                <?php echo render_input('abad1', 'طول(cm)', '', 'number', array('min' => '0')); ?>
                            </div>
                            <div class="col-md-3">
                                <?php echo render_input('abad2', 'عرض(cm)', '', 'number', array('min' => '0')); ?>
                            </div>
                            <div class="col-md-3">
                                <?php echo render_input('abad3', 'ارتفاع(cm)', '', 'number', array('min' => '0')); ?>
                            </div>
                        </div>
                    </div>
                </div>

                <section id="addJagozinSection">
                    <div class="mz-panel">
                        <div class="mz-panel-header">
                            <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                            <span class="dash-mtext"> محصول جایگزین </span>
                            <div style="float: left; padding: 0px; cursor: pointer; position: relative;"
                                 id="addJagozin">
                                <button type="button" class="btn pull-right btn-info"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="mz-panel-body" id="addJagozinBody">
                            <div id="h-1">


                                <div class="mz-panel">
                                    <div class="mz-panel-header">
                                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                                        <span class="dash-mtext"> مشخصات اصلی </span>
                                    </div>
                                    <div class="mz-panel-body" id="addJagozinMainBody">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <?php echo render_input('jagozin[0][pName]', 'عنوان محصول', ''); ?>
                                            </div>
                                            <div class="col-md-4">
                                                <?php echo render_input('jagozin[0][pCode]', 'کد محصول', ''); ?>
                                            </div>
                                            <div class="col-md-4">
                                                <?php echo render_input('jagozin[0][pModel]', 'مدل محصول', ''); ?>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group select-placeholder">
                                                    <label for="jagozin[0][pBrand]"
                                                           class="control-label"><?php echo _l('برند'); ?></label>
                                                    <select name="jagozin[0][pBrand]" id="jagozin[0][pBrand]"
                                                            class="selectpicker" data-width="100%"
                                                            data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                                        <?php foreach ($data_modal['brands'] as $brand) { ?>
                                                            <option value="<?php echo $brand['key']; ?>"><?php echo $brand['value']; ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>

                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group select-placeholder">
                                                    <label for="jagozin[0][pCountry]"
                                                           class="control-label"><?php echo _l('کشور سازنده'); ?></label>
                                                    <select name="jagozin[0][pCountry]" id="jagozin[0][pCountry]"
                                                            class="selectpicker" data-width="100%"
                                                            data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                                        <?php foreach ($data_modal['countrys'] as $country) { ?>
                                                            <option value="<?php echo $country['key']; ?>"><?php echo $country['value']; ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="mz-panel">
                                    <div class="mz-panel-header">
                                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                                        <span class="dash-mtext"> وزن و ابعاد </span>
                                    </div>
                                    <div class="mz-panel-body">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <?php echo render_input('jagozin[0][pvazn]', 'وزن(g)', '', 'number'); ?>
                                            </div>
                                            <div class="col-md-3">
                                                <?php echo render_input('jagozin[0][ptol]', 'طول(cm)', '', 'number'); ?>
                                            </div>
                                            <div class="col-md-3">
                                                <?php echo render_input('jagozin[0][parz]', 'عرض(cm)', '', 'number'); ?>
                                            </div>
                                            <div class="col-md-3">
                                                <?php echo render_input('jagozin[0][pert]', 'ارتفاع(cm)', '', 'number'); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <p class="bold"><?php echo _l('شرح کلی جایگزین'); ?></p>
                                        <?php //$contents = ''; if(isset($project)){$contents = $project->description;} ?>
                                        <textarea class="form-control" id="jagozin[0][psha]" name="jagozin[0][psha]"
                                                  rows="5"></textarea>

                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </section>

                <div class="row">
                    <div class="col-md-12">
                        <p class="bold"><?php echo _l('شرح کلی'); ?></p>
                        <?php //$contents = ''; if(isset($project)){$contents = $project->description;} ?>
                        <textarea class="form-control" id="description" name="description" rows="5"></textarea>

                    </div>
                </div>

                <input type="hidden" name="itemIdAjax" id="itemIdAjax">
                <input type="hidden" name="projectIdAjax" id="projectIdAjax" value="<?php echo $project->id;?>">
                <input type="hidden" name="staff_user_id" id="staff_user_id" value="<?php echo $_SESSION['staff_user_id'];?>">
                <input type="hidden" name="nameAjax" id="nameAjax">
                <input type="hidden" name="checkUpdate" id="checkUpdate" value="0">
                <input type="hidden" name="checkUpdateID" id="checkUpdateID">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" onclick="closeModal2()"
                        data-dismiss="modal"><?php echo _l('انصراف'); ?></button>
                <button type="button" id="updateItemBtn" data-form="#lead_to_client_form" autocomplete="off"
                        data-loading-text="<?php echo _l('wait_text'); ?>"
                        class="btn btn-info"><?php echo _l('ذخیره'); ?></button>
            </div>
        </div>
        <?php echo form_close(); ?>
    </div>
</div>
<!-- -->


<div class="modal fade" id="sendMoadl" style="overflow-y: scroll; background-color: rgba(0,0,0,0.6);" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <?php echo form_open('admin/projects/sendItem',array('id'=>'sendForm')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="closeModal()" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <?php echo _l('ارجاع'); ?>
                </h4>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group select-placeholder">
                            <label for="send[department]" class="control-label"><?php echo _l('دپارتمان'); ?></label>
                            <select name="send[department]" id="department" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                <option value="empty1">لطفا انتخاب کنید!</option>
                                <!--                                <option value="11">11</option>-->
                                <!--                                <option value="10">10</option>-->
                                <?php foreach($deparments as $d){
                                    if($thisViews['dp']['dp_id'] != $d['departmentid']){ ?>
                                    <option value="<?php echo $d['departmentid'];?>"><?php echo $d['name'];?></option>
                                <?php } } ?>
                            </select>
                        </div>

                    </div>
                    <div class="col-md-3">
                        <label for="send[jobPosition]" class="control-label"><?php echo _l('موقعیت شغلی'); ?></label>
                        <select name="send[jobPosition]" id="jobPosition" style="background-color: #fff;" class=" form-control btn-default" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                            <option value="empty2">ابتدا دپارتمان را انتخاب کنید!</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="send[staff]" class="control-label"><?php echo _l('کارمند'); ?></label>
                        <select name="send[staff]" id="staff" style="background-color: #fff;" class=" form-control btn-default" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                            <option value="empty3">ابتدا موقعیت شغلی را انتخاب کنید!</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group select-placeholder">
                            <label for="send[stat]" class="control-label"><?php echo _l('الویت'); ?></label>
                            <select name="send[stat]" id="stat" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                <option value="0">خیلی بالا</option>
                                <option value="1"> بالا</option>
                                <option value="2"> متوسط</option>
                                <option value="3"> کم</option>
                                <option value="4"> خیلی کم</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <p class="bold"><?php echo _l('توضیحات ارجاع'); ?></p>
                        <textarea id="desc" name="send[desc]" rows="5" class="form-control"></textarea>
                    </div>
                </div>

                <input type="hidden" name="send[sender]" id="sender" value="<?php echo $_SESSION['staff_user_id']; ?>">
                <input type="hidden" id="resultSend" name="send[id]">

                <div class="row" style="margin: 20px; text-align: center;">
                    <div class="col-md-12">تاریخچه ارسال:</div>
                </div>
                <div id="allResShows"></div>
                <div id="resultSendShow"></div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" onclick="closeModal()" data-dismiss="modal"><?php echo _l('انصراف'); ?></button>
                <button type="button" id="sendBtn" data-form="#lead_to_client_form" autocomplete="off" data-loading-text="<?php echo _l('wait_text'); ?>" class="btn btn-info"><?php echo _l('ارسال'); ?> <i class="fa fa-send"></i> </button>
            </div>
        </div>
        <?php echo form_close(); ?>
    </div>
</div>

<?php init_tail(); ?>

<script>
    $(document).ready(function () {
        let ajaxP = document.getElementById('department');
       let select_contacts = document.getElementById('jobPosition');
       ajaxP.addEventListener('change',()=>{
            $.ajax({
                url: '<?php echo site_url("admin/projects/showJobDepartment");?>',
                type: 'post',
                data:{
                    departmentId: ajaxP.value,
                },
                success:function(data){
                    let result = JSON.parse(data);
                    if(result.contacts.length !== 0){
                        select_contacts.innerHTML = '<option value="empty2">لطفا انتخاب کنید!</option>';
                        for(let i=0; i<result.contacts.length; i++){

                            // select_contacts.innerHTML += `<option value="24">24</option>`;

                            select_contacts.innerHTML += `<option value="${result.contacts[i].position_id}">${result.contacts[i].position_name}</option>`;
                        }
                        //console.log(result);
                    }else{
                        select_contacts.innerHTML = `<option value="">مخاطبی وجود ندارد!</option>`;
                        //console.log(data);
                    }
                }
            });
        });

        let ajaxP2 = document.getElementById('jobPosition');
        let select_contacts2 = document.getElementById('staff');
        ajaxP2.addEventListener('change',()=>{
            $.ajax({
                url: '<?php echo site_url("admin/projects/showStaffDepartment");?>',
                type: 'post',
                data:{
                    departmentId: ajaxP2.value,
                },
                success:function(data){
                    let result = JSON.parse(data);
                    if(result.contacts2.length !== 0){
                        select_contacts2.innerHTML = '<option value="empty3">لطفا انتخاب کنید!</option>';
                        for(let i=0; i<result.contacts2.length; i++){
                            select_contacts2.innerHTML += `<option value="${result.contacts2[i].staffid}">${result.contacts2[i].firstname} ${result.contacts2[i].lastname}</option>`;
                            //console.log(result.contacts2[i].staffid);
                        }

                    }else{
                        select_contacts2.innerHTML = `<option value="">مخاطبی وجود ندارد!</option>`;
                        //console.log(data);
                    }
                }
            });
        });




        ////////


        let sendBtn = document.getElementById('sendBtn');
        //let select_contacts2 = document.getElementById('staff');

        let department_P = document.getElementById('department');
        let jobPosition_P = document.getElementById('jobPosition');
        let staff_P = document.getElementById('staff');
        let stat_P = document.getElementById('stat');
        let send_P = document.getElementById('desc');
        let sender_P = document.getElementById('sender');
        let resultSend_P = document.getElementById('resultSend');
        let sendtype_p = 'forosh';

        let allResShows = document.getElementById('allResShows');

        let resultSendShow = document.getElementById('resultSendShow');
        sendBtn.addEventListener('click',()=>{

            let send = {
                department:department_P.value,
                jobPosition:jobPosition_P.value,
                staff:staff_P.value,
                stat:stat_P.value,
                send:send_P.value,
                sender:sender_P.value,
                resultSend:resultSend_P.value,
            };

            if(send.department === 'empty1' || send.jobPosition === 'empty2' || send.staff === 'empty3'){
                let message = '';
                message += '<div class="alert alert-danger"><p>';
                message += send.department === 'empty1' ? 'لطفا دپارتمان مربوطه را انتخاب کنید!' : '';
                message += '</p>';
                message += '<p>';
                message += send.jobPosition === 'empty2' ? 'لطفا موقعیت شغلی مربوطه را انتخاب کنید!' : '';
                message += '</p>';
                message += '<p>';
                message += send.staff === 'empty3' ? 'لطفا کارمند مربوطه را انتخاب کنید!' : '';
                message += '</p></div>';
                allResShows.innerHTML += message;
            }else{
                $.ajax({
                    url: '<?php echo site_url("admin/projects/addSend2");?>',
                    type: 'post',
                    data:{
                        //allSend: send
                        department:department_P.value,
                        jobPosition:jobPosition_P.value,
                        staff:staff_P.value,
                        stat:stat_P.value,
                        send:send_P.value,
                        sender:sender_P.value,
                        resultSend:resultSend_P.value,
                        sendtype:sendtype_p
                    },
                    success:function(data){
                        let result = JSON.parse(data);

                        //console.log(result.result);

                        if(result.result.alert == 'tt'){
                            resultSendShow.innerHTML += `
                            <div class="alert alert-warning">
                                <p>ارسال ناموفق زیرا:</p>
                                <p>در تاریخ ${result.result.dateSend} توسط ${result.result.sName} به ${result.result.name} ارسال شده بود.</p>
                            </div>
                        `;
                        }else{

                            if(result.result !== ''){
                                allResShows.innerHTML = ``;
                                //resultSendShow.innerHTML += ``;
                                for(let i=0; i<result.result.length; i++){
                                    resultSendShow.innerHTML += `

                                <div class="alert alert-success row" style="margin: 12px;">
                                    <div class="col-md-3"><label>فرستنده: </label> <div>${result.result[i].mz_sender}</div> </div>
                                    <div class="col-md-3"><label>گیرنده: </label> <div>${result.result[i].mz_receiver}</div> </div>
                                    <div class="col-md-3"><label>الویت: </label> <div>${result.result[i].mz_status}</div> </div>
                                    <div class="col-md-3"><label>تاریخ: </label> <div>${result.result[i].dateSend}</div> </div>
                                </div>
                            `;
                                }
                                console.log(result.result[0].department);
                            }else{
                                resultSendShow.innerHTML += `
                            <div class="alert alert-danger">ناموفق بود!</div>
                        `;
                            }
                        }
                    }
                });
            }

        });

    })
</script>

<script>
//    // let showDetails_1 = document.getElementById('showDetails_1');
//    // showDetails_1.addEventListener('click',()=>{
//    //     console.log('hello');
//    // });
//
//    //let mz_list_count = document.getElementById('mz_list_count');
//
//    //console.log(mz_list_count);
//
//    // function startShow(key){
//    //     let showDetails = document.getElementById('showDetails_'+key);
//    //     let showMain = document.getElementById('showMain_'+key);
//    //     let showMainT = document.getElementById('showMainT_'+key);
//    //     let notShowDetails = document.getElementById('notShowDetails_'+key);
//    //
//    //     showDetails.style.display = 'none';
//    //     showMain.style.display = 'block';
//    //     showMainT.style.display = 'block';
//    //     notShowDetails.style.display = 'block';
//    //
//    //     //console.log(showMain);
//    // }
//    //
//    // function endShow(key){
//    //     let showDetails = document.getElementById('showDetails_'+key);
//    //     let showMain = document.getElementById('showMain_'+key);
//    //     let showMainT = document.getElementById('showMainT_'+key);
//    //     let notShowDetails = document.getElementById('notShowDetails_'+key);
//    //
//    //     showDetails.style.display = 'block';
//    //     showMain.style.display = 'none';
//    //     showMainT.style.display = 'none';
//    //     notShowDetails.style.display = 'none';
//    // }
//
   let sendMoadl = document.getElementById('sendMoadl');
   let resultSend = document.getElementById('resultSend');

   function showPm(proposalId){
       sendMoadl.classList.add('in');
       sendMoadl.style.display="block";
       resultSend.value = proposalId;
//
//        //////////////ajax\\\\\\\\\\\\\\
//
        let allResShows = document.getElementById('allResShows');
        let resultSendShow = document.getElementById('resultSendShow');
        allResShows.innerHTML = ``;
        resultSendShow.innerHTML = ``;
        $.ajax({
            url: '<?php echo site_url("admin/projects/showPms2");?>',
            type: 'post',
            data:{
                resultSend:proposalId
            },
            success:function(data){
                let result = JSON.parse(data);
                if(result.resShow !== ''){
                    for(let i=0; i<result.resShow.length; i++){
                        allResShows.innerHTML += `

                                <div class="alert alert-success row" style="margin: 12px;">
                                    <div class="col-md-3"><label>فرستنده: </label> <div>${result.resShow[i].mz_sender}</div> </div>
                                    <div class="col-md-3"><label>گیرنده: </label> <div>${result.resShow[i].mz_receiver}</div> </div>
                                    <div class="col-md-3"><label>الویت: </label> <div>${result.resShow[i].mz_status}</div> </div>
                                    <div class="col-md-3"><label>تاریخ: </label> <div>${result.resShow[i].dateSend}</div> </div>
                                </div>
                            `;
                    }
                    //   console.log(result.resShow);
                }
                if(result.resShow === false){
                    allResShows.innerHTML += `
                            <div class="alert alert-danger">تاکنون ارسال نشده است.</div>
                        `;
                }
            }
        });

    }
//
//    function closeModal(){
//        sendMoadl.classList.remove('in');
//        sendMoadl.style.display="none";
//        //resultSend.innerHTML = proposalId;
//    }
//
//    function show(key,type){
//
//        let showDetails = document.getElementById('showDetails_'+key);
//        let showMain = document.getElementById('showMain_'+key);
//        let showMainT = document.getElementById('showMainT_'+key);
//        let notShowDetails = document.getElementById('notShowDetails_'+key);
//
//        if(type === 'start'){
//            showDetails.style.display = 'none';
//            showMain.style.display = 'block';
//            showMainT.style.display = 'block';
//            notShowDetails.style.display = 'block';
//        }else{
//            showDetails.style.display = 'block';
//            showMain.style.display = 'none';
//            showMainT.style.display = 'none';
//            notShowDetails.style.display = 'none';
//        }
//    }
//
</script>

<script>
//
//
//        let updateMoadl = document.getElementById('updateItem2');
//        let myModalLabel = document.getElementById('myModalLabel2');
//        let nameAjax = document.getElementById('nameAjax');
//        let itemIdAjax = document.getElementById('itemIdAjax');
//
//        //let resultSend = document.getElementById('resultSend');
//
//        function showUpdate(itemId, itemName) {
//        updateMoadl.classList.add('in');
//        updateMoadl.style.display = "block";
//        myModalLabel.innerHTML = 'تکمیل مشخصات فنی ';
//        myModalLabel.innerHTML += itemName;
//        itemIdAjax.value = itemId;
//        nameAjax.value = itemName;
//        //resultSend.value = proposalId;
//    }
//
//        function closeModal2() {
//        updateMoadl.classList.remove('in');
//        updateMoadl.style.display = "none";
//        //resultSend.innerHTML = proposalId;
//    }
//
//
//        ////\\\\
//        let main = document.getElementById('addJagozinSection');
//        let hamlOnaghlBody = document.getElementById('addJagozinBody');
//        let addHamlBtn = document.getElementById('addJagozin');
//        let h1 = document.getElementById('h-1');
//
//        let Removes = [];
//
//        let appChild = [];
//        let numberHaml = 1;
//        appChild[0] = h1;
//
//        let jagozin = '';
//        let jagozinMain = {};
//        //let values = [];
//
//        addHamlBtn.addEventListener('click', () => {
//            //for(let i=0; i<1; i++){
//            appChild[numberHaml] = document.createElement('div');
//            appChild[numberHaml].id = 'h' + numberHaml;
//            //appChild[numberHaml].setAttribute('loaded', 'loaded');
//            var descHtmlString = `
//                        <hr class="hr-panel-heading" />
//                        <div style="padding: 8px; margin: 10px"><span style="text-decoration:underline;">شماره ${numberHaml + 1}:</span>
//                        <div style="float: left; " id="remove_haml_${numberHaml}">
//                            <button type="button" class="btn btn-danger pull-left"><i class="fa fa-trash"></i></button>
//                        </div>
//                        </div>
//
//
//<div class="mz-panel">
//                                    <div class="mz-panel-header">
//                                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
//                                        <span class="dash-mtext"> مشخصات اصلی </span>
//                                    </div>
//                                    <div class="mz-panel-body" id="addJagozinMainBody">
//
//                        <div class="row">
//                                    <div class="col-md-3">
//                                        <?php //$value = (isset($project) ? $project->name : ''); ?>
//                                        <?php ////echo render_input('', 'محصول جایگزین', $value); ?>
//                                        <label for="currencyType"
//                                                   class="control-label"><?php //echo _l('محصول جایگزین'); ?>//</label>
//                                        <input type="text" class="form-control" name="jagozin[${numberHaml}][pName]" id="jagozin[${numberHaml}][pName]" value="" />
//                                    </div>
//                                    <div class="col-md-3">
//                                        <?php //$value = (isset($project) ? $project->name : ''); ?>
//                                        <label for="currencyType"
//                                                   class="control-label"><?php //echo _l('کد جایگزین'); ?>//</label>
//                                        <input type="text" class="form-control" name="jagozin[${numberHaml}][pCode]" id="jagozin[${numberHaml}][pCode]" value="" />
//                                    </div>
//                                    <div class="col-md-3">
//
//                                        <?php //$value = (isset($project) ? $project->name : ''); ?>
//
//                                            <label for="jagozin[${numberHaml}][pBrand]"
//                                                   class="control-label"><?php //echo _l('برند جایگزین'); ?>//</label>
//                                            <select name="jagozin[${numberHaml}][pBrand]" id="jagozin[${numberHaml}][pBrand]" class="form-control" data-width="100%"
//                                                    data-none-selected-text="<?php //echo _l('dropdown_non_selected_tex'); ?>//">
//                                                <?php //foreach ($data_modal['brands'] as $brand) { ?>
//                                                    <option value="<?php //echo $brand['key']; ?>//"><?php //echo $brand['value']; ?>//</option>
//                                                <?php //} ?>
//                                            </select>
//
//
//                                    </div>
//                                    <div class="col-md-3">
//
//                                        <?php //$value = (isset($project) ? $project->name : ''); ?>
//
//                                            <label for="jagozin[${numberHaml}][pCountry]"
//                                                   class="control-label"><?php //echo _l('کشور سازنده جایگزین'); ?>//</label>
//                                            <select name="jagozin[${numberHaml}][pCountry]"  id="jagozin[${numberHaml}][pCountry]" class="form-control" data-width="100%"
//                                                    data-none-selected-text="<?php //echo _l('dropdown_non_selected_tex'); ?>//">
//                                                <?php //foreach ($data_modal['countrys'] as $country) { ?>
//                                                    <option value="<?php //echo $country['key']; ?>//"><?php //echo $country['value']; ?>//</option>
//                                                <?php //} ?>
//                                            </select>
//
//
//                                    </div>
//                                </div>
//
//                                 </div>
//                                </div>
//
//                                <div class="mz-panel">
//                                    <div class="mz-panel-header">
//                                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
//                                        <span class="dash-mtext"> وزن و ابعاد </span>
//                                    </div>
//                                    <div class="mz-panel-body">
//                                        <div class="row">
//                                            <div class="col-md-3">
//                                                <?php //$value = (isset($project) ? $project->name : ''); ?>
//
//                                                <label for="currencyType"
//                                                   class="control-label"><?php //echo _l('وزن(g)'); ?>//</label>
//                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][pvazn]" id="jagozin[${numberHaml}][pvazn]" value="" />
//                                            </div>
//                                            <div class="col-md-3">
//                                                <?php //$value = (isset($project) ? $project->name : ''); ?>
//
//                                                <label for="currencyType"
//                                                   class="control-label"><?php //echo _l('طول(cm)'); ?>//</label>
//                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][ptol]" id="jagozin[${numberHaml}][ptol]" value="" />
//                                            </div>
//                                            <div class="col-md-3">
//
//                                                <?php //$value = (isset($project) ? $project->name : ''); ?>
//                                                <label for="currencyType"
//                                                   class="control-label"><?php //echo _l('عرض(cm)'); ?>//</label>
//                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][parz]" id="jagozin[${numberHaml}][parz]" value="" />
//                                            </div>
//                                            <div class="col-md-3">
//                                                <?php //$value = (isset($project) ? $project->name : ''); ?>
//                                                <label for="currencyType"
//                                                   class="control-label"><?php //echo _l('ارتفاع(cm)'); ?>//</label>
//                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][pert]" id="jagozin[${numberHaml}][pert]" value="" />
//
//                                            </div>
//                                        </div>
//                                    </div>
//                                </div>
//
//                                <div class="row">
//                                    <div class="col-md-12">
//                                        <p class="bold"><?php //echo _l('شرح کلی جایگزین'); ?>//</p>
//                                        <?php ////$contents = ''; if(isset($project)){$contents = $project->description;} ?>
//                                        <textarea class="form-control" id="jagozin[${numberHaml}][psha]" name="jagozin[${numberHaml}][psha]" rows="5"></textarea>
//
//                                    </div>
//                                </div>
//
//                        <div style="clear: both;"></div>
//                        `;
//            appChild[numberHaml].innerHTML = descHtmlString;
//
//            hamlOnaghlBody.appendChild(appChild[numberHaml]);
//            Removes[numberHaml - 1] = document.getElementById(`remove_haml_${numberHaml}`);
//
//            for (let i = 0; i < Removes.length; i++) {
//                Removes[i].addEventListener('click', () => {
//                    appChild[i + 1].remove();
//                });
//            }
//
//            numberHaml++;
//        });
//
//
</script>





<!--------------------------------------------------------------------------------------------------------->



    <script>

        let updateMoadl = document.getElementById('updateItem2');
        let myModalLabel = document.getElementById('myModalLabel2');
        let nameAjax = document.getElementById('nameAjax');
        let itemIdAjax = document.getElementById('itemIdAjax');
        let checkUpdate = document.getElementById('checkUpdate');
        let checkUpdateID = document.getElementById('checkUpdateID');



        let values = {};
        //let resultSend = document.getElementById('resultSend');

        function showUpdate(itemId, itemName) {

            let productnumber_v = document.getElementById('productnumber');
            productnumber_v.value = '';

            let brandNew_v = document.getElementById('brandNew');
            brandNew_v.value = '';

            let product_model_v = document.getElementById('product_model');
            product_model_v.value = '';

            let countryBuilderNew_v = document.getElementById('countryBuilderNew');
            countryBuilderNew_v.value = '';

            let description_v = document.getElementById('description');
            description_v.value = '';

            let abad0_v = document.getElementById('abad0');
            abad0_v.value = '';

            let abad1_v = document.getElementById('abad1');
            abad1_v.value = '';

            let abad2_v = document.getElementById('abad2');
            abad2_v.value = '';

            let abad3_v = document.getElementById('abad3');
            abad3_v.value = '';

            let main = document.getElementById('addJagozinSection');
            let hamlOnaghlBody = document.getElementById('addJagozinBody');
            let addHamlBtn = document.getElementById('addJagozin');
            let h1 = document.getElementById('h-1');
            hamlOnaghlBody.innerHTML = h1.outerHTML;
            let Removes = [];
            let appChild = [];

            checkUpdate.value = 0;
            checkUpdateID.value = '';
            // appChild[0] = h1;
            // for (let i = 0; i < Removes.length; i++) {
            //     appChild[i + 1].remove();
            //     hamlOnaghlBody.removeChild();
            // }
            //-------------------------------------------------------------------
            let projectId = document.getElementById('projectId');
            $.ajax({
                url: '<?php echo site_url("admin/projects/checkUpdateItem");?>',
                type: 'post',
                // dataType:'json',
                data: {
                    item_id: itemId,
                    project_id: projectId.value,
                },
                success: function (data) {
                    values = JSON.parse(data).result != '' ? JSON.parse(data).result : '';
                    console.log(values);

                    {
                        productnumber_v.value = values.main.productNumber != '' ? values.main.productNumber : '';
                        brandNew_v.value = values.main.productBrand != '' ? values.main.productBrand : '';
                        product_model_v.value = (values.main.product_model != '') ? values.main.product_model : '';
                        countryBuilderNew_v.value = values.main.productCountry;
                        description_v.value = values.main.mainDesc;
                        abad0_v.value = values.main.vazn;
                        abad1_v.value = values.main.tol;
                        abad2_v.value = values.main.arz;
                        abad3_v.value = values.main.ertefa;

                        checkUpdate.value = 1;
                        checkUpdateID.value = values.main.id;
                            ///////////////////////////////////////////////////////////////////////////////////
                        {

                            if(values.child.length != 0){



                                h1.innerHTML = '';
                                //hamlOnaghlBody.innerHTML = '';

                                let numberHaml = 1;
                                //appChild[0] = h1;

                                let jagozin = '';
                                let jagozinMain = {};
                                //let values = [];

                                for(let iii=0; iii<values.child.length; iii++){
                                    //for(let i=0; i<1; i++){
                                    appChild[numberHaml] = document.createElement('div');
                                    appChild[numberHaml].id = 'h' + numberHaml;
                                    //appChild[numberHaml].setAttribute('loaded', 'loaded');
                                    var descHtmlString = `
                            <hr class="hr-panel-heading" />
                            <div style="padding: 8px; margin: 10px"><span style="text-decoration:underline;">شماره ${numberHaml + 1}:</span>
                            <div style="float: left; " id="remove_haml_${numberHaml}">
                                <button type="button" class="btn btn-danger pull-left"><i class="fa fa-trash"></i></button>
                            </div>
                            </div>


    <div class="mz-panel">
                                        <div class="mz-panel-header">
                                            <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                                            <span class="dash-mtext"> مشخصات اصلی </span>
                                        </div>
                                        <div class="mz-panel-body" id="addJagozinMainBody">

                            <div class="row">
                                <div class="col-md-4">

                                            <label for="jagozin[${numberHaml}][pName]"
                                                       class="control-label"><?php echo _l('محصول جایگزین'); ?></label>
                                            <input type="text" class="form-control" name="jagozin[${numberHaml}][pName]" id="jagozin[${numberHaml}][pName]" value="${values.child[iii].product_name}" />
                                        </div>
                                        <div class="col-md-4">

                                            <label for="jagozin[${numberHaml}][pCode]"
                                                       class="control-label"><?php echo _l('کد جایگزین'); ?></label>
                                            <input type="text" class="form-control" name="jagozin[${numberHaml}][pCode]" id="jagozin[${numberHaml}][pCode]" value="${values.child[iii].productNumber}" />
                                        </div>
                                        <div class="col-md-4">

                                            <label for="jagozin[${numberHaml}][pModel]"
                                                       class="control-label"><?php echo _l('مدل جایگزین'); ?></label>
                                            <input type="text" class="form-control" name="jagozin[${numberHaml}][pModel]" id="jagozin[${numberHaml}][pModel]" value="${values.child[iii].product_model}" />
                                        </div>
                            </div>
                            <div style="height: 10px;"></div>
                            <div class="row">

                                        <div class="col-md-6">


                                                <label for="jagozin[${numberHaml}][pBrand]"
                                                       class="control-label"><?php echo _l('برند جایگزین'); ?></label>
                                                <select name="jagozin[${numberHaml}][pBrand]" id="jagozin[${numberHaml}][pBrand]" class="form-control" data-width="100%"
                                                        data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                                    <?php foreach ($data_modal['brands'] as $brand) { ?>
                                                        <option value="<?php echo $brand['key']; ?>"><?php echo $brand['value']; ?></option>
                                                    <?php } ?>
                                                </select>


                                        </div>
                                        <div class="col-md-6">


                                                <label for="jagozin[${numberHaml}][pCountry]"
                                                       class="control-label"><?php echo _l('کشور سازنده جایگزین'); ?></label>
                                                <select name="jagozin[${numberHaml}][pCountry]"  id="jagozin[${numberHaml}][pCountry]" class="form-control" data-width="100%"
                                                        data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                                    <?php foreach ($data_modal['countrys'] as $country) { ?>
                                                        <option value="<?php echo $country['key']; ?>"><?php echo $country['value']; ?></option>
                                                    <?php } ?>
                                                </select>


                                        </div>
                                    </div>

                                     </div>
                                    </div>

                                    <div class="mz-panel">
                                        <div class="mz-panel-header">
                                            <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                                            <span class="dash-mtext"> وزن و ابعاد </span>
                                        </div>
                                        <div class="mz-panel-body">
                                            <div class="row">
                                                <div class="col-md-3">


                                                    <label for="currencyType"
                                                       class="control-label"><?php echo _l('وزن(g)'); ?></label>
                                            <input type="number" class="form-control" name="jagozin[${numberHaml}][pvazn]" id="jagozin[${numberHaml}][pvazn]" value="${values.child[iii].vazn}" />
                                                </div>
                                                <div class="col-md-3">


                                                    <label for="currencyType"
                                                       class="control-label"><?php echo _l('طول(cm)'); ?></label>
                                            <input type="number" class="form-control" name="jagozin[${numberHaml}][ptol]" id="jagozin[${numberHaml}][ptol]" value="${values.child[iii].tol}" />
                                                </div>
                                                <div class="col-md-3">


                                                    <label for="currencyType"
                                                       class="control-label"><?php echo _l('عرض(cm)'); ?></label>
                                            <input type="number" class="form-control" name="jagozin[${numberHaml}][parz]" id="jagozin[${numberHaml}][parz]" value="${values.child[iii].arz}" />
                                                </div>
                                                <div class="col-md-3">

                                                    <label for="currencyType"
                                                       class="control-label"><?php echo _l('ارتفاع(cm)'); ?></label>
                                            <input type="number" class="form-control" name="jagozin[${numberHaml}][pert]" id="jagozin[${numberHaml}][pert]" value="${values.child[iii].ertefa}" />

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="bold"><?php echo _l('شرح کلی جایگزین'); ?></p>
                                            <?php //$contents = ''; if(isset($project)){$contents = $project->description;} ?>
                                            <textarea class="form-control" id="jagozin[${numberHaml}][psha]" name="jagozin[${numberHaml}][psha]" rows="5">${values.child[iii].mainDesc}</textarea>

                                        </div>
                                    </div>

                            <div style="clear: both;"></div>
                            `;
                                    appChild[numberHaml].innerHTML = descHtmlString;

                                    hamlOnaghlBody.appendChild(appChild[numberHaml]);
                                    Removes[numberHaml - 1] = document.getElementById(`remove_haml_${numberHaml}`);

                                    for (let i = 0; i < Removes.length; i++) {
                                        Removes[i].addEventListener('click', () => {
                                            appChild[i + 1].remove();
                                        });
                                    }
                                    //appChild[0].remove();

                                    numberHaml++;
                                }



                            }
                        }
                        //////////////////////////////////////////////////////////////////////////////////
                    }

                }
            });

                //let projectIdAjax = document.getElementById('projectIdAjax');
                //let staff_user_id = document.getElementById('staff_user_id');
                //let jagozin = document.getElementsByName('jagozin[0][pName]');



                let description_P = document.getElementById('description');
            //-------------------------------------------------------------------

            updateMoadl.classList.add('in');
            updateMoadl.style.display = "block";
            myModalLabel.innerHTML = 'تکمیل مشخصات فنی ';
            myModalLabel.innerHTML += itemName;
            itemIdAjax.value = itemId;
            nameAjax.value = itemName;
            //resultSend.value = proposalId;
        }

        function closeModal2() {
            updateMoadl.classList.remove('in');
            updateMoadl.style.display = "none";
            //resultSend.innerHTML = proposalId;
        }


        ////\\\\
        let main = document.getElementById('addJagozinSection');
        let hamlOnaghlBody = document.getElementById('addJagozinBody');
        let addHamlBtn = document.getElementById('addJagozin');
        let h1 = document.getElementById('h-1');

        let Removes = [];

        let appChild = [];
        let numberHaml = 1;
        appChild[0] = h1;

        let jagozin = '';
        let jagozinMain = {};
        //let values = [];

        addHamlBtn.addEventListener('click', () => {
            //for(let i=0; i<1; i++){
            appChild[numberHaml] = document.createElement('div');
            appChild[numberHaml].id = 'h' + numberHaml;
            //appChild[numberHaml].setAttribute('loaded', 'loaded');
            var descHtmlString = `
                        <hr class="hr-panel-heading" />
                        <div style="padding: 8px; margin: 10px"><span style="text-decoration:underline;">شماره ${numberHaml + 1}:</span>
                        <div style="float: left; " id="remove_haml_${numberHaml}">
                            <button type="button" class="btn btn-danger pull-left"><i class="fa fa-trash"></i></button>
                        </div>
                        </div>


<div class="mz-panel">
                                    <div class="mz-panel-header">
                                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                                        <span class="dash-mtext"> مشخصات اصلی </span>
                                    </div>
                                    <div class="mz-panel-body" id="addJagozinMainBody">

                        <div class="row">
                            <div class="col-md-4">

                                        <label for="jagozin[${numberHaml}][pName]"
                                                   class="control-label"><?php echo _l('محصول جایگزین'); ?></label>
                                        <input type="text" class="form-control" name="jagozin[${numberHaml}][pName]" id="jagozin[${numberHaml}][pName]" value="" />
                                    </div>
                                    <div class="col-md-4">

                                        <label for="jagozin[${numberHaml}][pCode]"
                                                   class="control-label"><?php echo _l('کد جایگزین'); ?></label>
                                        <input type="text" class="form-control" name="jagozin[${numberHaml}][pCode]" id="jagozin[${numberHaml}][pCode]" value="" />
                                    </div>
                                    <div class="col-md-4">

                                        <label for="jagozin[${numberHaml}][pModel]"
                                                   class="control-label"><?php echo _l('مدل جایگزین'); ?></label>
                                        <input type="text" class="form-control" name="jagozin[${numberHaml}][pModel]" id="jagozin[${numberHaml}][pModel]" value="" />
                                    </div>
                        </div>
                        <div style="height: 10px;"></div>
                        <div class="row">

                                    <div class="col-md-6">


                                            <label for="jagozin[${numberHaml}][pBrand]"
                                                   class="control-label"><?php echo _l('برند جایگزین'); ?></label>
                                            <select name="jagozin[${numberHaml}][pBrand]" id="jagozin[${numberHaml}][pBrand]" class="form-control" data-width="100%"
                                                    data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                                <?php foreach ($data_modal['brands'] as $brand) { ?>
                                                    <option value="<?php echo $brand['key']; ?>"><?php echo $brand['value']; ?></option>
                                                <?php } ?>
                                            </select>


                                    </div>
                                    <div class="col-md-6">


                                            <label for="jagozin[${numberHaml}][pCountry]"
                                                   class="control-label"><?php echo _l('کشور سازنده جایگزین'); ?></label>
                                            <select name="jagozin[${numberHaml}][pCountry]"  id="jagozin[${numberHaml}][pCountry]" class="form-control" data-width="100%"
                                                    data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                                <?php foreach ($data_modal['countrys'] as $country) { ?>
                                                    <option value="<?php echo $country['key']; ?>"><?php echo $country['value']; ?></option>
                                                <?php } ?>
                                            </select>


                                    </div>
                                </div>

                                 </div>
                                </div>

                                <div class="mz-panel">
                                    <div class="mz-panel-header">
                                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                                        <span class="dash-mtext"> وزن و ابعاد </span>
                                    </div>
                                    <div class="mz-panel-body">
                                        <div class="row">
                                            <div class="col-md-3">


                                                <label for="currencyType"
                                                   class="control-label"><?php echo _l('وزن(g)'); ?></label>
                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][pvazn]" id="jagozin[${numberHaml}][pvazn]" value="" />
                                            </div>
                                            <div class="col-md-3">


                                                <label for="currencyType"
                                                   class="control-label"><?php echo _l('طول(cm)'); ?></label>
                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][ptol]" id="jagozin[${numberHaml}][ptol]" value="" />
                                            </div>
                                            <div class="col-md-3">


                                                <label for="currencyType"
                                                   class="control-label"><?php echo _l('عرض(cm)'); ?></label>
                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][parz]" id="jagozin[${numberHaml}][parz]" value="" />
                                            </div>
                                            <div class="col-md-3">

                                                <label for="currencyType"
                                                   class="control-label"><?php echo _l('ارتفاع(cm)'); ?></label>
                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][pert]" id="jagozin[${numberHaml}][pert]" value="" />

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <p class="bold"><?php echo _l('شرح کلی جایگزین'); ?></p>
                                        <?php //$contents = ''; if(isset($project)){$contents = $project->description;} ?>
                                        <textarea class="form-control" id="jagozin[${numberHaml}][psha]" name="jagozin[${numberHaml}][psha]" rows="5"></textarea>

                                    </div>
                                </div>

                        <div style="clear: both;"></div>
                        `;
            appChild[numberHaml].innerHTML = descHtmlString;

            hamlOnaghlBody.appendChild(appChild[numberHaml]);
            Removes[numberHaml - 1] = document.getElementById(`remove_haml_${numberHaml}`);

            for (let i = 0; i < Removes.length; i++) {
                Removes[i].addEventListener('click', () => {
                    appChild[i + 1].remove();
                });
            }

            numberHaml++;
        });
        ////\\\\


        //let itemIdAjax = document.getElementById('itemIdAjax');
        let productnumber_p = document.getElementById('productnumber');
        let product_model_p = document.getElementById('product_model');
        let brandNew_p = document.getElementById('brandNew');
        let countryBuilderNew_p = document.getElementById('countryBuilderNew');
        let abad0_p = document.getElementById('abad0');
        let abad1_p = document.getElementById('abad1');
        let abad2_p = document.getElementById('abad2');
        let abad3_p = document.getElementById('abad3');


        let projectIdAjax = document.getElementById('projectIdAjax');
        let staff_user_id = document.getElementById('staff_user_id');
        //let jagozin = document.getElementsByName('jagozin[0][pName]');



        let description_P = document.getElementById('description');


        //jagozinMain[0] = {};
        //jagozinMain[0].pName = jagozin[0]['pName'].value;


        let updateItemBtn = document.getElementById('updateItemBtn');
        let checkedUpdate = document.getElementById('checkUpdate');
        let checkUpdateIDdd = document.getElementById('checkUpdateID');
        updateItemBtn.addEventListener('click', () => {

            jagozin = document.querySelectorAll("input[name^='jagozin['],select[name^='jagozin['],textarea[name^='jagozin[']");
            jagozinMain = {};
            let newJ = 0;

            for (let i = 0; i < parseInt(jagozin.length / 9); i++) {
                jagozinMain[i] = {
                    pName: jagozin[newJ++].value,
                    pCode: jagozin[newJ++].value,
                    pModel: jagozin[newJ++].value,
                    pBrand: jagozin[newJ++].value,
                    pCountry: jagozin[newJ++].value,
                    pvazn: jagozin[newJ++].value,
                    ptol: jagozin[newJ++].value,
                    parz: jagozin[newJ++].value,
                    pert: jagozin[newJ++].value,
                    psha: jagozin[newJ++].value
                };
            }

            let ajaxUrl = '';
            let checkUpdateID_p = '';
            if(checkedUpdate.value == 0){
                ajaxUrl = '<?php echo site_url("admin/projects/updateItemfn");?>';
                checkUpdateID_p = 'empty';
            }else{
                ajaxUrl = '<?php echo site_url("admin/projects/updateItemfnUp");?>';
                checkUpdateID_p = checkUpdateIDdd.value;
            }


            $.ajax({
                url: ajaxUrl,
                type: 'post',
                // dataType:'json',
                data: {
                    mainId: checkUpdateID_p,
                    itemId: itemIdAjax.value,
                    projectId: projectIdAjax.value,
                    staff_user_id: staff_user_id.value,
                    product_name: nameAjax.value,
                    productnumber: productnumber_p.value,
                    product_model: product_model_p.value,
                    brandNew: brandNew_p.value,
                    countryBuilderNew: countryBuilderNew_p.value,
                    abad0: abad0_p.value,
                    abad1: abad1_p.value,
                    abad2: abad2_p.value,
                    abad3: abad3_p.value,
                    description: description_P.value,
                    jagozinMainSend: jagozinMain
                },
                success: function (data) {
                    //var result = JSON.parse(data);
                    // $("resAjaxP").html(result.a);
                    console.log(data);
                    //console.log(Shtml);
                }
            });


            //console.log(description_P.innerHTML);

        });
    </script>


    <script>
        function closeModal(){
            sendMoadl.classList.remove('in');
            sendMoadl.style.display="none";
            //resultSend.innerHTML = proposalId;
        }

        function show(key,type){

            let showDetails = document.getElementById('showDetails_'+key);
            let showMain = document.getElementById('showMain_'+key);
            let showMainT = document.getElementById('showMainT_'+key);
            let notShowDetails = document.getElementById('notShowDetails_'+key);

            if(type === 'start'){
                showDetails.style.display = 'none';
                showMain.style.display = 'block';
                showMainT.style.display = 'block';
                notShowDetails.style.display = 'block';
            }else{
                showDetails.style.display = 'block';
                showMain.style.display = 'none';
                showMainT.style.display = 'none';
                notShowDetails.style.display = 'none';
            }
        }

    </script>


<?php
hooks()->add_action('app_admin_footer', function () {
    ?>
    <script>
        $(function () {
            var projects_ServerParams = {};
            $.each($('._hidden_inputs._filters input'), function () {
                projects_ServerParams[$(this).attr('name')] = '[name="' + $(this).attr('name') + '"]';
                //projects_ServerParams[$(this).attr('name')] = $(this).attr('value');
            });

            //let project_id = document.getElementById('project_id');
            //
            //$.ajax({
            //    url: '<?php //echo site_url("admin/projects/item_table");?>//',
            //    type: 'post',
            //   // dataType:'json',
            //    data:{
            //        pId: project_id.value
            //    },
            //    success:function(data){
            //        //var result = JSON.parse(data);
            //       // $("resAjaxP").html(result.a);
            //        console.log(data);
            //        //console.log(Shtml);
            //    }
            //});

            console.log(projects_ServerParams);

            initDataTable('.table-projects', admin_url + 'projects/item_table', ['undefined'], ['undefined'], projects_ServerParams, [0, 'desc']);
            //init_proposal();
        })
    </script>
<?php }) ?>