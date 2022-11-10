<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Work_flow extends AdminController
{
//    public function __construct()
//    {
//        parent::__construct();
//        $this->load->model('projects_model');
//        $this->load->model('currencies_model');
//        $this->load->model('mz_model');
//        $this->load->helper('date');
//    }

    public function add_haml_o_naghl_in_bazargani_kharegi(){
        //$data = $this->input->post();
        $html = '
        <div class="mz-panel-body">
                    <div class="col-md-4">
                        <div class="form-group" app-field-wrapper="name">
                            <label for="name" class="control-label"> <small class="req text-danger">* </small>هزینه حمل</label>
                            <input type="text" id="name" name="name" class="form-control" value="" aria-invalid="false">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group select-placeholder">
                            <label for="peymentType" class="control-label">نوع ارز</label>
                            <select name="peymentType" class="selectpicker" data-width="100%" data-none-selected-text="dropdown_non_selected_tex">
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group" app-field-wrapper="name">
                            <label for="peymentType" class="control-label">روش حمل</label>
                            <input type="text" id="name" name="name" class="form-control" value="" aria-invalid="false">
                        </div>
                    </div>



                    <!---------------------------------------------------------------------------------------------->
                    <div class="col-md-1"></div>
                    <div class="col-md-5">
                        <div class="col-md-6">
                            <div class="form-group" app-field-wrapper="name">
                                <label for="peymentType" class="control-label">زمان حمل</label>
                                <input type="text" id="name" name="name" class="form-control" value="" aria-invalid="false">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group select-placeholder">
                                <label for="peymentType" class="control-label">واحد زمان</label>
                                <select name="peymentType" class="selectpicker" data-width="100%" data-none-selected-text="dropdown_non_selected_tex">
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="col-md-6">
                            <div class="form-group" app-field-wrapper="name">
                                <label for="peymentType" class="control-label">زمان تحویل در مبدا</label>
                                <input type="text" id="name" name="name" class="form-control" value="" aria-invalid="false">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group select-placeholder">
                                <label for="peymentType" class="control-label">واحد زمان</label>
                                <select name="peymentType" class="selectpicker" data-width="100%" data-none-selected-text="dropdown_non_selected_tex">
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
        ';


        //$dataNew = json_decode($data);

        echo json_encode([
            'test' => 'test'
        ]);
    }
}