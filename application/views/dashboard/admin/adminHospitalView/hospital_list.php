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
                                    <li class="active">View Hospitals</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="content">
        	<div class="mb-4">
                <a href="<?php echo base_url();?>adminController/admin/add_hospital">
            	   <button class="btn btn-success" onclick="add_hospital()"><i class="fa fa-plus"></i> Add Hospital</button>
                </a>
        	</div>
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Hospital List</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                        	<th><input type="checkbox" id="checkall" /></th>
                                        	<th>SI No.</th>
                                            <th>Name</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                            <th>State</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
                                    	$i=1;
                                    	foreach($hospitals as $hospital)
                                    	{
                                        echo"<tr>";
                                        echo"<td><input type='checkbox' class='checkthis' /></td>";
                                        echo"<td>".$i."</td>";
                                        echo"<td>".$hospital['hospital_name']."</td>";
                                        echo"<td>".$hospital['hospital_address']."</td>";
                                        echo"<td>".$hospital['phone']."</td>";
                                        echo"<td>".$hospital['email']."</td>";
                                        echo"<td>".$hospital['state_id']."</td>";
                                        echo"<td>";
                                        echo"<a href=".base_url()."adminController/admin/update_hospital>
                                            <button class='btn btn-warning'><i class='fas fa-pencil-alt'></i>
                                            </button></a>";
                                        echo"<a href=".base_url()."adminController/admin/delete_hospital>
                                            <button class='btn btn-danger'><i class='fas fa-trash'></i>
                                            </button></a></td>";
										                    echo"</tr>";
                                       $i++;
                                   }
                                   ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->
