<html>
<script>alert ( "Invalid Password! Please try again." );</script>
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
					border-radius: 10/10px;
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
								<th class="g"><a href="profile.html" class="h">Admin info</a></th>
								<th class="g"><a href="admincomplainsx.html?a=all" class="h">Complaints</a></th>
								<th class="g"><a href="adminannounce.html" class="h">Announcements</a></th>
								<th class="g"><a href="adminsettings.html" class="h">Settings</a></th>
							</tr>
						</table>
						<br/><BR/>
						<form action="processchangeusername.html" method="post" onsubmit="return validate()">
						<table width="100%">
							<tr>
								<td width="30%">New Username:</td>
								<td><input type="text" name="newUsername"></td>
							</tr>
							<tr>
								<td width="30%">Current Password:</td>
								<td><input type="password" name="password"></td>
							</tr>
						</table>
					<br/><br/>
						<p align="right"><input type="submit" value="submit"></p>
						</form>
					</div>
				
					
					
				</div>
				
			
				
				<div class="col-lg-3"></div>
				
			</div>
		</div>			
	</body>
</html>