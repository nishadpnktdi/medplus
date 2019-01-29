
<div class="breadcrumbs  mb-4">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Add Hospital</h1>
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

 <!-- add hospital -->
          <div class="mb-md-4  ml-md-3   col-lg-8" >
          <!-- <div class="mb-md-3  ml-md-3   col-lg-8" > -->
                <a href="<?php echo base_url();?>admin/admin/hospital_view">
                  <button class="btn btn-success" onclick="add_hospital()">
                    <i class="fas fa-angle-left"></i> Back
                  </button>
                </a>
            </div>

<!-- form -->
<div class="col-lg-8 ml-md-3  ">
    <div class="card">
        <div class="card-header">
            <strong>Hospital</strong> <br>Add hospital
        </div>
        <div class="card-body card-block">
            <form action="<?php echo base_url();?>admin/admin/add_hospital" method="POST" enctype="multipart/form-data" class="form-horizontal">

                <div class="row form-group">
                    <div class="col col-md-4">
                        <label for="text-input" class="form-control-label">Hospital Name</label>
                    </div>
                    <div class="col-12 col-md-8">
                      <input type="text" id="text-input" name="hospital-name-input" placeholder="Enter Hospital name" class="form-control">
                </div>
            </div>

            <div class="row form-group">
                <div class="col col-md-4">
                  <label for="email-input" class=" form-control-label">Email</label>
            </div>
            <div class="col-8 col-md-">
              <input type="email" id="email-input" name="email-input" placeholder="Enter Email" class="form-control">
        </div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4">
          <label for="password-input" class=" form-control-label">Phone</label>
        </div>
        <div class="col-12 col-md-8">
          <input type="number" id="phone-input" name="phone-input" placeholder="Phone Number" class="form-control"></div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4">
          <label for="password-input" class=" form-control-label">Enter Password</label>
        </div>
        <div class="col-12 col-md-8">
          <input type="password" id="password-input" name="password-input" placeholder="Enter Password" class="form-control">
          <small class="help-block form-text">Please enter a complex password</small>
        </div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4">
          <label for="confirm-password-input" class=" form-control-label">Confirm Password</label>
        </div>
        <div class="col-12 col-md-8">
          <input type="password" id="confirm-password-input" name="confirm-password-input" placeholder="Confirm Password" class="form-control">
          <small class="help-block form-text">Please re-type password</small>
        </div>
    </div>

     <div class="row form-group">
        <div class="col col-md-4">
          <label for="address-input" class=" form-control-label">Address</label>
        </div>
        <div class="col-12 col-md-8">
          <input type="text" id="address-input1" name="address-input" placeholder="Address Line 1" class="form-control">
        </div>
    </div>
    <div class="row form-group">
        <div class="col col-md-4">
        </div>
        <div class="col-12 col-md-8">
          <input type="text" id="address-input2" name="address-input" placeholder="Address Line 2" class="form-control">
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-4 ml-md-12">
            <label for="selCountry">Country</label>
            <select id="selCountry" class="form-control" name="selCountry">
                <option selected>Select Country</option>
                <?php
           foreach($countries as $country){
             echo "<option value='".$country['country_id']."'>".$country['country_name']."</option>";
           }
           ?>
            </select>
        </div>

        <div class="form-group col-md-4 ml-md-4">
                <label for="selState">State</label>
                <select id="selState" class="form-control" name="selState">
                    <option selected>Select State</option>

                </select>
            </div>


    </div>

    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputCity">City</label>
              <select id="selCity" class="form-control" name="selCity">
                  <option selected>Select city</option>

              </select>
        </div>
         <div class="form-group col-md-4 ml-md-4">
            <label for="selCity">Pin Code</label>
            <div class=" ">
              <input type="text" id="pincode-input" name="pincode-input" placeholder="Pin Code" class="form-control">
            </div>
        </div>
    </div>

        <div class="form-row float-right mr-md-5 my-3" >
            <div class="form-actions form-group  " >
                <button type="submit" class="btn btn-primary btn-md" >Add</button>
                <button type="reset" class="btn btn-primary btn-md" >Clear</button>
            </div>
        </div>
    </div>
</div>
</div>

<script type='text/javascript'>
  // baseURL variable
  var baseURL = "<?php echo base_url();?>";

  $(document).ready(function(){

   // Department change
   $('#selCountry').change(function(){
     var countryId = $(this).val();

     // AJAX request
     $.ajax({
       url:'<?php echo base_url(); ?>admin/admin/getStateList',
       method: 'post',
       data: {countryId: countryId},
       dataType: 'json',
       success: function(response){

         // Remove options
         $('#selState').find('option').not(':first').remove();

         // Add options
         $.each(response,function(index,data){
           $('#selState').append('<option value="'+data['state_id']+'">'+data['state_name']+'</option>');
         });
       }
    });
  });


  $('#selState').change(function(){
    var stateId = $(this).val();

    // AJAX request
    $.ajax({
      url:'<?php echo base_url();?>admin/admin/getCityList',
      method: 'post',
      data: {stateId: stateId},
      dataType: 'json',
      success: function(response){

        // Remove options
        $('#selCity').find('option').not(':first').remove();

        // Add options
        $.each(response,function(index,data){
          $('#selCity').append('<option value="'+data['city_id']+'">'+data['city_name']+'</option>');
        });
      }
   });
 });

 });
 </script>
