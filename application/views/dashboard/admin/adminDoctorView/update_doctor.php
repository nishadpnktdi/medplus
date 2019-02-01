<div class="col-lg-6 " id="hospital_add">
    <div class="card">
        <div class="card-header">
            <strong>Doctor</strong> <br>Update doctor
        </div>
        <div class="card-body card-block">
            <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal">

                <div class="row form-group">
                    <div class="col col-md-4">
                        <label for="text-input" class=" form-control-label">Doctor Name</label>
                    </div>
                    <div class="col-12 col-md-8"><input type="text" id="text-input" name="text-input" placeholder="Enter Doctor Name" class="form-control">
                </div>
            </div>

            <div class="row form-group">
                <div class="col col-md-4"><label for="email-input" class=" form-control-label">Email</label>
            </div>
            <div class="col-8 col-md-"><input type="email" id="email-input" name="email-input" placeholder="Enter Email" class="form-control">
        </div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4"><label for="phone" class=" form-control-label">Phone</label></div>
        <div class="col-12 col-md-8"><input type="number" name="phone" placeholder="Phone Number" class="form-control"></div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4"><label for="password-input" class=" form-control-label">Enter Password</label></div>
        <div class="col-12 col-md-8"><input type="password" id="password-input" name="password-input" placeholder="Enter Password" class="form-control"><small class="help-block form-text">Please enter a complex password</small></div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4"><label for="retype-password" class="form-control-label">Confirm Password</label></div>
        <div class="col-12 col-md-8"><input type="password" name="retype-password" placeholder="Confirm Password" class="form-control"><small class="help-block form-text">Please re-type password</small></div>
    </div>
    
    <div class="row">
        <div class="col">
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="password-input" name="address" class=" form-control-label">Address
                </div>
            </div>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="city">City</label>
            <select id="inputState" class="form-control" name="city">
                <option selected>Select City</option>
                <option>...</option>
            </select>                                        
        </div>

            <div class="form-group col-md-4">
                <label for="inputState">State</label>
                <select id="inputState" class="form-control" name="state">
                    <option selected>Select State</option>
                    <option>...</option>
                </select>
            </div>

            <div class="form-group col-md-4">
                <label for="inputState">Pin</label>
                    <input type="text" name="pin" placeholder="Pin" class="form-control">
            </div>

            <div class="form-actions form-group col-md-4">
                <button type="submit" class="btn btn-primary btn-md">Update</button>
                <button type="reset" class="btn btn-primary btn-md">Clear</button>
            </div>
            
            </form>
        </div>
    </div>
</div>
</div>