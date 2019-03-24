<!DOCTYPE html>
<html>
    <head>
        <title>Forgot Password - MedPlus</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/login.css">
        <!------ Include the above in your HEAD tag ---------->
    </head>
    <body>
        <div class="simple-login-container">
            <div class="text-center">
                <img src="<?php echo base_url(); ?>assets/img/logo.png"/ width="200">
            </div>
            <form action="<?php echo base_url(); ?>user/forgotPasswordSecretValidation" method="POST">
                <div class="text-center my-2 text-danger"><?php echo $this->session->flashdata('msg');?></div>
                <div class="row">
                    <div class="col-md-12 form-group">
                        <input type="text" name="secretKey" class="form-control" placeholder="Secret Key" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 form-group">
                        <input type="password" name="password" class="form-control" placeholder="New password" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 form-group">
                        <input type="password" name="passwordRetype" class="form-control" placeholder="Retype password" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 form-group">
                        <input type="submit" class="btn btn-block btn-login" placeholder="Reset password" value="Reset password">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <a href="<?php echo base_url(); ?>user">Login</a>
                    </div>
                    <div class="col d-flex flex-row-reverse">
                        <a href="<?php echo base_url(); ?>user/signup_page">Create an account</a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
