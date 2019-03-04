        <!-- Content -->
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">
                <!-- Widgets  -->
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <a href="<?php echo base_url();?>adminController/admin/hospital_view">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-1">
                                        <i class="fa fa-hospital"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><span class="count"><?Php echo $HCount; ?></span></div>
                                            <div class="stat-heading">Hospitals</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <a href="<?php echo base_url();?>adminController/admin/doctor_view">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-2">
                                        <i class="fa fa-user-md"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><span class="count"><?Php echo $DCount; ?></span></div>
                                            <div class="stat-heading">Doctor</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <a href="<?php echo base_url();?>adminController/admin/patient_view">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-3">
                                        <i class="fa fa-users"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><span class="count"><?Php echo $PCount;?></span></div>
                                            <div class="stat-heading">Patients</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <a href="<?php echo base_url();?>adminController/admin/appointment_view">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-4">
                                        <i class="pe-7s-users"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><span class="count"></span><?php echo $ACount; ?></span></div>
                                            <div class="stat-heading">Appointments</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                </div>
                <!-- /Widgets -->

                <div class="clearfix"></div>

                <!-- Orders -->
                <div class="orders">
                    <div class="row">
                        <div class="col-xl-8">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="box-title">Recent Appointments</h4>
                                </div>
                                <div class="card-body--">
                                    <div class="table-stats order-table ov-h">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="serial">#</th>
                                                    <th class="avatar">Avatar</th>
                                                    <th>Name</th>
                                                    <th>ID</th>
                                                    <th>Doctor</th>
                                                    <th>Start Time</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            <?php

                                            $i=1;
                                            foreach($lastApp as $LApp){
                                              echo"<tr>";
                                              echo "<td>".$i."</td>";
                                              echo "<td>".$LApp['id']."</td>";
                                              echo "<td>Name</td>";
                                              echo "<td>".$LApp['account_id']."</td>";
                                              echo "<td> <span class='doctorName'>".$LApp['doctor_id']."</span> </td>";
                                              echo "<td> <span class='startTime'>".$LApp['start_time']."</span> </td>";
                                              echo "<td><span class='status'>".$LApp['status_id']."</span></td>";
                                              echo" </tr>";
                                              $i++;
                                        }

                                            ?>

                                            </tbody>
                                        </table>
                                    </div> <!-- /.table-stats -->
                                </div>
                            </div> <!-- /.card -->
                        </div>  <!-- /.col-lg-8 -->

                    </div>

                </div>
                <!-- /.orders -->

            </div>
            <!-- .animated -->
        </div>
        <!-- /.content -->
