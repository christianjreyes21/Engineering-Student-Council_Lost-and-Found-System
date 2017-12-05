<html>
	<head>
		<title>ESC Student's Rights and Welfare</title>
		
			<link href="css/bootstrap.min.css" rel="stylesheet">
			<link href="css/main.css" rel="stylesheet">
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			
			<script>
				function validate() {
					return true;
				}
			</script>
			
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
					background-attachment: fixed;
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

				input[type=text], input[type=password], input[type=file], select {
					background-color: #424242;
					border: none;
					padding: 5px;
					margin: 2px;
					width: 100%;
				}
				
				
				input[type=submit] {
					background-color: #f5ce04;
					border: none;
					padding-left: 10px;
					padding-right: 10px;
					padding-top: 5px;
					padding-bottoms: 5px;
					margin: 2px;
					font-size:20px;
					color: black;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
				}
				
				.g {
					background-color: #f5ce04;
					border: none;
					padding:5px;
					text-align: center;
					color: #424242;
					margin: 2px;
					font-size:20px;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
				}
				
				h2 {
					color: #e9b905;
					font-size: 30px;
					font-family: 'Trebuchet MS';
					text-align:center;
				}
				
				h3 {
					color: #ffffff;
					font-size: 20px;
					font-family: 'Trebuchet MS';
					text-align:center;
				}
				
				textarea {
					background-color: #424242;
					border: none;
					padding: 5px;
					margin: 2px;
					width: 100%;
					height:150px;
					color: #ffffff;
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
					text-align:center;
				}
				
				.h {
					color: #424242;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
					text-align:center;
				}
				
				h4 {
				
					font-size:20px;
					font-family: 'trebuchet MS';
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
						
						<table width="100%">
							<tr>
								<th><a href="profile.html" class="h">Admin info</a></th>
								<th><a href="admincomplainsx.html?a=all" class="h">Complaints</a></th>
								<th><a href="adminannounce.html" class="h">Announcements</a></th>
								<th><a href="adminsettings.html" class="h">Settings</a></th>
							</tr>
						</table>
					
					<br/>
							<h4>Recipient:<font face="trebuchet ms" color="#f5ce04" size="5px"> ${studentEntry.lastName}, ${studentEntry.firstName} ${studentEntry.middleName}</font></h4>
							<br/>
							<h4>Complaint:</h4>
							<p align="justify"><font face="trebuchet ms" color="#f5ce04" size="4px"> ${complaint} </font></p>
							<br/>
							<form action="sendemail.html" method="post">
							<h4>Message<h4>
								<textarea name="body"></textarea><br/>
								<br/><br/>
								<input type="hidden" name="complaint" value="${complaint}">
							
								<p align="center"><input type="submit" value="SEND"></p>
							</form>
							
					</div>
					
				</div>
				
			
				
				<div class="col-lg-3"></div>
				
			</div>
			
			<br/><br/><br/>
		</div>			
	</body>
</html>