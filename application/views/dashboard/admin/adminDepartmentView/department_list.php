        <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Department</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">Dashboard</a></li>
                                    <li><a href="#">Department</a></li>
                                    <li class="active">View Departments</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="content">
        	<div class="mb-4">
                <a href="<?php echo base_url();?>adminController/admin/add_appointment">
                	<button class="btn btn-success" onclick="add_hospital()"><i class="fa fa-plus"></i> Add Department</button>
                </a>
        	</div>
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Department List</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                        	<th><input type="checkbox" id="checkall" /></th>
                                        	<th>SI No.</th>
                                          <th>Department</th>
                                          <th>Hospitals</th>
                                          <th>Doctors</th>
                                          <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
                                    	$i=1;
                                    	foreach($departments as $department)
                                    	{
                                        echo"<tr>";
                                        echo"<td><input type='checkbox' class='checkthis' /></td>";
                                        echo"<td>".$i."</td>";
                                        echo"<td>".$department['specialization_id']."</td>";
                                        echo"<td>John Doe</td>";
                                        echo"<td>".$department['specialization_name']."</td>";
                                        echo"<td>";
                                        echo"<a href=".base_url()."admin/admin/update_department>
                                            <button class='btn btn-warning'><i class='fa fa-pencil-alt'></i>
                                            </button></a>";
                                        echo"<a href=".base_url()."admin/admin/delete_department>
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
