<div class="breadcrumbs">
    <div class="breadcrumbs-inner">
        <div class="row m-0">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Doctor</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Doctor</a></li>
                            <li class="active">Add Doctors</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content">

  <div class="mb-4">
        <a href="<?php echo base_url();?>adminController/admin/doctor_view">
         <button class="btn btn-success" onclick="add_doctor()"><i class="fa fa-angle-left"></i> Back</button>
        </a>
  </div>

  <div class="animated fadeIn">

    <div class="card">
        <div class="card-header">
            <strong>Doctor</strong> <br>Add doctor
        </div>
        <div class="card-body">

          <form action="" method="POST" class="form-horizontal">

        <div class="form-row">
          <div class="form-group col-md-4">
            <label for="inputFirstName">First Name</label>
            <input type="text" class="form-control" id="inputFirstName" name="firstName" placeholder="First Name" required>
          </div>
          <div class="form-group col-md-4">
            <label for="inputLastName">Last Name</label>
            <input type="text" class="form-control" id="inputLastName" name="lastName" placeholder="Last Name" required>
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
            <div class="form-group col-md-8">
                <label for="inputDob">Date of Birth</label>
              <input type="date" class="form-control" id="inputDob" name="inputDob" placeholder="" required>
            </div>
          </div>

          <fieldset class="form-group">
          <div class="row">
            <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
            <div class="col-sm-10">
              <div class="form-check">
                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                <label class="form-check-label" for="gridRadios1">
                  Male
                </label>
              </div>
              <div class="form-check my-3">
                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                <label class="form-check-label" for="gridRadios2">
                  Female
                </label>
              </div>
            </div>
          </div>
        </fieldset>

        <div class="form-row">
          <div class="form-group col-md-4">
            <label for="inputAddress">Address Line 1</label>
            <input type="text" class="form-control" id="inputAddress" name="inputAddress" placeholder="Address Line 1" required>
          </div>
          <div class="form-group col-md-4">
            <label for="inputAddress">Address Line 2</label>
            <input type="text" class="form-control" id="inputAddress2" name="inputAddress2" placeholder="Address Line 2">
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

        <div class="form-row">
          <div class="form-group col-md-8">
            <label for="inputSpecialization">Specialization</label>
            <input type="text" class="form-control" id="inputSpecialization" name="inputSpecialization" placeholder="Specialization" required>
          </div>
        </div>

        <div class="form-row">
        <div class="form-group col-md-4">
          <label for="inputExperienceYear">Experience</label>
          <input type="number" class="form-control" id="inputExperienceYear" name="inputExperienceYear" placeholder="Years" required>
          <span class="help-block">As of today</span>
        </div>
        <div class="form-group col-md-4">
          <label for="inputExperienceMonth">Experience</label>
          <input type="number" class="form-control" id="inputExperienceMonth" name="inputExperienceMonth" placeholder="Months" required>
        </div>
      </div>

      <div class="fom-row">
        <div class="form-group col-md-4 mb-3">
            <label for="inputConsultationFee">Consultaion Fee</label>
            <div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text">&#8377;</span>
        </div>
        <input type="text" class="form-control" id="inputConsultationFee" name="inputConsultationFee" aria-label="Fee per session" required>
        <div class="input-group-append">
          <span class="input-group-text">Per Session</span>
        </div>
      </div>
          </div>
        </div>

        <button class="btn my-3 btn-primary btn-lg" type="submit">Register</button>
        <button class="btn mx-2 btn-primary btn-lg" type="reset">Clear</button>
      </form>
        </div>
    </div>
</div>
</div>
