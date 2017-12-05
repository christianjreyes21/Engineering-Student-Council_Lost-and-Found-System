
<jsp:useBean id="result" type="java.sql.ResultSet" scope="request"/>
<html>
	<head>
		<title>ESC Student's Rights and Welfare</title>
		
			<link href="css/bootstrap.min.css" rel="stylesheet">
			<link href="css/main.css" rel="stylesheet">
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css"/>
			<link rel="stylesheet" href="dist/css/formValidation.css"/>

			<script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>
			<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="dist/js/formValidation.js"></script>
			<script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
			
			<style>
			 h2, h4 {
			 color: #f5ce04;
			 }
			 
			 textarea, input[type=text] {
			 	color:white;
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
						
					
					<br/>	
					<form id="announcementForm" method="post" action="editannouncement.html" id="form1" enctype="multipart/form-data">
							<h2 style="color: #f5ce04">Announcement #1</h2>
							<h4>Title<h4>
							<%result.next(); %>
							<input type="text" id="title1" name="title1" style="background-color: #424242; border: none; padding: 5px; margin: 2px; width: 100%;" value="<%=result.getString("title")%>">
							<script>
							$(document).ready(function() {
								
							
								$("#title1").change(function(e) {
									var value= $('#title1').val();
									 if (!value.search('<script')) {
										 	alert('NOT TODAY SIR ZALAMEDA. The value has been rolled back.');
										 	$('#title1').val('<%=result.getString("title")%>');
						                    return false;
						                }
								});
								
							});
							</script>
							<h4>Body<h4>
							<textarea name="body1" id="body1" value="<%=result.getString("body")%>"><%=result.getString("body")%></textarea><br/>
							<script>
							$(document).ready(function() {
								
							
								$("#body1").change(function(e) {
									var value= $('#body1').val();
									 if (!value.search('<script')) {
										 	alert('NOT TODAY SIR ZALAMEDA. The value has been rolled back.');
										 	$('#body1').val('<%=result.getString("body")%>');
						                    return false;
						                }
								});
								
							});
							</script>
							<input type="file" id="file1" value="Hello" name="uploadFile" accept="image/png"> 
							<br/><br/>
							
							<script>
								var _URL = window.URL || window.webkitURL;
					
								$("#file1").change(function(e) {
								    var file, img;
					
					
								    if ((file = this.files[0])) {
								        img = new Image();
								        img.onload = function() {
								        };
								        img.onerror = function() {
								            alert( "Invalid image. Please select a valid file type.");
								            $("#file1").val("");
								            
								        };
								        img.src = _URL.createObjectURL(file);
					
					
								    }
					
								});
							
							</script>
							
							<h2>Announcement #2</h2>
							<h4>Title<h4>
							<%result.next(); %>
							<input type="text" id="title2" name="title2" style="background-color: #424242; border: none; padding: 5px; margin: 2px; width: 100%;" value="<%=result.getString("title")%>">
							<script>
							$(document).ready(function() {
								
							
								$("#title2").change(function(e) {
									var value= $('#title2').val();
									 if (!value.search('<script')) {
										 	alert('NOT TODAY SIR ZALAMEDA. The value has been rolled back.');
										 	$('#title2').val('<%=result.getString("title")%>');
						                    return false;
						                }
								});
								
							});
							</script>
							<h4>Body<h4>
							<textarea name="body2" id="body2" value="<%=result.getString("body")%>"><%=result.getString("body")%></textarea><br/>
							<script>
							$(document).ready(function() {
								
							
								$("#body2").change(function(e) {
									var value= $('#body2').val();
									 if (!value.search('<script')) {
										 	alert('NOT TODAY SIR ZALAMEDA. The value has been rolled back.');
										 	$('#body2').val('<%=result.getString("body")%>');
						                    return false;
						                }
								});
								
							});
							</script>
							<input type="file" id="file2" name="uploadFile" accept="image/png"> 
							<br/><br/>
							
							
							<script>
								var _URL = window.URL || window.webkitURL;
					
								$("#file2").change(function(e) {
								    var file, img;
					
					
								    if ((file = this.files[0])) {
								        img = new Image();
								        img.onload = function() {
								        };
								        img.onerror = function() {
								            alert( "Invalid image. Please select a valid file type.");
								            $("#file2").val("");
								            
								        };
								        img.src = _URL.createObjectURL(file);
					
					
								    }
					
								});
							
							</script>
							
							<h2>Announcement #3</h2>
							<h4>Title<h4> 
							<%result.next(); %>
							<input type="text" id="title3" name="title3" style="background-color: #424242; border: none; padding: 5px; margin: 2px; width: 100%;" value="<%=result.getString("title")%>">
							<script>
							$(document).ready(function() {
								
							
								$("#title3").change(function(e) {
									var value= $('#title3').val();
									 if (!value.search('<script')) {
										 	alert('NOT TODAY SIR ZALAMEDA. The value has been rolled back.');
										 	$('#title3').val('<%=result.getString("title")%>');
						                    return false;
						                }
								});
								
							});
							</script>
							<h4>Body<h4>
							<textarea name="body3" id="body3" value="<%=result.getString("body")%>"><%=result.getString("body")%></textarea><br/>
							<script>
							$(document).ready(function() {
								
							
								$("#body3").change(function(e) {
									var value= $('#body3').val();
									 if (!value.search('<script')) {
										 	alert('NOT TODAY SIR ZALAMEDA. The value has been rolled back.');
										 	$('#body3').val('<%=result.getString("body")%>');
						                    return false;
						                }
								});
								
							});
							</script>
							<input type="file" id="file3" name="uploadFile" accept="image/png"> 
							<br/><br/>
							
							
							<script>
								var _URL = window.URL || window.webkitURL;
					
								$("#file3").change(function(e) {
								    var file, img;
					
					
								    if ((file = this.files[0])) {
								        img = new Image();
								        img.onload = function() {
								        };
								        img.onerror = function() {
								            alert( "Invalid image. Please select a valid file type.");
								            $("#file3").val("");
								            
								        };
								        img.src = _URL.createObjectURL(file);
					
					
								    }
					
								});
							
							</script>
							
						<p align="center"><input type="submit" value="SUBMIT"></p>
					</form>
					</div>
					
				</div>
				
			
				
				<div class="col-lg-3"></div>
				
			</div>
			
			<br/><br/><br/>
		</div>	
		
		
				
	</body>
</html>