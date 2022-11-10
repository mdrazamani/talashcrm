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
                    <span class="dash-mtext"> پیشنهاد فنی </span>
                </div>
                <div class="mz-panel-body">


                    <div class="col-md-12">

                        <p class="bold"><?php echo _l('متن پیشنهادی'); ?></p>
                        <?php //$contents = ''; if(isset($project)){$contents = $project->description;} ?>
                        <?php echo render_textarea('faniProposal','','',array(),array(),'','tinymce'); ?>

                    </div>
                </div>
            </div>




            <?php //init_tail(); ?>








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
                            <label for="taedee[kharegi][0]['key']"  class="control-label"> <small class="req text-danger">* </small>فنی 1</label>
                            <p>توضیح فنی 1</p>

                            <input type="hidden" id="taedee[kharegi][0]['value']" name="taedee[kharegi][0]['value']" value="فنی 1">
                            <input type="hidden" id="taedee[kharegi][0]['desc']" name="taedee[kharegi][0]['desc']" value="توضیح فنی 1">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="checkbox checkbox-success">
                            <input type="checkbox" id="taedee[kharegi][1]['key']" name="taedee[kharegi][1]['key']" value="1">
                            <label for="taedee[kharegi][1]['key']" class="control-label"> <small class="req text-danger">* </small>فنی 2</label>
                            <p>توضیح فنی 2</p>

                            <input type="hidden" id="taedee[kharegi][1]['value']" name="taedee[kharegi][1]['value']" value="فنی 2">
                            <input type="hidden" id="taedee[kharegi][1]['desc']" name="taedee[kharegi][1]['desc']" value="توضیح فنی 2">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="checkbox checkbox-success">
                            <input type="checkbox" id="taedee[kharegi][2]['key']" name="taedee[kharegi][2]['key']" value="1">
                            <label for="taedee[kharegi][2]['key']" class="control-label"> <small class="req text-danger">* </small>فنی 3</label>
                            <p>توضیح فنی 3</p>

                            <input type="hidden" id="taedee[kharegi][2]['value']" name="taedee[kharegi][2]['value']" value="فنی 3">
                            <input type="hidden" id="taedee[kharegi][2]['desc']" name="taedee[kharegi][2]['desc']" value="توضیح فنی 3">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="checkbox checkbox-success">
                            <input type="checkbox" id="taedee[kharegi][3]['key']" name="taedee[kharegi][3]['key']" value="1">
                            <label for="taedee[kharegi][3]['key']" class="control-label"> <small class="req text-danger">* </small>فنی 4</label>
                            <p>توضیح فنی 4</p>

                            <input type="hidden" id="taedee[kharegi][3]['value']" name="taedee[kharegi][3]['value']" value="فنی 4">
                            <input type="hidden" id="taedee[kharegi][3]['desc']" name="taedee[kharegi][3]['desc']" value="توضیح فنی 4">
                        </div>
                    </div>

                </div>
            </div>



            <p class="bold"><?php echo _l('شرح کلی'); ?></p>
            <?php //$contents = ''; if(isset($project)){$contents = $project->description;} ?>
            <?php echo render_textarea('description','','',array(),array(),'','tinymce'); ?>

            <!------------------------------------------------------------------------------------------------------->




