<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="recordProfessors" type="java.sql.ResultSet" scope="request"/>
<html>
	<head>
		<title>ESC Student's Rights and Welfare</title>
		
			<link href="css/bootstrap.min.css" rel="stylesheet">
			<link href="css/main.css" rel="stylesheet">
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<link href="css/jquery.dataTables.min.css" rel="stylesheet">
			<script src="js/dataTables.bootstrap.min.js"></script>
			<script src="js/jquery.dataTables.min.js"></script>
			
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
				
				.col-lg-10 {
					padding:20px;
					background-color: #1b1b1b;
					border-bottom: 20px solid #f5ce04;
				}
				
				.circle {
					margin-top: -80px;
				}

				input[type=text], input[type=password] {
					background-color: #424242;
					border: none;
					padding: 5px;
					margin: 2px;
					width: 100%;
				}
				
				h3 {
					color: #e9b905;
					font-size: 20px;
					text-align: center;
					font-family: 'Trebuchet MS';
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
				
				.i {
					background-color:  #1b1b1b;
					color: #424242;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
					text-align:center;
					padding: 15px;
					font-size:15px;
					visibility:hidden;
				}
				
				.g {
					background-color:  #f5ce04;
					color: #424242;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
					text-align:center;
					padding: 15px;
					font-size:15px;
				}
				
				.g:hover {
					background-color:white;
				}
				
				
				#j1, #j2, #j3{
					background-color:  #f5ce09;
					color: #424242;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
					text-align:center;
					padding: 5px;
					font-size:15px;
					visibility:hidden;
				}
				
				#j1:hover, #j2:hover, #j3:hover {
					background-color:white;
					visibility:visible;
				}
				
				.h {
					color: #424242;
					text-transform: uppercase;
					font-family: 'trebuchet MS';
					text-align:center;
				}
				
				select {
					font-size:20px;
					color:white;
					background-color: #424242;
					border: none;
				}
				
				input[type=button] {
					background-color: #f5ce04;
					border: none;
					padding: 3px;
					margin: 2px;
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
				<div class="col-lg-1"></div>
					
				<div class="col-lg-10">
					<div class="row e">
						<center><a href="index.html"><img src="images/logo.png" width="100px" class="circle"></a></center>
					</div>
					
					<div class="row e">
					<br/><BR/>
						<table width="100%">
							<tr>
								<th class="g"><a href="profile.html" class="h">Admin info</a></th>
								<th class="g"><a href="admincomplainsx.html?a=all" class="h">Complaints</a></th>
								<th class="g"><a href="adminannounce.html" class="h">Announcements</a></th>
								<th class="g"><a href="adminsettings.html" class="h">Settings</a></th>
							</tr>
							
						</table>
						
						<br/><Br/><br/>
						<div class="row">
							<div class="col-lg-3">
								<font style="font-family: 'Trebuchet ms'; margin-left:5px; font-size: 15px; color: #f5ce04;">Sort complaints</font>
								<br/>
								<select style="padding:10px; font-size:18px; width:100%; border-radius: 5px; background-color:#424242; color: #f5ce04; border:0px;" onchange="location = this.options[this.selectedIndex].value;">
											<option>Choose category</option>
											<option value="admincomplainsx.html?a=all">All complaints</option>
											<option value="admincomplainsx.html?a=Facilities">Facilities</option>
											<option value="admincomplainsx.html?a=Professors">Professors</option>
											<option value="admincomplainsx.html?a=Services">Services</option>
								</select>
							</div>
							<div class="col-lg-3">
								<font style="font-family: 'Trebuchet ms'; margin-left:5px; font-size: 15px; color: #f5ce04;">Print complaints</font>
								<br/>
								<select style="padding:10px; font-size:18px; width:100%; border-radius: 5px; background-color:#424242; color: #f5ce04; border:0px;" onchange="window.open(this.options[this.selectedIndex].value, '_blank', 'width='+screen.width, 'height='+screen.height);">
									 <option>Choose category</option>
									 <option value="printcomplains.html?a=all">All complaints</option>
											<option value="printcomplains.html?a=Facilities">Facilities</option>
											<option value="printcomplains.html?a=Professors">Professors</option>
											<option value="printcomplains.html?a=Services">Services</option>
								</select>
							</div>
							<div class="col-lg-2"></div>
							<div class="col-lg-4">
								<form action="admincomplainsx.html">
									<font style="font-family: 'Trebuchet ms'; margin-left:10px; font-size: 15px; color: #f5ce04;">Search</font>
									<br/>
									<input type="hidden" name="a" value="Professors"/>
									<input type="text" name="search" value="${search}" style="display:inline-block; border:0px;  padding:5px; border-radius: 5px; color:#f5ce09; width:95%; font-size:20px; background-image: url('glyphicons/glyphicons-search.png'); background-size: 25px 25px; background-position: right; background-repeat: no-repeat;" placeholder="Type here...">
									
								</form>
							</div>
						</div>
					
						<br/><br/>
						
					</div>
					
					<div class="row e">					
						<h3>Category: Professors</h3>
						<br/>
						<table width="100%" id="table2">
							<thead>
								<tr>
									<th>Concern and Complains</th>
									<th>Name</th>
									<th>Student no.</th>
									<th>Year & Section</th>
									<th>Email</th>
								</tr>
							</thead>
							<tbody>
							<% 
								boolean hasList1 = true;
								while(recordProfessors.next()) {
									hasList1=false;
							%>
							
								<tr>
									<td width="40%"><%=recordProfessors.getString("concernsAndComplaints")%></td>
									<td width="20%"><%=recordProfessors.getString("lastName")%>, <%=recordProfessors.getString("firstName")%> <%=recordProfessors.getString("middleName")%></td>
									<td width="15%"><%=recordProfessors.getString("studentNumber")%></td>
									<td width="10%"><%=recordProfessors.getString("yearLevelAndSection")%></td>
									<td width="15%"><a href="reply.html?complaint=<%=recordProfessors.getString("concernsAndComplaints")%>"><div class="g">REPLY</div></a></td>
								</tr>
							
							<% } %>
							</tbody>
						</table>
						
						<br/><br/>
					</div>
					
					
					<br/><br/><br/>
				</div>
				
			
				
				<div class="col-lg-1"></div>
				
			</div>
			
			<br/><br/><br/>
		</div>			
	</body>
	<script>
		$(document).ready(function(){
		    $('#table2').dataTable();
		});
	</script>
</html>