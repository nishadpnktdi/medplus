<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>MED+ Signup</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/signup.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-lg-7 col-xl- mx-auto">
          <div class="flex-row my-5">
            <div class="d-none d-md-flex">
              <!-- Background image for card set in CSS! -->
            </div>
              <h5 class="text-center">Register</h5>
              <form class="form-signin">
                <div class="form-row">

                </div>
                <div class="form-row">
                  <div class="col">
                    <div class="form-label-group">
                      <input type="text" id="firstName" class="form-control" placeholder="First name" required autofocus>
                    </div>
                  </div>
                  <div class="col">
                    <div class="form-label-group">
                      <input type="text" id="lastName" class="form-control" placeholder="Last name" required autofocus>
                    </div>
                  </div>
                </div>
                <div class="form-label-group">
                  <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required>
                </div>

                <div class="form-label-group">
                  <input type="email" id="inputPhone" class="form-control" placeholder="Phone number" required>
                </div>

                <hr>
                <div class="form-label-group">
                  <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                </div>

                <div class="form-label-group">
                  <input type="password" id="inputConfirmPassword" class="form-control" placeholder="Password" required>
                </div>
                <button class="btn btn-lg btn-primary btn-block text-uppercase btn-register" type="submit">Register</button>

                <hr class="my-4">
                <div class="text-center my-3">OR</div>
                <a href="index" class="d-block text-center mt-2 my-3 btn btn-lg btn-google btn-block text-uppercase" href="#">Sign In</a>
              </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
