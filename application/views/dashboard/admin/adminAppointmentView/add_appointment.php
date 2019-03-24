<div class="breadcrumbs">
    <div class="breadcrumbs-inner">
        <div class="row m-0">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Appointment</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Appointment</a></li>
                            <li class="active">New Appointment</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content">

  <div class="mb-4">
        <a href="<?php echo base_url();?>adminController/admin/appointment_view">
         <button class="btn btn-success" onclick="add_doctor()"><i class="fa fa-angle-left"></i> Back</button>
        </a>
  </div>

  <div class="animated fadeIn">

    <div class="card">
        <div class="card-header">
            <strong>Appointment</strong> <br>New Appointment
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
            <label for="inputPatientID">Patient ID</label>
            <input type="text" class="form-control" id="inputPatientID" name="patientID" placeholder="Patient MedPlus ID">
          </div>
        </div>

        <div class="form-row">
        <div class="form-group col-md-8">
          <label for="inputHsopital">Hospital Name</label>
          <select id="inputHsopital" name="inputHsopital" class="form-control" required>
            <option selected>Select Hospital</option>
            <option>...</option>
          </select>
        </div>
      </div>

        <div class="form-row">
        <div class="form-group col-md-4">
          <label for="inputDepartment">Department</label>
          <select id="inputDepartment" name="inputDepartment" class="form-control" required>
            <option selected>Choose Department</option>
            <option>...</option>
          </select>
        </div>

      <div class="form-group col-md-4">
        <label for="inputDoctor">Doctor</label>
        <select id="inputDoctor" name="inputDoctor" class="form-control" required>
          <option selected>Select Doctor</option>
          <option>...</option>
        </select>
      </div>
    </div>

    <div class="form-row">
      <div class="form-group col-md-4">
          <label for="inputDate">Date</label>
        <input type="date" class="form-control" id="inputDate" name="inputDate" placeholder="" required>
      </div>

      <div class="form-group col-md-4">
          <label for="inputTime">Time</label>
        <input type="time" class="form-control" id="inputTime" name="inputTime" placeholder="" required>
      </div>
    </div>

        <button class="btn my-3 btn-primary btn-lg" type="submit">Register</button>
        <button class="btn mx-2 btn-primary btn-lg" type="reset">Clear</button>
      </form>
        </div>
    </div>
</div>
</div>
