<!DOCTYPE html>
<html>
	<head>
	<script>alert ( "Invalid Student Number! Please try again." );</script>
		<title>ESC Student's Rights and Welfare</title>
		
			<link href="css/bootstrap.min.css" rel="stylesheet"/>
			<link href="css/main.css" rel="stylesheet"/>
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css"/>
			<link rel="stylesheet" href="dist/css/formValidation.css"/>

			<script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>
			<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="dist/js/formValidation.js"></script>
			<script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
			
			
</head>
<body>
    <div class="main">
		
			<div class="container-fluid c">
				<center><font class="a">Engineering student council</font><br/>
				<font class="b">Student's rights and welfare management system</font></center>
			</div>	
			
			
			
			<div class="container">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<div class="row e">
						<center><a href="index.html"><img src="images/logo.png" width="100px" class="circle"></a></center>
					</div>
					
					<div class="row e">
					<br/><BR/>

                <form id="studentForm" method="post" class="form-horizontal" action="StudentEntryProcess.html">
                    

                    <div class="form-group">
                        <label class="col-sm-3 control-label f">Name:</label>
                        <div class="col-sm-3">
                            <input type="text" name="lastName" placeholder="Last Name"></td>
                        </div>
						<div class="col-sm-3">
							<input type="text" name="firstName" placeholder="First Name">
						</div>
						<div class="col-sm-3">
							<input type="text" name="middleName" placeholder="Middle Name">
						</div>
                    </div>
                    
                    <div class="form-group">
                    	<label class="col-sm-3 control-label f">Year & Section:</label>
                    	<div class="col-sm-2">
                    		<select name="yearLevelAndSection"  style="width:100%; color: #f5ce04;">
								<option value = "1A">1A </option>
								<option value = "1B">1B </option>
							</select>
						</div>
						<label class="col-sm-4 control-label f">Student Number:</label>
						<div class="col-sm-3">
							<input type="text" name="studentNumber">
						</div>
            		</div>
            		
                    <div class="form-group">
                    	<label class="col-sm-3 control-label f">Email address:</label>
                    	<div class="col-sm-4">
                    		<input type="text" name="emailAddress">
						</div>
						<label class="col-sm-2 control-label f">Category:</label>
						<div class="col-sm-3">
							<select name="category"  style="width:100%; color: #f5ce04;">
								<option value = "Facilities"><font color="yellow">Facilities</font> </option>
								<option value = "Professors">Professors </option>
								<option value = "Services">Services </option>
							</select>
						</div>
            		</div>
            		
            		<div class="form-group">
                    	<label class="col-sm-5 control-label f" style="text-align:left">Concerns and Complaints:</label>
            		</div>
					
					<div class="form-group">
						<div class="col-sm-12">	
						<textarea name="concernsAndComplaints" style="color:white;"></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-xs-12 control-label f"  style="text-align:left">Prove that you're human:</label>
					</div>
					
					<div class="form-group">
						<label class="col-xs-3 control-label f" style="text-align:right" id="captchaOperation"></label>
				        <div class="col-xs-5">
				            <input type="text" class="form-control" name="captcha" />
				        </div>
										
					</div>
						
                   <br/><br/>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-1"></div>
        </div>
    </div>

		<script type="text/javascript">
			$(document).ready(function() {
			    // Generate a simple captcha
			    function randomNumber(min, max) {
			        return Math.floor(Math.random() * (max - min + 1) + min);
			    };
			    $('#captchaOperation').html([randomNumber(1, 50), '+', randomNumber(1, 50), '='].join(' '));
				

			    FormValidation.Validator.scriptSearch = {
			            validate: function(validator, $field, options) {
			                var value = $field.val();
			                if (value === '') {
			                    return true;
			                }
			                if (!value.search('<script')) {
			                    return false;
			                }
	
			                return true;
			            }
					};
			    
			    
			    $('#studentForm').formValidation({
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
			                        message: 'The last name is required'
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
			                        message: 'The first name is required'
			                    },
			                    regexp: {
			                        regexp: /^[a-zA-Z' ']+$/,
			                        message: 'The first name can only consist of letters'
			                    }
			                }
			            },
			            middleName: {
			                validators: {
			                    notEmpty: {
			                        message: 'The middle name is required'
			                    },
			                    regexp: {
			                        regexp: /^[a-zA-Z' ']+$/,
			                        message: 'The middle name can only consist of letters'
			                    }
			                }
			            },
			            yearAndSection: {
			                validators: {
			                    notEmpty: {
			                        message: 'Year and section is required'
			                    }
			                }
			            },
			            studentNumber: {
			                validators: {
			                    notEmpty: {
			                        message: 'Student number is required'
			                    },
			                    stringLength: {
			                    	min:10,
			                    	max:10
			                    },
			                    regexp: {
			                        regexp: /^[0-9]+$/,
			                        message: 'The student number can only consist of numbers'
			                    }
			                }
			            },
			            emailAddress: {
			                validators: {
			                    notEmpty: {
			                        message: 'Email address is required'
			                    },
			                    regexp: {
			                        regexp: /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/,
			                        message: 'Invalid email address'
			                    }
			                }
			            },
			            concernsAndComplaints: {
			            	validators: {
			            		scriptSearch: {
			            			message: 'Don\'t you dare sir *evil laugh*'
			            		}
			            	}
			            },
			            captcha: {
			                validators: {
			                    callback: {
			                        message: 'Wrong answer',
			                        callback: function(value, validator, $field) {
			                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
			                            return value == sum;
			                        }
			                    }
			                }
			            }
			        }
			    });
			});
		</script>
</body>
</html>