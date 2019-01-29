<!-- Content -->
<div class="content">
    <!-- Animated -->
    <div class="animated fadeIn">
        <!-- Widgets  -->
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-1">
                                <i class="far fa-hospital"></i>
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
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-2">
                                <i class="fas fa-user-md"></i>
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
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-3">
                                <i class="fas fa-users"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text"><span class="count"><?Php echo $PCount; ?></span></div>
                                    <div class="stat-heading">Patients</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-4">
                                <i class="far fa-calendar-check"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text"><span class="count"><?Php echo $ACount; ?></span></div>
                                    <div class="stat-heading">Appointments</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Widgets -->
        <div class="clearfix"></div>
        <!-- Orders -->
        <div class="orders">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="box-title">Recent Appointments </h4>
                        </div>
                        <div class="card-body--">
                            <div class="table-stats order-table ov-h">
                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="serial">ID</th>
                                            <th class="avatar">Account ID</th>
                                            <th>Doctor ID</th>
                                            <th>Start Time</th>
                                            <th>End Time</th>
                                            <th>Channel ID</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                            <?php
                                            
                                            foreach($lastApp as $LApp){
                                                echo"<tr>";
                                              echo "<td>".$LApp['id']."</td>";
                                              echo "<td>".$LApp['account_id']."</td>";
                                              echo "<td> <span class='doctorName'>".$LApp['doctor_id']."</span> </td>";
                                              echo "<td> <span class='startTime'>".$LApp['start_time']."</span> </td>";
                                              echo "<td><span class='endTime'>".$LApp['end_time']."</span></td>";
                                              echo "<td><span class='channel'>".$LApp['channel_id']."</span></td>";
                                              echo "<td><span class='status'>".$LApp['status_id']."</span></td>";
                                              echo" </tr>";
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
                                                                <div class="clearfix"></div>
                                                                <!-- Footer -->

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Recently Added Doctors</strong>
                        </div>
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Sl.No</th>
                                        <th scope="col">Doctor</th>
                                        <th scope="col">Speciality</th>
                                        <th scope="col">Fee</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Sanoob</td>
                                        <td>MBBBS,MD</td>
                                        <td>250</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Nishad</td>
                                        <td>Gynacology</td>
                                        <td>150</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Fuad</td>
                                        <td>Dental</td>
                                        <td>200</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
