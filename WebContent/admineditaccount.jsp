<html>
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
						
						
						<form id="editAccForm" method="post" class="form-horizontal" action="adminedit.html">
		                    
							
		                 
		                    
		                    <div class="form-group">
		                        <label class="col-sm-3 control-label f">Name</label>
		                        <div class="col-sm-4" style="margin-left:-5px;">
	                            <input type="text" name="lastName" value="${member.lastName}" placeholder="Last Name"></td>
		                        </div>
								<div class="col-sm-4" style="margin-left:10px;">
									<input type="text" name="firstName" value="${member.firstName}" placeholder="First Name">
								</div>
			                </div>
		                    
		                    <div class="form-group">
		                        <label class="col-sm-3 control-label f">Email</label>
		                        <div class="col-sm-9" style="width:71%; margin-left:-10px;">
		                            <input type="text" class="form-control" name="email" value="${member.email}" />
		                        </div>
		                    </div>
		                    
		                    <div class="form-group">
		                        <label class="col-sm-3 control-label f">Position</label>
		                        <div class="col-sm-9" style="width:71%; margin-left:-10px;">
		                            <input type="text" class="form-control" name="position" value="${member.position}" />
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
			    
			    $('#editAccForm').formValidation({
			    	message: 'This value is not valid',
			        icon: {
			            valid: 'glyphicon glyphicon-ok',
			            invalid: 'glyphicon glyphicon-remove',
			            validating: 'glyphicon glyphicon-refresh'
			        },
			        fields: {
			        	lastName: {
			                validators: {
			                    notEmpty: {
			                        message: 'This field is required'
			                    },
			                  regexp: {
			                        regexp: /^[a-zA-Z' ']+$/,
			                        message: 'The last name can only consist of letters'
			                    }
			                }
			            },
			            firstName: {
			                validators: {
			                    notEmpty: {
			                        message: 'This field is required'
			                    },
			                  regexp: {
			                        regexp: /^[a-zA-Z' ']+$/,
			                        message: 'The first name can only consist of letters'
			                    }
			                }
			            },
			            email: {
			                validators: {
			                    notEmpty: {
			                        message: 'This field is required'
			                    },
			                  regexp: {
			                        regexp: /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/,
			                        message: 'Invalid email address'
			                    }
			                }
			            },
			            position: {
			                validators: {
			                    notEmpty: {
			                        message: 'This field is required'
			                    },
			                  regexp: {
			                        regexp: /^[a-zA-Z' ']+$/,
			                        message: 'The first name can only consist of letters'
			                    }
			                }
			            }
			            
			        }
			    });
			});
		</script>		
	</body>
</html>