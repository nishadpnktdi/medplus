<!DOCTYPE html>
<html>
    <head>

      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/signup.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <title>Signup - MedPlus</title>
    </head>
    <body>

            <div class="container col-8 h-100">
              <div class="text-center my-5">
                  <img src="<?php echo base_url(); ?>assets/img/logo.png"/ width="200">
              </div>
              <h3 class="text-center my-4">Choose a account type</h3>
              <div class="row h-100 justify-content-center align-items-center">
                <div class="col col-3">
              <a href="<?php echo base_url(); ?>user/signup_page_doctor">
            <div class="card bg-light">
              <div class="card-body">
                <div class="card-img-top text-center">
                  <i class="fa fa-user-md h1 text-dark"></i>
                <h5 class="card-title text-dark my-2 text-decoration-none">Doctor</h5>
              </div>
            </div>
          </div>
        </a>
        </div>

          <div class="col col-3">
              <a href="<?php echo base_url(); ?>user/signup_page_hospital" class="card_admin">
            <div class="card bg-light">
              <div class="card-body">
                <div class="card-img-top text-center">
                  <i class="fa fa-hospital h1 text-dark"></i>
                <h5 class="card-title text-dark my-2">Hospital/Clinic</h5>
              </div>
            </div>
          </div>
        </a>
        </div>
          </div>
          <div class="text-center my-5 h5"><a href="<?php echo base_url();?>user">Back</div>

          </div>
        </div>
    </body>
</html>
