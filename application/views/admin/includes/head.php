<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="<?php echo $locale; ?>">
<head>
    <?php $isRTL = (is_rtl() ? 'true' : 'false'); ?>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title><?php echo isset($title) ? $title : get_option('companyname'); ?></title>

    <?php echo app_compile_css(); ?>
    <?php render_admin_js_variables(); ?>

    <script>
        var totalUnreadNotifications = <?php echo $current_user->total_unread_notifications; ?>,
        proposalsTemplates = <?php echo json_encode(get_proposal_templates()); ?>,
        contractsTemplates = <?php echo json_encode(get_contract_templates()); ?>,
        billingAndShippingFields = ['billing_street','billing_city','billing_state','billing_zip','billing_country','shipping_street','shipping_city','shipping_state','shipping_zip','shipping_country'],
        isRTL = '<?php echo $isRTL; ?>',
        taskid,taskTrackingStatsData,taskAttachmentDropzone,taskCommentAttachmentDropzone,newsFeedDropzone,expensePreviewDropzone,taskTrackingChart,cfh_popover_templates = {},_table_api;
    </script>
    <!--mz-->
    <link rel="stylesheet" href="https://talashcrm.com/assets/mz_fonts/icons/iconfont/tabler-icons.css" />
    <link rel="stylesheet" href="https://talashcrm.com/assets/fonts/fonts.css" />



    <style>
        #header{
            background: rgb(40, 47, 61);
            font-family: iranyekan;
        }
        .modal-content{
            font-family: iranyekan;
        }
        .hide-menu{
            border-left: none !important;
        }
        #menu{
            overflow-y: scroll;
            overflow-x: inherit;
            position: fixed;
            top: 0;
            width: 255px;
        }

        .float-alert{
            font-family: iranyekan;
        }

        .input-group-addon{
            border-left: 1px solid #ccc !important;
        }
        .input-group{
            direction: ltr;
        }

        .mz-formGroup{
            display: inline-block;
        }
        .mz-radioClass{
            display: inline-block;
            width: 100%;
            height: 14px;
            padding: 1px 2px !important;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            outline: none;
        }

        .mz-addDivInput{
            position: relative;
            display: table;
            border-collapse: separate;
        }

        .mz-addInput{
            border-radius: 4px !important;
            background-color: rgb(0, 112, 240);
            cursor: pointer;
            /*border-left: none;*/
            border: 1px solid rgb(0, 112, 240);
            outline: none;
            color: white;
        }

        .mz-float-left{
            float: left;
        }

        #wrapper{
            margin-right: 255px !important;
            background: linear-gradient(115.25deg, #ffffff 0%, #f8f9fd 100.25%) !important;
            font-family: iranyekan;
        }

        .btn-bottom-toolbar{
            padding-left: 70px;
        }

        .nav-tabs{
            border-top: none;
        }

        .mz-panel{
            box-shadow: 0 6px 30px rgb(182 186 203 / 30%) !important;
            margin-bottom: 24px !important;
            transition: box-shadow 0.2s ease-in-out !important;
            position: relative !important;
            display: flex !important;
            flex-direction: column !important;
            min-width: 0 !important;
            word-wrap: break-word !important;
            background-color: #ffffff !important;
            background-clip: border-box !important;
            border: 0px solid rgba(0, 0, 0, 0.125) !important;
            border-radius: 10px !important;
        }


        .mz-panel-header{
            border-bottom: 1px solid #f1f1f1;
            padding: 15px 20px;
            margin-bottom: 0;
            background-color: transparent;
            position: relative;
        }
        .mleft35{
            margin-left: 35px;
        }

        .nav-tabs>li>a{
            margin-left: 0;
            padding: 12px 10px 12px 10px;
        }

        .disFlex{
            display: flex;
        }

        @media screen and (min-width: 1248px) {
            .display-flex{
                display: flex;
                justify-content: center;
            }
        }

        .mz-panel-header:first-child {
            border-radius: calc(10px - 0px) calc(10px - 0px) 0 0;
        }

        .mz-panel-body{
            flex: 1 1 auto;
            padding: 25px 25px;
        }

        .dirltr{
            direction: ltr;
        }
        .disInlineBlock{
            display:inline-block;
        }

        .arrow-left-d, .arrow-right-d{
            display: inline-block;
        }

        #side-menu{
            background: linear-gradient(115.25deg, #ffffff 0%, #f8f9fd 100.25%) !important;
        }
        #side-menu li{
            display: list-item;
            text-align: -webkit-match-parent;
        }
        #side-menu li .aside_a{
            color: #333;
            border-radius: 12px;
            margin-left: 15px;
            margin-right: 15px;
            padding: 7px 10px 7px 7px;
            display: block;
            font-weight: 600;
            margin-top: 7px;
            position: relative;
            font-size: 14px;
        }
        #side-menu li.active>.aside_a{
            background: rgb(0, 112, 240) !important;
            box-shadow: 0 5px 7px -1px rgba(0, 112, 240, 0.4) !important;
            border-radius: 12px;
        }
        #side-menu li.active>.aside_a>span{
            color: #fff;
        }
        #side-menu li.active>.aside_a>span>.my-ti{
            color: rgb(0, 112, 240);
        }
        #side-menu li.active>.aside_a>.arrow-right-d{
            color: #fff;
        }
        /********************/
        #side-menu li li.active>a{
            background: rgb(0, 112, 240) !important;
            box-shadow: 0 5px 7px -1px rgba(0, 112, 240, 0.4) !important;
            border-radius: 9px !important;
            display: block !important;

            margin-left: 15px !important;
            margin-right: 5px !important;
            padding: 7px 10px 7px 7px !important;
            font-weight: 600 !important;
            margin-top: 7px !important;
        }
        #side-menu li li.active>a>span{
            color: #fff !important;
        }
        #side-menu li li.active>a>span>.my2-ti{
            color: rgb(0, 112, 240) !important;
        }
        /********************/

        /********************/
        #side-menu li:hover .aside_a, li li:hover a{
            background: rgb(0, 112, 240) !important;
            box-shadow: 0 5px 7px -1px rgba(0, 112, 240, 0.4) !important;
        }
        #side-menu li:hover .dash-mtext, li:hover .arrow-left-d , li li:hover .dash-mtext2{
            color: #fff !important;
        }

        #side-menu li:hover .my-ti, li li:hover .my2-ti{
            color: rgb(0, 112, 240) !important;
        }

        /********************/


        #side-menu li li{
            display: list-item;
            text-align: -webkit-match-parent;
        }
        #side-menu li li a{
            color: #333;
            border-radius: 9px;
            margin-left: 15px;
            margin-right: 5px;
            padding: 7px 10px 7px 7px;
            display: block;
            font-weight: 600;
            margin-top: 7px;
            position: relative;
            font-size: 14px;
        }


        .dash-micon{
            background-color: #fff;
            box-shadow: -3px 4px 23px rgb(0 0 0 / 10%);
            /*margin-right: 15px;*/
            border-radius: 12px;
            height: 35px;
            width: 35px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            vertical-align: middle;
        }

        .dash-mtext{
            color: #333333;
            font-size: 14px;
            margin-right: 8px;
            font-family: talashCrm;
        }


        .dash-micon2{
            background-color: #fff;
            box-shadow: -3px 4px 23px rgb(0 0 0 / 10%);
            /*margin-right: 15px;*/
            border-radius: 7px;
            height: 25px;
            width: 25px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            vertical-align: middle;
        }

        .dash-mtext2{
            color: #333333;
            font-size: 13px;
            margin-right: 8px;
            font-family: talashCrm;
        }

        .dash-mtext::after {
            content: "";
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
        }

        .my-ti{
            color: #525b69;
            stroke: #525b69;
            fill: #f2f2f2;
            font-size: 20px;
        }

        .my2-ti{
            color: #525b69;
            stroke: #525b69;
            fill: #f2f2f2;
            margin-right: 2px !important;
            font-size: 16px;
        }


        .itemAlign{
            align-items: center;
        }

        .my-ti-white{
            color: #FFFFFF;
            stroke: #525b69;
            fill: #f2f2f2;
            font-size: 19px;
        }

        .dt-loader{
            position: fixed !important;
        }

        .input-group-select,.date,.currency_input{
            direction: rtl;
        }

    </style>

    <!--mz-->
    <?php app_admin_head(); ?>
</head>
<body <?php echo admin_body_class(isset($bodyclass) ? $bodyclass : ''); ?><?php if($isRTL === 'true'){ echo 'dir="rtl"';}; ?> style="background: transparent;">
<?php hooks()->do_action('after_body_start'); ?>
