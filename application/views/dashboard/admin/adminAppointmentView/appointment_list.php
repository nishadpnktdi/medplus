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
                                    <li class="active">View Appointments</li>
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
                	<button class="btn btn-success" onclick="add_hospital()"><i class="fa fa-plus"></i> New Appointment</button>
                </a>
        	</div>
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Appointment List</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                        	<th><input type="checkbox" id="checkall" /></th>
                                        	<th>SI No.</th>
                                          <th>Patient ID</th>
                                          <th>Name</th>
                                          <th>Doctor ID</th>
                                          <th>Start time</th>
                                          <th>End time</th>
                                          <th>Status</th>
                                          <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
                                    	$i=1;
                                    	foreach($appointments as $appointment)
                                    	{
                                        echo"<tr>";
                                        echo"<td><input type='checkbox' class='checkthis' /></td>";
                                        echo"<td>".$i."</td>";
                                        echo"<td>".$appointment['account_id']."</td>";
                                        echo"<td>John Doe</td>";
                                        echo"<td>".$appointment['doctor_id']."</td>";
                                        echo"<td>".$appointment['start_time']."</td>";
                                        echo"<td>".$appointment['end_time']."</td>";
                                        echo"<td>".$appointment['status_id']."</td>";
                                        echo"<td>";
                                        echo"<a href=".base_url()."admin/admin/update_appointment>
                                            <button class='btn btn-warning'><i class='fa fa-pencil-alt'></i>
                                            </button></a>";
                                        echo"<a href=".base_url()."admin/admin/delete_appointment>
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
