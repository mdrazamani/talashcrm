<?php

use app\services\AbstractKanban;

class Mz_model extends App_Model
{
    public function __construct(){
        parent::__construct();
    }


    public function get_this_staff(){
        return $this->db->query('SELECT * FROM `tblstaff` left join `tblhr_job_position` on tblhr_job_position.position_id = tblstaff.job_position WHERE `staffid` = "'.$_SESSION['staff_user_id'].'"')->row();
    }

}