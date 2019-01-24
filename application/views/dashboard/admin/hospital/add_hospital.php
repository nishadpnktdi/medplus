<div class="col-lg-6 " id="hospital_add">
    <div class="card">
        <div class="card-header">
            <strong>Hospital</strong> <br>Add a hospital
        </div>
        <div class="card-body card-block">
            <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal">

                <div class="row form-group">
                    <div class="col col-md-4">
                        <label for="text-input" class=" form-control-label">Hospital Name</label>
                    </div>
                    <div class="col-12 col-md-8"><input type="text" id="text-input" name="text-input" placeholder="Enter your Hospital name" class="form-control">
                </div>
            </div>

            <div class="row form-group">
                <div class="col col-md-4"><label for="email-input" class=" form-control-label">Email</label>
            </div>
            <div class="col-8 col-md-"><input type="email" id="email-input" name="email-input" placeholder="Enter Email" class="form-control">
        </div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4"><label for="password-input" class=" form-control-label">Phone</label></div>
        <div class="col-12 col-md-8"><input type="password" id="password-input" name="retype-password" placeholder="Phone Number" class="form-control"></div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4"><label for="password-input" class=" form-control-label">Enter Password</label></div>
        <div class="col-12 col-md-8"><input type="password" id="password-input" name="password-input" placeholder="Enter Password" class="form-control"><small class="help-block form-text">Please enter a complex password</small></div>
    </div>

    <div class="row form-group">
        <div class="col col-md-4"><label for="password-input" class=" form-control-label">Confirm Password</label></div>
        <div class="col-12 col-md-8"><input type="password" id="password-input" name="retype-password" placeholder="Confirm Password" class="form-control"><small class="help-block form-text">Please re-type password</small></div>
    </div>
    
    <div class="row">
        <div class="col">
            <div class="row form-group">
                <div class="col col-md-3"><label for="password-input" class=" form-control-label">Address
                </div>
            </div>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputState">City</label>
            <select id="inputState" class="form-control">
                <option selected>Select City</option>
                <option>...</option>
            </select>                                        
        </div>

            <div class="form-group col-md-4">
                <label for="inputState">State</label>
                <select id="inputState" class="form-control">
                    <option selected>Select State</option>
                    <option>...</option>
                </select>
            </div>

            <div class="form-group col-md-4">
                <label for="inputState">Pin</label>
                    <input type="text" name="pin" placeholder="Pin" class="form-control">
            </div>

            <div class="form-actions form-group col-md-4">
                <button type="submit" class="btn btn-primary btn-md">Submit</button>
                <button type="reset" class="btn btn-primary btn-md">Clear</button>
            </div>
            
            
        </div>
    </div>
</div>