<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<?php
$type_process = $thisViews['dp']['en_name'];
$type_process_view_path = 'processes/'.$type_process;
$type_process_controller = 'projects';
$type_process_action = 'addAdakheliProcess';
?>

<input type="hidden" name="projectId" id="projectId" value="<?php echo $project->id; ?>">
<input type="hidden" name="projectId" id="type" value="<?php echo $thisViews['dp']['en_name']; ?>">

<?php
$table_data = array(
    _l(''),
    _l('#'),
    _l('عنوان'),
    _l('تعداد'),
    _l('فرستنده'),
    _l('تاریخ'),
    _l('الویت'),
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
            initDataTable('.table-gList', admin_url+'projects/getGivesLists_kharegi/'+$('#projectId').val()+'/'+$('#type').val(), ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
        })
    </script>
<?php }) ?>


<div class="modal fade" id="sendMoadl" style="overflow-y: scroll;" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                <?php foreach($deparments as $d){?>
                                    <option value="<?php echo $d['departmentid'];?>"><?php echo $d['name'];?></option>
                                <?php } ?>
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
        let sendtype_p = 'all';

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
                        }else if(result.result !== 'tt'){
                            resultSendShow.innerHTML += `
                            <div class="alert alert-warning">یک بار قبلا ارسال شده بود</div>
                        `;
                        }else{
                            resultSendShow.innerHTML += `
                            <div class="alert alert-danger">ناموفق بود!</div>
                        `;
                        }
                    }
                });
            }

        });

    })
</script>

<script>
    // let showDetails_1 = document.getElementById('showDetails_1');
    // showDetails_1.addEventListener('click',()=>{
    //     console.log('hello');
    // });

    //let mz_list_count = document.getElementById('mz_list_count');

    //console.log(mz_list_count);

    // function startShow(key){
    //     let showDetails = document.getElementById('showDetails_'+key);
    //     let showMain = document.getElementById('showMain_'+key);
    //     let showMainT = document.getElementById('showMainT_'+key);
    //     let notShowDetails = document.getElementById('notShowDetails_'+key);
    //
    //     showDetails.style.display = 'none';
    //     showMain.style.display = 'block';
    //     showMainT.style.display = 'block';
    //     notShowDetails.style.display = 'block';
    //
    //     //console.log(showMain);
    // }
    //
    // function endShow(key){
    //     let showDetails = document.getElementById('showDetails_'+key);
    //     let showMain = document.getElementById('showMain_'+key);
    //     let showMainT = document.getElementById('showMainT_'+key);
    //     let notShowDetails = document.getElementById('notShowDetails_'+key);
    //
    //     showDetails.style.display = 'block';
    //     showMain.style.display = 'none';
    //     showMainT.style.display = 'none';
    //     notShowDetails.style.display = 'none';
    // }

    let sendMoadl = document.getElementById('sendMoadl');
    let resultSend = document.getElementById('resultSend');

    function showPm(proposalId){
        sendMoadl.classList.add('in');
        sendMoadl.style.display="block";
        resultSend.value = proposalId;

        //////////////ajax\\\\\\\\\\\\\\

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