<html>
<script>alert ( "Invalid Password! Please try again." );</script>
	<head>
		<title>ESC Student's Rights and Welfare</title>
		
			<link href="css/bootstrap.min.css" rel="stylesheet">
			<link href="css/main.css" rel="stylesheet">
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
			<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css"/>
			<link rel="stylesheet" href="dist/css/formValidation.css"/>

			<script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>
			<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="dist/js/formValidation.js"></script>
			<script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
			
			
			<style>
				.c {
					padding:10px;
					background-color: #ffffff;
				}
				
				.container {
					padding-top:100px;
				}
				
				.main {
					height:100%;
				}
				
				table {
					color: #e9b905;
					font-size: 20px;
					font-family: 'Trebuchet MS';
				}
				
				body {
					background-image: url('images/bg.jpg');
					background-size: 100%;
					background-repeat: repeat-y;
				}
				
				.a {
					font-size:23px;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
				}
				
				.b {
					font-size:13px;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
				}
				
				.col-lg-6 {
					padding:20px;
					background-color: #1b1b1b;
					border-bottom: 20px solid #f5ce04;
				}
				
				.circle {
					margin-top: -80px;
				}

				input[type=text], input[type=password], select {
					background-color: transparent;
					border: none;
					border-top: none;
					border-left: none;
					border-right: none;					
					border-bottom: 5px #f5ce04 solid;
					border-radius:0px;
					padding: 5px;
					margin: 2px;
					width: 100%;
					color: #f5ce04;
				}
				
				input[type=text]:focus, input[type=password]:focus textarea:focus{
				  	box-shadow: none;
					border-top: none;
					border-left: none;
					border-right: none;
				 	 border-bottom: 5px #f5ce04 solid;
				}
				
				input[type=submit] {
					background-color: #f5ce04;
					border: none;
					padding-left: 10px;
					padding-right: 10px;
					padding-top: 5px;
					padding-bottom: 5px;
					margin: 2px;
					font-size:20px;
					color: #424242;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
				}
				
				button[type=submit] {
					background-color: #f5ce04;
					border: none;
					width: 100%;
					padding-left: 10px;
					padding-right: 10px;
					padding-top: 5px;
					padding-bottoms: 5px;
					margin: 2px;
					font-size:20px;
					color: #424242;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
				}
				textarea {
					background-color: #424242;
					border: none;
					padding: 5px;
					margin: 2px;
					width: 100%;
				}
				
				.e {
					padding-left:20px;
					padding-right:20px;
				}
				
				
				table, tr, td, th{
					padding:15px;
					font-size:15px;
				}
				
				th {
					background-color:  #f5ce04;
					color: #424242;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
				}
				
				table, tr, td {
					padding:5px;
				}
				
				.button {
					border-radius:0px;
					background-color: #ffffff;
					color: #424242;
					display: inline;
					padding: 10px;
					padding-left: 30px;
					padding-right: 30px;
					font-size: 20px;
					margin: 10px;
				}
				
				.h {
					color: #424242;
					font-family: 'trebuchet MS';
					text-align:center;
				}
				
				.f {
					color: #e9b905;
					font-size: 20px;
					text-align: right;
					font-family: 'Trebuchet MS';
				}
				
				
				
			</style>
	</head>
	
	
	<body>
		<div class="main">
		
			<div class="container-fluid c">
				<center><font class="a">Engineering student council</font><br/>
				<font class="b">Student's rights and welfare management system</font></center>
			</div>	
			
			
			
			<div class="container">
				<div class="col-lg-3"></div>
				
				<div class="col-lg-6">
					<div class="row e">
						<center><a href="index.html"><img src="images/logo.png" width="100px" class="circle"></a></center>
					</div>
					
					
					<div class="row e">
					<br/><br/>
						<nav class="navbar navbar-default" id="menu">
							<div class="container-fluid" style="width:100%">
								<div class="collapse navbar-collapse" id="mymenu" style="width:100%">
									<ul class="nav navbar-nav">
										<li><a href="profile.html"><b> <font style="color:black">Admin info</font></b></a></li>
										<li><a href="admincomplainsx.html?a=all"><b><font style="color:black">Complaints</font></b></a></li>
										<li><a href="adminannounce.html"><b><font style="color:black">Announcements</font></b></a></li>
										<li><a href="adminsettings.html"><b><font style="color:black">Settings</font></b></a></li>
									</ul>
								</div>
							</div>
						</nav>
						
						<br/><BR/>
						
						
						<form id="changepwForm" method="post" class="form-horizontal" action="processchangepassword.html">
		                    
							<div class="form-group">
		                        <label class="col-sm-5 control-label f">Old Password</label>
		                        <div class="col-sm-6">
		                            <input type="password" class="form-control" name="oldPassword" />
		                        </div>
		                    </div>
		                    
		                    <div class="form-group">
		                        <label class="col-sm-5 control-label f">New Password</label>
		                        <div class="col-sm-6">
		                            <input type="password" class="form-control" name="newPassword" />
		                        </div>
		                    </div>
		                    
		                    <div class="form-group">
		                        <label class="col-sm-5 control-label f">Confirm Password</label>
		                        <div class="col-sm-6">
		                            <input type="password" class="form-control" name="password" />
		                        </div>
		                        
		                    
		                    </div>
		
		                    <div class="form-group">
		                        <div class="col-sm-12"><br/><br/>
		                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
		                        </div>
		                    </div>
		                </form>
		                
		                
					</div>
				
					
					
				</div>
				
			
				
				<div class="col-lg-3"></div>
				
			</div>
		</div>	
		
		<script type="text/javascript">
			$(document).ready(function() {
			    // Generate a simple captcha
			    function randomNumber(min, max) {
			        return Math.floor(Math.random() * (max - min + 1) + min);
			    };
			    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
			    
			   
					FormValidation.Validator.password = {
		            validate: function(validator, $field, options) {
		                var value = $field.val();
		                if (value === '') {
		                    return true;
		                }
		                if (value === value.toLowerCase()) {
		                    return false;
		                }
		                if (value === value.toUpperCase()) {
		                    return false;
		                }
		                if (value.search(/[0-9]/) < 4) {
		                    return false;
		                }

		                return true;
		            }
				};
		    
			    $('#changepwForm').formValidation({
			        message: 'This value is not valid',
			        icon: {
			            valid: 'glyphicon glyphicon-ok',
			            invalid: 'glyphicon glyphicon-remove',
			            validating: 'glyphicon glyphicon-refresh'
			        },
			        fields: {
			            oldPassword: {
			                validators: {
			                    notEmpty: {
			                        message: 'This field is required'
			                    }
			                }
			            },
			            newPassword: {
			                validators: {
			                    notEmpty: {
			                        message: 'This field is required'
			                    },
			                    stringLength: {
			                    	min: 8,
			                    	max: 30,
			                    	message: 'Password must have 8-30 characters'
			                    },
			                    password: {
			                    	message: 'Password must contain 1 uppercase letter and at least 4 numbers'
			                    },
			            		different: {
			                        field: 'oldPassword',
			                        message: 'New password should not be the same with old password'
			                    }
			                }
			            },
			            password: {
			            	validators: {
			            		notEmpty: {
			            			message: 'This field is required'
			            		},
			            		identical: {
			                        field: 'newPassword',
			                        message: 'Passwords are not the same'
			                    }
			            	}
			            }
			        }
			    });
			});
		</script>		
	</body>
</html>