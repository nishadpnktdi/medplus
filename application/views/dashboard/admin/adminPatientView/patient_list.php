        <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Patient</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">Dashboard</a></li>
                                    <li><a href="#">Patient</a></li>
                                    <li class="active">View Patients</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="content">
        	<div class="mb-4">
                <a href="<?php echo base_url();?>admin/admin/add_patient">
                	<button class="btn btn-success" onclick="add_hospital()"><i class="fa fa-plus"></i> Add Patient</button>
                </a>
        	</div>
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Patient List</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                        	<th><input type="checkbox" id="checkall" /></th>
                                        	<th>SI No.</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Gender</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
                                    	$i=1;
                                    	foreach($patients as $patient)
                                    	{
                                        echo"<tr>";
                                        echo"<td><input type='checkbox' class='checkthis' /></td>";
                                        echo"<td>".$i."</td>";
                                        echo"<td>".$patient['first_name']."</td>";
                                        echo"<td>".$patient['last_name']."</td>";
                                        echo"<td>".$patient['gender']."</td>";
                                        echo"<td>".$patient['email']."</td>";
                                        echo"<td>".$patient['phone']."</td>";
                                        echo"<td>";
                                        echo"<a href=".base_url()."admin/admin/update_doctor>
                                            <button class='btn btn-warning'><i class='fa fa-pencil-alt'></i>
                                            </button></a>";
                                        echo"<a href=".base_url()."admin/admin/delete_hospital>
                                            <button class='btn btn-danger' ><i class='fa fa-trash'></i>
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
