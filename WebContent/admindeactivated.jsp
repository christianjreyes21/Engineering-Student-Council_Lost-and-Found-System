<!DOCTYPE html>
<html>
	<head>
		<script> alert("Account has been successfuly deactivated!");</script>
		<title>ESC Student's Rights and Welfare</title>
		
			<link href="css/bootstrap.min.css" rel="stylesheet"/>
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
					font-family:trebuchet ms;
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
					border-top: none;
					border-left: none;
					border-right: none;					
					border-bottom: 5px #f5ce04 solid;
					border-radius: 0px;
					padding: 5px;
					color: #f5ce04;
					margin: 2px;
					width: 100%;
				}
				
				input[type=text]:focus, input[type=password]:focus textarea:focus{
				  	box-shadow: 0 0 0 transparent;
					border-top: none;
					border-left: none;
					border-right: none;
				 	 border-bottom: 5px #f5ce04 solid;
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
				
				.e {
					padding-left:20px;
					padding-right:20px;
				}
				
				.f {
					color: #e9b905;
					font-size: 20px;
					font-family: 'Trebuchet MS';
				}
				
				table, tr, td {
					padding:5px;
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
					<br/><BR/>

                	<form id="loginForm" method="post" class="form-horizontal" action="processlogin.html">
                    
                    <div class="form-group">
                      	<div class="col-lg-2"></div>
                        <label class="col-sm-3 control-label f">Username</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" name="username" />
                        </div>
                    </div>

                   
                   
                    <div class="form-group">
                     <div class="col-lg-2"></div>
                        <label class="col-sm-3 control-label f">Password</label>
                        <div class="col-sm-5">
                            <input type="password" class="form-control" name="password" />
                        </div>
                    </div>

                   <br/>
                    <div class="form-group">
                    <div class="col-lg-2"></div>
                        <div class="col-sm-8">
                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

<script type="text/javascript">
$(document).ready(function() {
    // Generate a simple captcha
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    };
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

    $('#loginForm').formValidation({
        message: 'This value is not valid',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The username is required'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required'
                    }
                }
            }
        }
    });
});
</script>
</body>
</html>