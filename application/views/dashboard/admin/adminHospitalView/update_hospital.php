<div class="col-lg-8">
    <div class="card">
        <div class="card-header">
            <strong>Hospital</strong> <br>Update Hospital
        </div>
        <div class="card-body card-block">
            <form action="<?php echo base_url();?>admin/admin/add_hospital" method="POST" enctype="multipart/form-data" class="form-horizontal">

                <div class="row form-group">
                    <div class="col col-md-4">
                        <label for="text-input" class=" form-control-label">Hospital Name</label>
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
          <label for="password-input" class=" form-control-label">Confirm Password</label>
        </div>
        <div class="col-12 col-md-8">
          <input type="password" id="password-input" name="confirm-password-input" placeholder="Confirm Password" class="form-control">
          <small class="help-block form-text">Please re-type password</small>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <div class="row form-group">
                <div class="col col-md-8">
                  <label for="address-input" class="form-control-label">Address</label>
                  <input type="text" name="address-input-line1" class="form-control" placeholder="Address Line 1">
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <div class="row form-group">
                <div class="col col-md-8">
                  <label for="address-input" class="form-control-label"></label>
                  <input type="text" name="address-input-line1" class="form-control" placeholder="Address Line 2">
                </div>
            </div>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputCountry">Country</label>
            <select id="inputCountry" class="form-control" name="selCountry">
                <option value="1">Select Country</option>
                <?php
           foreach($countries as $country){
             echo "<option value='".$country['country_id']."'>".$country['country_name']."</option>";
           }
           ?>
            </select>
        </div>

            <div class="form-group col-md-4">
                <label for="inputState">State</label>
                <select id="inputState" class="form-control" name="selState">
                    <option selected>Select State</option>
                    <?php
               foreach($states as $state){
                 echo "<option value='".$state['state_id']."'>".$state['state_name']."</option>";
               }
               ?>
                </select>
            </div>

            <div class="form-group col-md-4">
                <label for="inputCity">City</label>
                    <select id="inputCity" class="form-control" name="selCity">
                      <option selected>Select city</option>
                      <?php
                 foreach($cities as $city){
                   echo "<option value='".$city['city_id']."'>".$city['city_name']."</option>";
                 }
                 ?>
                      </select>
            </div>

            <div class="form-actions form-group col-md-4">
                <button type="submit" class="btn btn-primary btn-md">Update</button>
                <button type="reset" class="btn btn-primary btn-md">Clear</button>
            </div>


        </div>
    </div>
</div>
</div>

<script type='text/javascript'>
  // baseURL variable
  var baseURL= "<?php echo base_url();?>";

  $(document).ready(function(){

    // City change
    $('#selCountry').change(function(){
      var country = $(this).val();

      // AJAX request
      $.ajax({
        url:'<?php echo base_url('admin/adminModel/countryList')?>',
        method: 'post',
        data: {country: country},
        dataType: 'json',
        success: function(response){

          // Remove options
          $('#selCountry').find('option').not(':first').remove();
          $('#selState').find('option').not(':first').remove();
          $('#selCity').find('option').not(':first').remove();

          // Add options
          $.each(response,function(index,data)
          {
             $('#selCountry').append('<option value="'+data['country_id']+'">'+data['country_name']+'</option>');
          });
        }
     });
   });

   // Department change
   $('#selCountry').change(function(){
     var state = $(this).val();

     // AJAX request
     $.ajax({
       url:'<?php echo base_url('admin/adminModel/stateList');?>',
       method: 'post',
       data: {department: department},
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
    var state = $(this).val();

    // AJAX request
    $.ajax({
      url:'<?php echo base_url('admin/adminModel/cityList')?>',
      method: 'post',
      data: {department: department},
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
