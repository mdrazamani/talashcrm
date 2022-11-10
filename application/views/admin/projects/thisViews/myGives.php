<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php
//forosh
//kharegi
$thisTitle = $thisViews['dp']['en_name'];
$type_process_view_path = 'gives/'.$thisTitle;
$type_process_controller = 'projects';
$type_process_action = 'addAdakheliProcess';
?>
<div class="mz-panel">
    <div class="mz-panel-header">
        <span class="dash-mtext"> لیست دریافتی ها </span>
    </div>
    <div class="mz-panel-body">
<?php $this->view('admin/projects/thisViews/views/gives/' . $thisTitle); ?>
</div>
    </div>
    <!-- //////////////////////////////////////////////////////////////////////// -->

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
                                <div class="col-md-4">
                                    <?php $value = (isset($project) ? $project->name : ''); ?>
                                    <?php echo render_input('productnumber', 'کد محصول', $value); ?>
                                </div>
                                <div class="col-md-4">

                                    <?php $value = (isset($project) ? $project->name : ''); ?>
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
                                <div class="col-md-4">

                                    <?php $value = (isset($project) ? $project->name : ''); ?>
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
                                    <?php $value = (isset($project) ? $project->name : ''); ?>
                                    <?php echo render_input('abad0', 'وزن(g)', $value, 'number', array('min' => '0')); ?>
                                </div>
                                <div class="col-md-3">
                                    <?php $value = (isset($project) ? $project->name : ''); ?>
                                    <?php echo render_input('abad1', 'طول(cm)', $value, 'number', array('min' => '0')); ?>
                                </div>
                                <div class="col-md-3">
                                    <?php $value = (isset($project) ? $project->name : ''); ?>
                                    <?php echo render_input('abad2', 'عرض(cm)', $value, 'number', array('min' => '0')); ?>
                                </div>
                                <div class="col-md-3">
                                    <?php $value = (isset($project) ? $project->name : ''); ?>
                                    <?php echo render_input('abad3', 'ارتفاع(cm)', $value, 'number', array('min' => '0')); ?>
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
                                                <div class="col-md-3">
                                                    <?php $value = ''; ?>
                                                    <?php echo render_input('jagozin[0][pName]', 'عنوان محصول', $value); ?>
                                                </div>
                                                <div class="col-md-3">
                                                    <?php $value = ''; ?>
                                                    <?php echo render_input('jagozin[0][pCode]', 'کد محصول', $value); ?>
                                                </div>
                                                <div class="col-md-3">

                                                    <?php $value = (isset($project) ? $project->name : ''); ?>
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
                                                <div class="col-md-3">

                                                    <?php $value = (isset($project) ? $project->name : ''); ?>
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
                                                    <?php $value = ''; ?>
                                                    <?php echo render_input('jagozin[0][pvazn]', 'وزن(g)', $value, 'number'); ?>
                                                </div>
                                                <div class="col-md-3">
                                                    <?php $value = ''; ?>
                                                    <?php echo render_input('jagozin[0][ptol]', 'طول(cm)', $value, 'number'); ?>
                                                </div>
                                                <div class="col-md-3">
                                                    <?php $value = ''; ?>
                                                    <?php echo render_input('jagozin[0][parz]', 'عرض(cm)', $value, 'number'); ?>
                                                </div>
                                                <div class="col-md-3">
                                                    <?php $value = ''; ?>
                                                    <?php echo render_input('jagozin[0][pert]', 'ارتفاع(cm)', $value, 'number'); ?>
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

