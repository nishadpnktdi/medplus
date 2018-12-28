<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>MED+ - Login</title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<h1 class="page-header text-center">MED+</h1>
	<div class="row">
		<div class="col-sm-4 col-sm-offset-4">
			<div class="login-panel panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title"><span class="glyphicon glyphicon-lock"></span> Login</h3>
				</div>

				<div class="panel-body">
					<form method="POST" action="<?php echo base_url(); ?>user/login"></form>
					<fieldset>
						<div class="form-group">
							<input class="form-control" placeholder="Email" type="email" name="email" required>
						</div>
						<div class="form-group">
		                    	<input class="form-control" placeholder="Password" type="password" name="password" required>
		                	</div>
		                	<button type="submit" class="btn btn-lg btn-primary btn-block"><span class="glyphicon glyphicon-log-in"></span> Login</button>
					</fieldset>
				</form>
				</div>
			</div>
			<?php
				if($this->session->flashdata('error')){
					?>
					<div class="alert alert-danger text-center" style="margin-top:20px;">
						<?php echo $this->session->flashdata('error'); ?>
					</div>
					<?php
				}
			?>
		</div>
	</div>
</div>
</body>
</html>