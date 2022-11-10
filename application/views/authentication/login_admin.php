<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php $this->load->view('authentication/includes/head.php'); ?>
<body class="login_admin"<?php if(is_rtl()){ echo ' dir="rtl"'; } ?>>
 <div class="container">

     <style>
         .login-navbar{
             z-index: 9999999;
             position: relative;
             border-radius: 10px;
             background-color: #ffffff;
             box-shadow: 0 6px 30px rgba(182, 186, 203, 0.3);
             margin: 35px auto;
             /*padding: 20px 0 20px 0;*/
             width: 100%;
             text-align: center;
         }
         .nav-bar{
             display: inline-block;
             width: 49%;
             height: 80%;
         }
         .nav-bar-left{
             text-align: left;
         }
         .nav-bar-right{
             text-align: right;
         }
         .nav-bar-left li{
             display: inline-block;
             padding: 6px;
             font-family: talashCrm;
         }

         .nav-bar-left li:hover a{
             color: rgba(0, 0, 0, 0.9);
             text-decoration: none;
         }

         .nav-bar-left li a {
             color: rgba(0, 0, 0, 0.55);
             font-size: 15px;
             text-decoration: none;
         }
         .logo{
             padding: 6px;
         }
         .img-card-side{
             position: relative;
             padding: 0;
         }

         .auth-img-content{
             box-sizing: border-box;
             margin: 0 0 0 auto;
             width: 400px;
             max-width: 100%;
             color: #ffffff;
             font-family: talashCrm;
             font-size: 17px;
             text-align: right;
         }
         .login{
             width: 100%;
             text-align: right;
         }
         .img-fluid{
             max-width: 100%;
             height: auto;
         }
         .bg-auth-side{
             content: "";
             top: 20px;
             right: 50%;
             left: 20px;
             bottom: 20px;
             border-radius: 20px;
             position: absolute;
         }
         .bg-primary{
             background: rgb(0, 112, 240) !important;
         }
         .text-white{
             font-family: "iranyekan";
         }
     </style>

     <div class="bg-auth-side bg-primary"></div>

    <!-- -->
    <nav class="login-navbar">
        <div class="nav-bar nav-bar-left">
            <ul>
                <li><a href="#">قوانین و مقررات</a></li>
                <li><a href="#">پشتیبانی</a></li>
            </ul>
        </div>
        <div class="nav-bar nav-bar-right">
            <div class="logo">
                <img src="https://demo.rajodiya.com/salesy-saas/storage/logo/logo-dark.png" alt="Salesy SaaS" class="logo logo-lg">
            </div>
        </div>
    </nav>
    <!-- -->

  <div class="row">
      <!-- col-md-offset-4 authentication-form-wrapper -->
      <div class="col-md-4 col-xl-4 img-card-side">
          <!-- -->

          <div class="auth-img-content">
              <img src="https://demo.rajodiya.com/salesy-saas/assets/images/auth/img-auth-3.svg" alt="" class="img-fluid">
              <h3> crmتلاش </h3>
              <p class="text-white">!تلاش امروز من برای فردای بهتر خودم، تو و کشورمان</p>
          </div>

          <!-- -->
      </div>

      <div class="col-md-4 col-xl-4 img-card-side">
      </div>

      <div class="col-md-4 col-xl-4 col-sm-8">
          <div class="company-logo">
              <?php get_company_logo(); ?>
          </div>
          <div class="login mtop40 authentication-form">
              <h1><?php echo _l('admin_auth_login_heading'); ?></h1>
              <?php $this->load->view('authentication/includes/alerts'); ?>
              <?php echo form_open($this->uri->uri_string()); ?>
              <?php echo validation_errors('<div class="alert alert-danger text-center">', '</div>'); ?>
              <?php hooks()->do_action('after_admin_login_form_start'); ?>
              <div class="form-group">
                  <label for="email" class="control-label"><?php echo _l('admin_auth_login_email'); ?></label>
                  <input type="email" id="email" name="email" class="form-control" autofocus="1">
              </div>
              <div class="form-group">
                  <label for="password" class="control-label"><?php echo _l('admin_auth_login_password'); ?></label>
                  <input type="password" id="password" name="password" class="form-control"></div>
              <?php if(show_recaptcha()){ ?>
                  <div class="g-recaptcha" data-sitekey="<?php echo get_option('recaptcha_site_key'); ?>"></div>
              <?php } ?>
              <div class="checkbox">
                  <label for="remember">
                      <input type="checkbox" id="remember" name="remember"> <?php echo _l('admin_auth_login_remember_me'); ?>
                  </label>
              </div>
              <div class="form-group">
                  <button type="submit" class="btn btn-info btn-block"><?php echo _l('admin_auth_login_button'); ?></button>
              </div>
              <div class="form-group">
                  <a href="<?php echo admin_url('authentication/forgot_password'); ?>"><?php echo _l('admin_auth_login_fp'); ?></a>
              </div>

              <?php hooks()->do_action('before_admin_login_form_close'); ?>
              <?php echo form_close(); ?>
          </div>
      </div>
</div>

</div>
</body>
</html>