<?php //init_tail(); ?>
    <script>

        let updateMoadl = document.getElementById('updateItem2');
        let myModalLabel = document.getElementById('myModalLabel2');
        let nameAjax = document.getElementById('nameAjax');
        let itemIdAjax = document.getElementById('itemIdAjax');

        //let resultSend = document.getElementById('resultSend');

        function showUpdate(itemId, itemName) {
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
                                    <div class="col-md-3">
                                        <?php $value = (isset($project) ? $project->name : ''); ?>
                                        <?php //echo render_input('', 'محصول جایگزین', $value); ?>
                                        <label for="currencyType"
                                                   class="control-label"><?php echo _l('محصول جایگزین'); ?></label>
                                        <input type="text" class="form-control" name="jagozin[${numberHaml}][pName]" id="jagozin[${numberHaml}][pName]" value="" />
                                    </div>
                                    <div class="col-md-3">
                                        <?php $value = (isset($project) ? $project->name : ''); ?>
                                        <label for="currencyType"
                                                   class="control-label"><?php echo _l('کد جایگزین'); ?></label>
                                        <input type="text" class="form-control" name="jagozin[${numberHaml}][pCode]" id="jagozin[${numberHaml}][pCode]" value="" />
                                    </div>
                                    <div class="col-md-3">

                                        <?php $value = (isset($project) ? $project->name : ''); ?>

                                            <label for="jagozin[${numberHaml}][pBrand]"
                                                   class="control-label"><?php echo _l('برند جایگزین'); ?></label>
                                            <select name="jagozin[${numberHaml}][pBrand]" id="jagozin[${numberHaml}][pBrand]" class="form-control" data-width="100%"
                                                    data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                                <?php foreach ($data_modal['brands'] as $brand) { ?>
                                                    <option value="<?php echo $brand['key']; ?>"><?php echo $brand['value']; ?></option>
                                                <?php } ?>
                                            </select>


                                    </div>
                                    <div class="col-md-3">

                                        <?php $value = (isset($project) ? $project->name : ''); ?>

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
                                                <?php $value = (isset($project) ? $project->name : ''); ?>

                                                <label for="currencyType"
                                                   class="control-label"><?php echo _l('وزن(g)'); ?></label>
                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][pvazn]" id="jagozin[${numberHaml}][pvazn]" value="" />
                                            </div>
                                            <div class="col-md-3">
                                                <?php $value = (isset($project) ? $project->name : ''); ?>

                                                <label for="currencyType"
                                                   class="control-label"><?php echo _l('طول(cm)'); ?></label>
                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][ptol]" id="jagozin[${numberHaml}][ptol]" value="" />
                                            </div>
                                            <div class="col-md-3">

                                                <?php $value = (isset($project) ? $project->name : ''); ?>
                                                <label for="currencyType"
                                                   class="control-label"><?php echo _l('عرض(cm)'); ?></label>
                                        <input type="number" class="form-control" name="jagozin[${numberHaml}][parz]" id="jagozin[${numberHaml}][parz]" value="" />
                                            </div>
                                            <div class="col-md-3">
                                                <?php $value = (isset($project) ? $project->name : ''); ?>
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
        updateItemBtn.addEventListener('click', () => {

            jagozin = document.querySelectorAll("input[name^='jagozin['],select[name^='jagozin['],textarea[name^='jagozin[']");
            jagozinMain = {};
            let newJ = 0;

            for (let i = 0; i < parseInt(jagozin.length / 9); i++) {
                jagozinMain[i] = {
                    pName: jagozin[newJ++].value,
                    pCode: jagozin[newJ++].value,
                    pBrand: jagozin[newJ++].value,
                    pCountry: jagozin[newJ++].value,
                    pvazn: jagozin[newJ++].value,
                    ptol: jagozin[newJ++].value,
                    parz: jagozin[newJ++].value,
                    pert: jagozin[newJ++].value,
                    psha: jagozin[newJ++].value
                };
            }

            $.ajax({
                url: '<?php echo site_url("admin/projects/updateItemfn");?>',
                type: 'post',
                // dataType:'json',
                data: {
                    itemId: itemIdAjax.value,
                    projectId: projectIdAjax.value,
                    staff_user_id: staff_user_id.value,
                    product_name: nameAjax.value,
                    productnumber: productnumber_p.value,
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