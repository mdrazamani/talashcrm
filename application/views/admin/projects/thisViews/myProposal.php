<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<div class="mz-panel">
    <div class="mz-panel-header">
        <span class="dash-mtext"> لیست پیشنهاد نهایی </span>
    </div>
    <div class="mz-panel-body">
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
            _l('#'),
            _l('قیمت ها'),
            _l('مشخصات'),
            _l('عنوان'),
            _l('جایگزین'),
            _l('تعداد'),
            _l('تعداد قیمت های خارجی'),
            _l('تعداد قیمت های داخلی'),
            _l('تعداد قیمت های فروش'),
            _l('انتخاب شده توسط'),
            _l('تاریخ انتخاب'),
            _l('هزینه کل'),
            _l('قیمت فروش نهایی'),
            _l('سود'),


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
                    initDataTable('.table-gList', admin_url+'projects/proposalLists/'+$('#projectId').val()+'/'+$('#type').val(), ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
                })
            </script>
        <?php }) ?>
    </div>
</div>

<!-- -->
<div class="modal fade" id="proposalModal" style="overflow-y: scroll; background-color: rgba(0,0,0,0.6);" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-xl" role="document">
        <?php echo form_open('admin/projects/sendItem', array('id' => 'sendForm')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="closeModal()" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2"></h4>
            </div>
            <div class="modal-body">
<!--                <input type="text" name="itemIID" id="itemIID">-->
                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-mtext"> پیشنهاد های فروش </span>
                    </div>
                    <div class="mz-panel-body">
                        <div class="alert alert-warning"> ... </div>
                    </div>
                </div>

                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-mtext"> پیشنهاد های داخلی </span>
                    </div>
                    <div class="mz-panel-body">

                        <?php
                        $table_data2 = array(
                            _l('#'),
                            _l('<div class="checkbox"><input type="checkbox" value="3"><label></label></div>'),
                            _l(''),
                            _l('قیمت گذار'),
                            _l('فروشنده'),
                            _l('تاریخ'),
                            _l('قیمت تمام شده منهای حمل'),
                            _l('تایید فنی'),
                            //_l('محصول جایگزین'),
                            _l('انتخاب حمل و نقل'),
                            _l('درصد بالاسری'),
                            _l('قیمت فروش هر یک عدد'),
                        );
                        render_datatable($table_data2,'gList2');
                        ?>

                    </div>
                </div>

                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-mtext"> پیشنهاد های خارجی </span>
                    </div>
                    <div class="mz-panel-body">

                        <?php
                        $table_data3 = array(
                            _l('#'),
                            _l('<div class="checkbox"><input type="checkbox"><label></label></div>'),
                            _l(''),
                            _l('قیمت گذار'),
                            _l('فروشنده'),
                            _l('تاریخ'),
                            _l('قیمت تمام شده منهای حمل'),
                            _l('تایید فنی'),
                            //_l('محصول جایگزین'),
                            _l('انتخاب حمل و نقل'),
                            _l('درصد بالاسری'),
                            _l('قیمت فروش هر یک عدد'),
                        );
                        render_datatable($table_data3,'gList3');
                        ?>

                    </div>
                </div>


<!--                <div class="mz-panel">-->
<!--                    <div class="mz-panel-header">-->
<!--                        <span class="dash-mtext"> انتخاب شده ها </span>-->
<!--                    </div>-->
<!--                    <div class="mz-panel-body">-->
<!--                        ...-->
<!--                    </div>-->
<!--                </div>-->


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" onclick="closeModal()"
                        data-dismiss="modal"><?php echo _l('انجام شد'); ?></button>
<!--                <button type="button" id="updateItemBtn" data-form="#lead_to_client_form" autocomplete="off"-->
<!--                        data-loading-text="--><?php //echo _l('wait_text'); ?><!--"-->
<!--                        class="btn btn-info">--><?php //echo _l('ذخیره'); ?><!--</button>-->
            </div>
        </div>
        <?php echo form_close(); ?>
    </div>
</div>


<!-- -->
<div class="modal fade" id="proposalModal23" style="overflow-y: scroll; background-color: rgba(0,0,0,0.6);" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-xl" role="document">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="closeModal23()" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel23"></h4>
            </div>
            <div class="modal-body">
                <!--                <input type="text" name="itemIID" id="itemIID">-->
<!--                <div class="mz-panel">-->
<!--                    <div class="mz-panel-header">-->
<!--                        <span class="dash-mtext"> پیشنهاد های فروش </span>-->
<!--                    </div>-->
<!--                    <div class="mz-panel-body">-->
<!--                        <div class="alert alert-warning"> ... </div>-->
<!--                    </div>-->
<!--                </div>-->


                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th><div class="checkbox"><input type="checkbox" ><label></label></div></th>
                            <th>هزینه حمل</th>
                            <th>روش حمل</th>
                            <th>زمان حمل</th>
                            <th>زمان تحویل در مبدا</th>
                        </tr>
                    </thead>
                    <tbody id="tblBody"></tbody>
                </table>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" onclick="closeModal23()"
                        data-dismiss="modal"><?php echo _l('انجام شد'); ?></button>
                <!--                <button type="button" id="updateItemBtn" data-form="#lead_to_client_form" autocomplete="off"-->
                <!--                        data-loading-text="--><?php //echo _l('wait_text'); ?><!--"-->
                <!--                        class="btn btn-info">--><?php //echo _l('ذخیره'); ?><!--</button>-->
            </div>
        </div>

    </div>
</div>





<!-- -->
<div class="modal fade" id="proposalModal33" style="overflow-y: scroll; background-color: rgba(0,0,0,0.6);" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-xl" role="document">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="closeModal33()" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel33"></h4>
            </div>
            <div class="modal-body">


                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                        <span class="dash-mtext"> قیمت </span>
                    </div>
                    <div class="mz-panel-body">
                        <div class="row" style="text-align: center;">

                            <div class="col-md-3">

                                <span class="key"> قیمت خرید:</span>
                                <div class="form-control">
                                    <span class="value">' . number_format($aRow['newMain']['sell_price']) . '</span>
                                </div>
                            </div>
                            <div class="col-md-3">

                                <span class="key"> نوع ارز:</span>
                                <div class="form-control">
                                    <span class="value">' . $currency . '</span>
                                </div>
                            </div>

                            <div class="col-md-3">

                                <span class="key">'.$builderName.':</span>
                                <div class="form-control">
                                    <span class="value">' . $builder . '</span>
                                </div>
                            </div>
                            <div class="col-md-3">

                                <span class="key"> شیوه پرداخت:</span>
                                <div class="form-control">
                                    <span class="value">' . $pay_type . '</span>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                        <span class="dash-mtext"> فروشنده </span>
                    </div>
                    <div class="mz-panel-body">
                        <div class="col-md-6">

                            <span class="key"> فروشنده:</span>
                            <div class="form-control">
                                <span class="value">' . $vondor->company . '</span>
                            </div>
                        </div>
                        <div class="col-md-6">

                            <span class="key">  مخاطب مربوطه:</span>
                            <div class="form-control">
                                <span class="value">' . $contact->firstname . ' ' . $contact->lastname . '</span>
                            </div>
                        </div>
                    </div>
                </div>

                '.$tarkhisHtml.'

                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                        <span class="dash-mtext"> تائیدیه ها </span>
                    </div>
                    <div class="mz-panel-body">
                        <div class="row" style="text-align: center; padding-top: 20px;">
                            <div class="col-md-3">

                                <span class="key"> دقیقا مشابه درخواست است:</span>
                                <div class="form-control">
                                    <span class="value">' . $T1 . '</span>
                                </div>
                            </div>
                            <div class="col-md-3">

                                <span class="key">   امکان ارسال مدارک فنی دارد:</span>
                                <div class="form-control">
                                    <span class="value">' . $T2 . '</span>
                                </div>
                            </div>
                            <div class="col-md-3">

                                <span class="key">  گواهی اصالت:</span>
                                <div class="form-control">
                                    <span class="value">' . $T3 . '</span>
                                </div>
                            </div>
                            <div class="col-md-3">

                                <span class="key">  test report:</span>
                                <div class="form-control">
                                    <span class="value">' . $T4 . '</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                '.$faniproposal.'

                <div class="mz-panel">
                    <div class="mz-panel-header">
                        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                        <span class="dash-mtext"> شرح کلی </span>
                    </div>
                    <div class="mz-panel-body">
                        <div class="row" style="text-align: center; padding-top: 20px;">

                            <div class="col-md-12">
                                <p class="value">' . $aRow['newMain']['description'] . '</p>
                            </div>

                        </div>
                    </div>
                </div>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" onclick="closeModal33()"
                        data-dismiss="modal"><?php echo _l('انجام شد'); ?></button>
                <!--                <button type="button" id="updateItemBtn" data-form="#lead_to_client_form" autocomplete="off"-->
                <!--                        data-loading-text="--><?php //echo _l('wait_text'); ?><!--"-->
                <!--                        class="btn btn-info">--><?php //echo _l('ذخیره'); ?><!--</button>-->
            </div>
        </div>

    </div>
</div>




<input type="hidden" id="resultSend" />

<?php //init_tail(); ?>

<!-- -->
<script>
    let proposalModal = document.getElementById('proposalModal');
    let proposalModal23 = document.getElementById('proposalModal23');
    let proposalModal33 = document.getElementById('proposalModal33');
    let ItemID = document.getElementById('ItemID');
    let resultSend = document.getElementById('resultSend');
    let myModalLabel2 = document.getElementById('myModalLabel2');
    let myModalLabel23 = document.getElementById('myModalLabel23');
    let myModalLabel33 = document.getElementById('myModalLabel33');
    //let itemIID = document.getElementById('itemIID');

    function showModal(itemId, itemName){
        proposalModal.classList.add('in');
        proposalModal.style.display="block";
        myModalLabel2.innerHTML = 'کلیه پیشنهاد های داخلی و خارجی برای '+itemName;
        //itemIID.value = itemId;
//----------------------------------------------------------------------------------------------------------------------
        $(function(){
            var trash_ServerParams = {};
            $.each($('._hidden_inputs._filters input'),function(){
                trash_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
                trash_ServerParams['projectId'] = $('#projectId').val();
                trash_ServerParams['project_id22'] = 'hello';
            });
            //console.log(trash_ServerParams);
            initDataTable('.table-gList2', admin_url+'projects/getProposalLists/'+$('#projectId').val()+'/'+'dakheli/'+itemId, ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
        })

        $(function(){
            var trash_ServerParams = {};
            $.each($('._hidden_inputs._filters input'),function(){
                trash_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
                trash_ServerParams['projectId'] = $('#projectId').val();
                trash_ServerParams['project_id22'] = 'hello';
            });
            //console.log(trash_ServerParams);
            initDataTable('.table-gList3', admin_url+'projects/getProposalLists/'+$('#projectId').val()+'/'+'kharegi/'+itemId, ['undefined'], ['undefined'], trash_ServerParams, [0, 'desc']);
        })

        //console.log(itemId);

    }


    let MainpriceId = '';

    let allClickBTNS = [];

    function showModal23(baseItemId, priceId){

        MainpriceId = document.getElementById(priceId);

        let tblBody = document.getElementById('tblBody');
        tblBody.innerHTML = '';

        $.ajax({
            url: '<?php echo site_url("admin/projects/getAjaxHamlONaghl");?>',
            type: 'post',
            // dataType:'json',
            data:{
                itemId: baseItemId,
                //jagozinMainSend: jagozinMain
            },
            success:function(data){
                var result = JSON.parse(data);
                var newResult = result.hamls;
                for(let i=0; i<newResult.length; i++){
                    tblBody.innerHTML += `
                    <tr>
                        <td>${(i+1)}</td>
                        <td><div class="checkbox"><input type="radio" name="radiHaml" onclick="addPriceHaml(${newResult[i].cost},${baseItemId})" id="clickBTN${(i+1)}" ><label for="clickBTN${(i+1)}"></label></div></td>
                        <td>${newResult[i].cost} ${newResult[i].typeCurrency}</td>
                        <td>${newResult[i].typehaml}</td>
                        <td>${newResult[i].timehaml} ${newResult[i].timehamlVahed}</td>
                        <td>${newResult[i].timetahvil} ${newResult[i].timetahvilVahed}</td>
                    </tr>
                    `;
                    allClickBTNS[i] = document.getElementById('clickBTN'+(i+1));
                }

               // console.log(newResult);
            }
        });

        proposalModal23.classList.add('in');
        proposalModal23.style.display="block";
        myModalLabel23.innerHTML = 'کلیه پیشنهاد های حمل و نقل برای این آیتم';

        console.log(allClickBTNS);

    }





    function showModal33(baseItemId, priceId){

        MainpriceId = document.getElementById(priceId);

        let tblBody = document.getElementById('tblBody');
        tblBody.innerHTML = '';

        //$.ajax({
        //    url: '<?php //echo site_url("admin/projects/getAjaxHamlONaghl");?>//',
        //    type: 'post',
        //    // dataType:'json',
        //    data:{
        //        itemId: baseItemId,
        //        //jagozinMainSend: jagozinMain
        //    },
        //    success:function(data){
        //        var result = JSON.parse(data);
        //        var newResult = result.hamls;
        //        for(let i=0; i<newResult.length; i++){
        //            tblBody.innerHTML += `
        //            <tr>
        //                <td>${(i+1)}</td>
        //                <td><div class="checkbox"><input type="radio" name="radiHaml" onclick="addPriceHaml(${newResult[i].cost},${baseItemId})" id="clickBTN${(i+1)}" ><label for="clickBTN${(i+1)}"></label></div></td>
        //                <td>${newResult[i].cost} ${newResult[i].typeCurrency}</td>
        //                <td>${newResult[i].typehaml}</td>
        //                <td>${newResult[i].timehaml} ${newResult[i].timehamlVahed}</td>
        //                <td>${newResult[i].timetahvil} ${newResult[i].timetahvilVahed}</td>
        //            </tr>
        //            `;
        //            allClickBTNS[i] = document.getElementById('clickBTN'+(i+1));
        //        }
        //
        //        // console.log(newResult);
        //    }
        //});

        proposalModal33.classList.add('in');
        proposalModal33.style.display="block";
        myModalLabel33.innerHTML = 'جزئیات این آیتم';

        console.log(allClickBTNS);

    }


    function addPriceHaml(cost, itemId){
        var myPPHAml = document.getElementById('endAllPriceN'+itemId);
        let hamlPriceN = document.getElementById('hamlPriceN'+itemId);
        let thisPriceN = document.getElementById('thisPriceN'+itemId);
        let thisPrice = document.getElementById('thisPrice'+itemId);
        let hazineHAml = document.getElementById('hazineHAml'+itemId);
        let sood = document.getElementById('sood'+itemId);
        thisPriceN.value = parseInt(thisPriceN.value);
        thisPrice.innerHTML = parseInt(thisPriceN.value);
        thisPrice.innerHTML += " <span style='color: #cf0318;'>\("+(parseInt(thisPriceN.value) + cost)+"\)</span> ";
        myPPHAml.value = 0;
        myPPHAml.value = parseInt(thisPriceN.value) + cost;
        hamlPriceN.value =  cost;
        hazineHAml.innerHTML = "-"+cost;
        sood.innerHTML = "";
        //console.log(cost+'   -------    '+itemId);
    }


    function closeModal(){
        location.href = '';
        proposalModal.classList.remove('in');
        proposalModal.style.display="none";
        //resultSend.innerHTML = proposalId;
    }

    function closeModal23(){
        //location.href = '';
        proposalModal23.classList.remove('in');
        proposalModal23.style.display="none";
        //resultSend.innerHTML = proposalId;
    }
    function closeModal33(){
        //location.href = '';
        proposalModal33.classList.remove('in');
        proposalModal33.style.display="none";
        //resultSend.innerHTML = proposalId;
    }



    function update_price_item(itemId, id){

        let P_all = document.getElementById('thisPriceN'+id);
        let P_haml = document.getElementById('hamlPriceN'+id);
        let P_persent = document.getElementById('persent'+id);
        let P_endPrice = document.getElementById('endPrice'+id);

        //console.log('itemId : '+itemId+' ----- '+' id: '+id);

        let mainPrice_p = {
            itemId: itemId,
                bazarganiID: id,
                allPrice: parseInt(P_all.value),
                hamlPrice: parseInt(P_haml.value),
                persentPrice: parseInt(P_persent.value),
                endPrice: parseInt(P_endPrice.value),
        }

        $.ajax({
            url: '<?php echo site_url("admin/projects/update_str_price_item");?>',
            type: 'post',
            // dataType:'json',
            data:{
                mainPrice: mainPrice_p
                //jagozinMainSend: jagozinMain
            },
            success:function(data){
                //var result = JSON.parse(data);
                //var newResult = result.hamls;
                // for(let i=0; i<newResult.length; i++){
                //     tblBody.innerHTML += `
                //     <tr>
                //         <td>${(i+1)}</td>
                //         <td><div class="checkbox"><input type="radio" name="radiHaml" onclick="addPriceHaml(${newResult[i].cost},${baseItemId})" id="clickBTN${(i+1)}" ><label for="clickBTN${(i+1)}"></label></div></td>
                //         <td>${newResult[i].cost} ${newResult[i].typeCurrency}</td>
                //         <td>${newResult[i].typehaml}</td>
                //         <td>${newResult[i].timehaml} ${newResult[i].timehamlVahed}</td>
                //         <td>${newResult[i].timetahvil} ${newResult[i].timetahvilVahed}</td>
                //     </tr>
                //     `;
                //     allClickBTNS[i] = document.getElementById('clickBTN'+(i+1));
                // }

                 console.log(data);
            }
        });

    }

</script>