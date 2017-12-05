<jsp:useBean id="result" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="result1" type="java.sql.ResultSet" scope="request"/>
<html>
	<head>
		<title>ESC Student's Rights and Welfare</title>
		
			<link href="css/bootstrap.min.css" rel="stylesheet">
			<link href="css/main.css" rel="stylesheet">
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			
	</head>
	
	
	<body>
		<div class="main">
		
			<div class="container-fluid c">
				<center><font class="a">Engineering student council</font><br/>
				<font class="b">Student's rights and welfare management system</font></center>
			</div>	
			
			
			
			<div class="container" style="width:95%">
				<div class="col-lg-1"></div>
				
				<div class="col-lg-10">
					<div class="row e">
						<center><a href="index.html"><img src="images/logo.png" width="100px" class="circle"></a></center>
					</div>
					
					<br/>
					<br/>
					<br/>
					
					<div class="row e">
						<br/>
						<div class="col-lg-3"></div>
						<div class="col-lg-3" style="border-bottom:0px;">
							<center><a type="button" class="button" href="student.html" class="h">Student</a>
						</div>
						<div class="col-lg-3" style="border-bottom:0px;">
							<a type="button" class="button" href="adminlogin.html" class="h">Admin</a></center>
						</div>
						<div class="col-lg-3"></div>
						<br/>
					</div>
					
					<div class="row e">
						<div class="col-lg-1"></div>
						<div class="col-lg-10" style="border:none;">
						<h6 style="text-align:justify; text-transform:normal;">The University of Santo Tomas Faculty of Engineering, or "UST-Eng'g", is the engineering school of the University of Santo Tomas, the oldest and the largest Catholic university in Manila, Philippines.</h6>
						
						<h6 style="text-align:justify;">Established on May 18, 1907, the faculty is the first engineering school in the Philippines. It is proclaimed as a Center of Excellence in Electronics and Communications Engineering and as a Center of Development in Civil Engineering, Chemical Engineering, Industrial Engineering, Mechanical Engineering and Electrical Engineering by the Commission on Higher Education.</h6>
						</div>
						<div class="col-lg-1"></div>
					</div>
					
					<hr width="90%">
					<br/>
					
					<div class="row e">
						<h3>Announcements</h3>
						<br/>
						
						<div class="row">
							<div class="col-lg-4">
								<img src="images/announcement1.png" width="98%"><br/>
								<br/>
								<%result.next(); %>
								<center><font class="i"><%=result.getString("title")%></font></center>
								<br/>
								<%result1.next(); %>
								<font class="j"><%=result1.getString("body")%></font>
							</div>
							
							<div class="col-lg-4">
								<img src="images/announcement2.png" width="98%"><br/>
								<br/>
								<%result.next(); %>
								<center><font class="i"><%=result.getString("title")%></font></center>
								<br/>
								<%result1.next(); %>
								<font class="j"><%=result1.getString("body")%></font>
							</div>
							
							<div class="col-lg-4">
								<img src="images/announcement3.png" width="98%"><br/>
								<br/>
								<%result.next(); %>
								<center><font class="i"><%=result.getString("title")%></font></center>
								<br/>
								<%result1.next(); %>
								<font class="j"><%=result1.getString("body")%></font>
							</div>
							
						</div>
					</div>
					
					<br/>
					<br/>
					<br/>
					
					
					
				</div>
				
			
				
				<div class="col-lg-1"></div>
				
			</div>
			
			<br/>
			<br/>
			<br/>
			
		</div>			
	</body>
</html>