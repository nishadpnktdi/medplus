
<div class="breadcrumbs ">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Hospital</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">Dashboard</a></li>
                                    <li><a href="#">Hospital</a></li>
                                    <li class="active">Add Hospitals</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="content">

          <div class="mb-4">
                <a href="<?php echo base_url();?>adminController/admin/hospital_view">
                 <button class="btn btn-success" onclick="add_doctor()"><i class="fa fa-angle-left"></i> Back</button>
                </a>
          </div>

          <div class="animated fadeIn">

            <div class="card">
                <div class="card-header">
                    <strong>Hospital</strong> <br>Add hospital
                </div>
                <div class="card-body">

                  <form action="hosp_signup" method="POST">

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

                <button class="btn my-3 btn-primary btn-lg" type="submit">Register</button>
                <button class="btn mx-2 btn-primary btn-lg" type="reset">Clear</button>
              </form>
                </div>
            </div>

          </div>
        </div>
