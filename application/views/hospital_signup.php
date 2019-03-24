<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/signup.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <title>Signup Hospital- MedPlus</title>
</head>
<body>
  <div class="container">

    <div class="text-center my-5">
        <img src="<?php echo base_url(); ?>assets/img/logo.png"/ width="200">
    </div>

<div class="container">
    <form action="#" method="POST">

  <div class="form-row">
    <div class="form-group col-md-8">
      <label for="inputHospitalName">Hospital Name</label>
      <input type="text" class="form-control" id="inputHospitalName" name="inputHospitalName" placeholder="Hospital Name" required>
    </div>
  </div>

  <div class="form-row">
    <div class="form-group col-md-8">
      <label for="inputEmail">Email</label>
      <input type="email" class="form-control" id="inputEmail" name="inputEmail" placeholder="Email" required>
    </div>
  </div>

  <div class="form-row">
    <div class="form-group col-md-8">
      <label for="inputPassword">Password</label>
      <input type="password" class="form-control" id="inputPassword" placeholder="Password" required>
    </div>
  </div>

    <div class="form-row">
      <div class="form-group col-md-8">
        <label for="inputPhone">Phone</label>
        <input type="text" class="form-control" id="inputPhone" name="inputPhone" placeholder="Phone" required>
      </div>
    </div>

  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputAddress">Address Line 1</label>
      <input type="text" class="form-control" id="inputAddress" name="inputAddress" placeholder="Address Line 1" required>
    </div>
    <div class="form-group col-md-4">
      <label for="inputAddress">Address Line 2</label>
      <input type="text" class="form-control" id="inputAddress2" name="inputAddress2" placeholder="Address Line 2" required>
    </div>
  </div>

  <div class="form-row">
    <div class="form-group col-md-3">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" name="inputCity" required>
    </div>
    <div class="form-group col-md-3">
      <label for="inputState">State</label>
      <select id="inputState" name="inputState" class="form-control" required>
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip" name="inputZip" required>
    </div>
  </div>

  <button class="btn btn-danger my-3 btn-lg" type="submit">Register</button>
  <button class="btn btn-danger mx-2 btn-lg" type="reset">Clear</button>
  <a href="<?php echo base_url();?>user"><div class="btn btn-danger btn-lg">Cancel</div></a>
</form>
</div>
  </div>
</body>
</html>
