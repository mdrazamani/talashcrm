<div class="mz-panel">
    <div class="mz-panel-header">
        <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
        <span class="dash-mtext"><?php echo $data_view['title'];?></span>
    </div>



    <div class="mz-panel-body">

        <div>
            <!--            <div class="col-md-6">-->
            <!--                <div class="form-group" app-field-wrapper="name">-->
            <!---->
            <!--                    <input type="text" id="name" name="name" class="form-control" value="درخواست خیلی خوب" aria-invalid="false">-->
            <!--                </div>-->
            <!--            </div>-->

<!--            <div class="col-md-6">-->
<!--                <div class="form-group">-->
<!--                    <label for="name" class="control-label"> <small class="req text-danger">* </small>انتخاب آیتم</label>-->
<!--                    <div class="clearfix"></div>-->
<!--                    <div class="dropdown bootstrap-select bs3" style="width: 100%;"><select name="test" class="selectpicker" id="billing_type" data-width="100%" data-none-selected-text="Nothing selected" tabindex="-98">-->
<!--                            <option value=""></option>-->
<!--                            <option value="1">نرخ ثابت</option>-->
<!--                            <option value="2">ساعت پروژه</option>-->
<!--                            <option value="3" data-subtext="(کار بر اساس نرخ ساعتی)">ساعت کار</option>-->
<!--                        </select>-->
<!--                        <button type="button" class="btn dropdown-toggle btn-default bs-placeholder" data-toggle="dropdown" role="combobox" aria-owns="bs-select-2" aria-haspopup="listbox" aria-expanded="false" data-id="billing_type" title="Nothing selected"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">Nothing selected</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open"><div class="inner open" role="listbox" id="bs-select-2" tabindex="-1"><ul class="dropdown-menu inner " role="presentation"></ul></div></div></div>-->
<!--                </div>-->
<!--            </div>-->
<!---->
<!---->
<!--        </div>-->
<!---->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->
<!--        <br/>-->

        <div class="mz-panel">
            <div class="mz-panel-header">
                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                <span class="dash-mtext"> قیمت </span>
            </div>
            <div class="mz-panel-body">
                <div class="col-md-3">
                    <div class="form-group" app-field-wrapper="name">
                        <label for="priceMain" class="control-label"> <small class="req text-danger">* </small>قیمت خرید</label>
                        <input type="number" min="0" id="priceMain" name="priceMain" class="form-control" aria-invalid="false">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group select-placeholder">
                        <label for="currencyType" class="control-label"><?php echo _l('نوع ارز'); ?></label>
                        <select name="currencyType" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                            <?php foreach($currencies as $currency){ ?>
                                <option value="<?php echo $currency['id'];?>"><?php echo $currency['name'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group" app-field-wrapper="name">
                        <label for="city_builder" class="control-label"><?php echo _l(' شهر سازنده'); ?></label>
                        <input type="text" id="city_builder" name="city_builder" class="form-control" value="" aria-invalid="false">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group" app-field-wrapper="name">
                        <label for="peymentType" class="control-label"><?php echo _l(' شیوه پرداخت '); ?></label>
                        <select name="peymentType" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                            <?php foreach($data_view['pardakhtType'] as $currency){ ?>
                                <option value="<?php echo $currency['key'];?>"><?php echo $currency['value'];?></option>
                            <?php } ?>
                        </select>
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
                <div class="col-md-3">

                    <label for="vendor"><?php echo _l('فروشنده'); ?></label>
                    <select name="vendor" id="vendor" class="selectpicker" data-live-search="true" data-width="100%" data-none-selected-text="<?php echo _l('ticket_settings_none_assigned'); ?>" >
                        <option value="">1</option>
                        <option value="">2</option>
                        <option value="">3</option>
                        <?php foreach($vendors as $s) { ?>
                            <option value="<?php echo html_entity_decode($s['userid']); ?>" <?php if(isset($pur_order) && $pur_order->vendor == $s['userid']){ echo 'selected'; }else{ if(isset($ven) && $ven == $s['userid']){ echo 'selected';} } ?>><?php echo html_entity_decode($s['company']); ?></option>
                        <?php } ?>
                    </select>

<!--                    <input type="text" id="hiddenVendorId" />-->

                </div>
                <div class="col-md-3">
                    <label for="select_contacts"><?php echo _l('مخاطب مربوطه'); ?></label>
                    <select name="select_contacts" style="background-color: #fff;" id="select_contacts" class=" form-control btn-default" data-width="100%" data-none-selected-text="<?php echo _l('ticket_settings_none_assigned'); ?>" >
                        <option value="">ابتدا فروشنده را انتخاب کنید!</option>
                    </select>
                </div>

                <div class="col-md-3">
<!--                    <div class="form-group select-placeholder">-->
<!--                        <label for="peymentType" class="control-label">--><?php //echo _l('کشور فروشنده'); ?><!--</label>-->
<!--                        <select name="peymentType" class="selectpicker" data-width="100%" data-none-selected-text="--><?php //echo _l('dropdown_non_selected_tex'); ?><!--">-->
<!--                            <option value="" selected>--><?php //echo _l('لطفا انتخاب کنید'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('100% پیش پرداخت'); ?><!--">--><?php //echo _l('%100 پیش پرداخت'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('90% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%90 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('80% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%80 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('70% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%70 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('60% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%60 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('50% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%50 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('40% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%40 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('30% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%30 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('20% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%20 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('10% پیش پرداخت مابقی زمان تحویل کالا'); ?><!--">--><?php //echo _l('%10 پیش پرداخت مابقی زمان تحویل کالا'); ?><!--</option>-->
<!--                            <option value="--><?php //echo _l('100% زمان تحویل کالا'); ?><!--">--><?php //echo _l('%100 زمان تحویل کالا'); ?><!--</option>-->
<!--                        </select>-->
<!--                    </div>-->
                </div>
                <div class="col-md-3">
<!--                    <div class="form-group" app-field-wrapper="name">-->
<!--                        <input type="text" id="name" name="name" class="form-control" value="" aria-invalid="false">-->
<!--                    </div>-->
                </div>
            </div>
        </div>


        <?php init_tail(); ?>

        <script>
            $(document).ready(function () {
                let ajaxP = document.getElementById('vendor');
                let select_contacts = document.getElementById('select_contacts');
                let select_contacts_ul = document.getElementById('bs-select-5').firstElementChild;
                ajaxP.addEventListener('change',()=>{
                    $.ajax({
                        url: '<?php echo site_url("admin/projects/showContactsVendors");?>',
                        type: 'post',
                        // dataType:'json',
                        data:{
                            vendorId: ajaxP.value,
                        },
                        success:function(data){
                            let result = JSON.parse(data);
                            if(result.contacts.length !== 0){
                                select_contacts.innerHTML = '';
                                //select_contacts_ul.firstElementChild.innerHTML = '';
                                for(let i=0; i<result.contacts.length; i++){

                                    select_contacts.innerHTML += `<option value="${result.contacts[i].id}">${result.contacts[i].firstname} ${result.contacts[i].lastname}</option>`;
                                    //select_contacts_ul.innerHTML += `<li class="selected active"><a role="option" id="bs-select-5-${i}" tabindex="0" aria-setsize="4" ><span class="text"> ${result.contacts[i].firstname} ${result.contacts[i].lastname} </span></a></li>`;
                                    //select_contacts_ul.innerHTML += `<li>hello</li>`;
                                    console.log(select_contacts_ul);


                                }
                            }else{
                                select_contacts.innerHTML = `<option value="">مخاطبی وجود ندارد!</option>`;
                            }
                        }
                    });
                });
            })
        </script>


        <style>
            .addBtn{
                display: inline-block;
                float: left;
                cursor: pointer;
            }
        </style>

        <section id="hamlOnaghl">
            <div class="mz-panel" id="hamlOnaghlClass">
                <div class="mz-panel-header" id="divCSHeader">
                    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                    <span class="dash-mtext"> حمل و نقل </span>
                    <div style="float: left; padding: 0px; cursor: pointer; position: relative;" id="addHamlBtn">
                        <button type="button" class="btn pull-right btn-info"><i class="fa fa-plus"></i></button>
                    </div>
                </div>
                <div class="mz-panel-body" id="hamlOnaghlBody">

                    <div id="h-1">
                        <div class="col-md-4">
                            <div class="form-group" app-field-wrapper="name">
                                <label for="frmHaml[0][cost]" class="control-label"> <small class="req text-danger">* </small>هزینه حمل</label>
                                <input type="number" min="0" id="frmHaml[0][cost]" name="frmHaml[0][cost]" class="form-control" value="" aria-invalid="false">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group select-placeholder">
                                <label for="frmHaml[0][typeCurrency]" class="control-label"><?php echo _l('نوع ارز'); ?></label>
                                <select name="frmHaml[0][typeCurrency]" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                    <?php foreach($currencies as $currency){ ?>
                                        <option value="<?php echo $currency['id'];?>"><?php echo $currency['name'];?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group" app-field-wrapper="name">
                                <label for="frmHaml[0][typehaml]" class="control-label"><?php echo _l('روش حمل'); ?></label>
                                <select name="frmHaml[0][typehaml]" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                    <?php foreach($data_view['raveshHaml'] as $currency){ ?>
                                        <option value="<?php echo $currency['key'];?>"><?php echo $currency['value'];?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <!---------------------------------------------------------------------------------------------->
                        <div class="col-md-1"></div>
                        <div class="col-md-5">
                            <div class="col-md-6">
                                <div class="form-group" app-field-wrapper="name">
                                    <label for="frmHaml[0][timehaml]" class="control-label"><?php echo _l('زمان حمل'); ?></label>
                                    <input type="number" min="0" id="frmHaml[0][timehaml]" name="frmHaml[0][timehaml]" class="form-control" value="" aria-invalid="false">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group select-placeholder">
                                    <label for="frmHaml[0][timehamlVahed]" class="control-label"><?php echo _l('واحد زمان'); ?></label>
                                    <select name="frmHaml[0][timehamlVahed]" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                        <?php foreach($data_view['zaman'] as $currency){ ?>
                                            <option value="<?php echo $currency['key'];?>"><?php echo $currency['value'];?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="col-md-6">
                                <div class="form-group" app-field-wrapper="name">
                                    <label for="frmHaml[0][timetahvil]" class="control-label"><?php echo _l('زمان تحویل در مبدا'); ?></label>
                                    <input type="number" min="0" id="frmHaml[0][timetahvil]" name="frmHaml[0][timetahvil]" class="form-control" value="" aria-invalid="false">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group select-placeholder">
                                    <label for="frmHaml[0][timetahvilVahed]" class="control-label"><?php echo _l('واحد زمان'); ?></label>
                                    <select name="frmHaml[0][timetahvilVahed]" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                        <?php foreach($data_view['zaman'] as $currency){ ?>
                                            <option value="<?php echo $currency['key'];?>"><?php echo $currency['value'];?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1"></div>
                        <div style="clear: both;"></div>
                    </div>

                </div>
            </div>
        </section>

        <script>
            let main = document.getElementById('hamlOnaghl');
            let hamlOnaghlBody = document.getElementById('hamlOnaghlBody');
            let addHamlBtn = document.getElementById('addHamlBtn');
            let h1 = document.getElementById('h-1');

            let Removes = [];

            let appChild = [];
            let numberHaml = 1;
            appChild[0] = h1;


            addHamlBtn.addEventListener('click',()=>{
                //for(let i=0; i<1; i++){
                appChild[numberHaml] = document.createElement('div');
                appChild[numberHaml].id= 'h'+numberHaml;

                var descHtmlString = `
                        <hr class="hr-panel-heading" />
                        <div style="padding: 8px; margin: 10px"><span style="text-decoration:underline;">شماره ${numberHaml+1}:</span>
                        <div style="float: left; " id="remove_haml_${numberHaml}">
                            <button type="button" class="btn btn-danger pull-left"><i class="fa fa-trash"></i></button>
                        </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group" app-field-wrapper="name">
                                <label for="frmHaml[${numberHaml}][cost]" class="control-label"> <small class="req text-danger">* </small>هزینه حمل</label>
                                <input type="number" min="0" id="frmHaml[${numberHaml}][cost]" name="frmHaml[${numberHaml}][cost]" class="form-control" value="" aria-invalid="false">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="frmHaml[${numberHaml}][typeCurrency]"><?php echo _l('نوع ارز'); ?></label>
                                <select name="frmHaml[${numberHaml}][typeCurrency]" style="background-color: #fff;" id="frmHaml[${numberHaml}][typeCurrency]" class=" form-control btn-default" data-width="100%" data-none-selected-text="<?php echo _l('ticket_settings_none_assigned'); ?>" >
                                    <?php foreach($currencies as $currency){ ?>
                                        <option value="<?php echo $currency['id'];?>"><?php echo $currency['name'];?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group" app-field-wrapper="name">
                                <label for="frmHaml[${numberHaml}][typehaml]"><?php echo _l('روش حمل'); ?></label>
                                <select name="frmHaml[${numberHaml}][typehaml]" style="background-color: #fff;" id="frmHaml[${numberHaml}][typehaml]" class=" form-control btn-default" data-width="100%" data-none-selected-text="<?php echo _l('ticket_settings_none_assigned'); ?>" >
                                    <?php foreach($data_view['raveshHaml'] as $currency){ ?>
                                        <option value="<?php echo $currency['key'];?>"><?php echo $currency['value'];?></option>
                                    <?php } ?>
                                </select>
                            </div>

                        </div>



                        <!---------------------------------------------------------------------------------------------->
                        <div class="col-md-1"></div>
                        <div class="col-md-5">
                            <div class="col-md-6">
                                <div class="form-group" app-field-wrapper="name">
                                    <label for="frmHaml[${numberHaml}][timehaml]" class="control-label"><?php echo _l('زمان حمل'); ?></label>
                                    <input type="number" min="0" id="frmHaml[${numberHaml}][timehaml]" name="frmHaml[${numberHaml}][timehaml]" class="form-control" value="" aria-invalid="false">
                                </div>
                            </div>
                            <div class="col-md-6">

                                    <label for="frmHaml[${numberHaml}][timehamlVahed]"><?php echo _l('واحد زمان'); ?></label>
                                    <select name="frmHaml[${numberHaml}][timehamlVahed]" style="background-color: #fff;" id="frmHaml[${numberHaml}][timehamlVahed]" class=" form-control btn-default" data-width="100%" data-none-selected-text="<?php echo _l('ticket_settings_none_assigned'); ?>" >
                                        <?php foreach($data_view['zaman'] as $currency){ ?>
                                        <option value="<?php echo $currency['key'];?>"><?php echo $currency['value'];?></option>
                                    <?php } ?>
                                    </select>

                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="col-md-6">
                                <div class="form-group" app-field-wrapper="name">
                                    <label for="frmHaml[${numberHaml}][timetahvil]" class="control-label"><?php echo _l('زمان تحویل در مبدا'); ?></label>
                                    <input type="number" min="0" id="frmHaml[${numberHaml}][timetahvil]" name="frmHaml[${numberHaml}][timetahvil]" class="form-control" value="" aria-invalid="false">
                                </div>
                            </div>
                            <div class="col-md-6">

                                <label for="frmHaml[${numberHaml}][timetahvilVahed]"><?php echo _l('واحد زمان'); ?></label>
                                    <select name="frmHaml[${numberHaml}][timetahvilVahed]" style="background-color: #fff;" id="frmHaml[${numberHaml}][timetahvilVahed]" class=" form-control btn-default" data-width="100%" data-none-selected-text="<?php echo _l('ticket_settings_none_assigned'); ?>" >
                                        <?php foreach($data_view['zaman'] as $currency){ ?>
                                        <option value="<?php echo $currency['key'];?>"><?php echo $currency['value'];?></option>
                                    <?php } ?>
                                    </select>
                            </div>
                        </div>
                        <div class="col-md-1"></div>
                        <div style="clear: both;"></div>
                        `;
                appChild[numberHaml].innerHTML = descHtmlString;

                hamlOnaghlBody.appendChild(appChild[numberHaml]);
                Removes[numberHaml-1] = document.getElementById(`remove_haml_${numberHaml}`);

                for (let i=0; i<Removes.length; i++){
                    Removes[i].addEventListener('click',()=>{
                        //console.log(i);
                        //appChild[i+1].innerHTML = '';
                        appChild[i+1].remove();
                    });
                }
                //console.log(Removes[numberHaml-1]);
                numberHaml++;
            });




        </script>

        <!------------------------------------------------------------------------------------------------------->

<!--        <div class="mz-panel">-->
<!--            <div class="mz-panel-header">-->
<!--                <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>-->
<!--                <span class="dash-mtext"> ترخیص </span>-->
<!--            </div>-->
<!--            <div class="mz-panel-body">-->
<!---->
<!--                <div class="col-md-3">-->
<!--                    <div class="form-group select-placeholder">-->
<!--                        <label for="tarkhisType" class="control-label">--><?php //echo _l('نحوه ترخیص'); ?><!--</label>-->
<!--                        <select name="tarkhisType" class="selectpicker" data-width="100%" data-none-selected-text="--><?php //echo _l('dropdown_non_selected_tex'); ?><!--">-->
<!--                            --><?php //foreach($data_view['nahveTarkhis'] as $currency){ ?>
<!--                                <option value="--><?php //echo $currency['key'];?><!--">--><?php //echo $currency['value'];?><!--</option>-->
<!--                            --><?php //} ?>
<!--                        </select>-->
<!--                    </div>-->
<!--                </div>-->
<!---->
<!--                <div class="col-md-3">-->
<!--                    <div class="form-group" app-field-wrapper="name">-->
<!--                        <label for="HSCode" class="control-label"> <small class="req text-danger">* </small> HS code</label>-->
<!--                        <input type="text" id="HSCode" name="HSCode" class="form-control" value="" aria-invalid="false">-->
<!--                    </div>-->
<!--                </div>-->
<!---->
<!--                <div class="col-md-3">-->
<!--                    <div class="form-group" app-field-wrapper="name">-->
<!--                        <label for="gomrokHogog" class="control-label">--><?php //echo _l('حقوق گمرکی '); ?><!--</label>-->
<!--                        <input type="number" min="0" id="gomrokHogog" name="gomrokHogog" class="form-control" value="" aria-invalid="false">-->
<!--                    </div>-->
<!--                </div>-->
<!---->
<!--                <div class="col-md-3">-->
<!--                    <div class="form-group" app-field-wrapper="name">-->
<!--                        <label for="tarkhisPrice" class="control-label">--><?php //echo _l(' هزینه ترخیص '); ?><!--</label>-->
<!--                        <input type="number" min="0" id="tarkhisPrice" name="tarkhisPrice" class="form-control" value="" aria-invalid="false">-->
<!--                    </div>-->
<!--                </div>-->
<!---->
<!---->
<!---->
<!--                -------------------------------------------------------------------------------------------->
<!--            </div>-->
<!--        </div>-->


        <!------------------------------------------------------------------------------------------------------->

            <div class="mz-panel">
                <div class="mz-panel-header">
                    <span class="dash-micon"><i class="my-ti ti ti-adjustments-alt"></i></span>
                    <span class="dash-mtext"> تائیدیه ها </span>
                </div>
                <div class="mz-panel-body">

                    <div class="col-md-3">
                        <div class="checkbox checkbox-success">
                            <input type="checkbox" id="taedee[kharegi][0]['key']" name="taedee[kharegi][0]['key']" value="1">
                            <label for="taedee[kharegi][0]['key']"  class="control-label"> <small class="req text-danger">* </small>داخلی 1</label>
                            <p>توضیح داخلی 1</p>

                            <input type="hidden" id="taedee[kharegi][0]['value']" name="taedee[kharegi][0]['value']" value="داخلی 1">
                            <input type="hidden" id="taedee[kharegi][0]['desc']" name="taedee[kharegi][0]['desc']" value="توضیح داخلی 1">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="checkbox checkbox-success">
                            <input type="checkbox" id="taedee[kharegi][1]['key']" name="taedee[kharegi][1]['key']" value="1">
                            <label for="taedee[kharegi][1]['key']" class="control-label"> <small class="req text-danger">* </small>داخلی 2</label>
                            <p>توضیح داخلی 2</p>

                            <input type="hidden" id="taedee[kharegi][1]['value']" name="taedee[kharegi][1]['value']" value="داخلی 2">
                            <input type="hidden" id="taedee[kharegi][1]['desc']" name="taedee[kharegi][1]['desc']" value="توضیح داخلی 2">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="checkbox checkbox-success">
                            <input type="checkbox" id="taedee[kharegi][2]['key']" name="taedee[kharegi][2]['key']" value="1">
                            <label for="taedee[kharegi][2]['key']" class="control-label"> <small class="req text-danger">* </small>داخلی 3</label>
                            <p>توضیح داخلی 3</p>

                            <input type="hidden" id="taedee[kharegi][2]['value']" name="taedee[kharegi][2]['value']" value="داخلی 3">
                            <input type="hidden" id="taedee[kharegi][2]['desc']" name="taedee[kharegi][2]['desc']" value="توضیح داخلی 3">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="checkbox checkbox-success">
                            <input type="checkbox" id="taedee[kharegi][3]['key']" name="taedee[kharegi][3]['key']" value="1">
                            <label for="taedee[kharegi][3]['key']" class="control-label"> <small class="req text-danger">* </small>داخلی 4</label>
                            <p>توضیح داخلی 4</p>

                            <input type="hidden" id="taedee[kharegi][3]['value']" name="taedee[kharegi][3]['value']" value="داخلی 4">
                            <input type="hidden" id="taedee[kharegi][3]['desc']" name="taedee[kharegi][3]['desc']" value="توضیح داخلی 4">
                        </div>
                    </div>

                </div>
            </div>


            <p class="bold"><?php echo _l('شرح کلی'); ?></p>
        <?php //$contents = ''; if(isset($project)){$contents = $project->description;} ?>
        <?php echo render_textarea('description','','',array(),array(),'','tinymce'); ?>

        <!------------------------------------------------------------------------------------------------------->




