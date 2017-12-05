<html>
	<jsp:useBean id="recordFacilities" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordProfessors" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordServices" type="java.sql.ResultSet" scope="request"/>
	<head>
		<title>ESC Student's Rights and Welfare</title>
			<script>
				window.print();
			</script>
			
			<style>
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
				
				.c {
					padding:10px;
					background-color: #ffffff;
				}
				
				.main {
					height:100%;
				}
				
				table {
					color: #e9b905;
					font-size: 20px;
					font-family: 'Trebuchet MS';
				}
				
				.circle {
					margin-top: -80px;
				}

				
				h3 {
					color: black;
					font-size: 20px;
					text-align: center;
					font-family: 'Trebuchet MS';
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
				
				td {
					color:black;
				}
			</style>
	</head>
	
	
	<body>
		<div class="main">
				<br/><br/>
				<center><font class="a">Engineering student council</font><br/>
				<font class="b">Student's rights and welfare management system</font></center>
					<br/><br/>
					<div class="row e">
									
						<h3>Category: Services</h3>
						<br/>
						<table width="100%">
							<th>Concern and Complains</th>
							<th>Name</th>
							<th>Student no.</th>
							<th>Year & Section</th>
							
							<% 
								boolean hasList2 = true;
								while(recordServices.next()) {	
									hasList2=false;
							%>
							<tr>
								<td width="40%"><%=recordServices.getString("concernsAndComplaints")%></td>
								<td width="20%"><%=recordServices.getString("lastName")%>, <%=recordServices.getString("firstName")%> <%=recordServices.getString("middleName")%></td>
								<td width="15%"><%=recordServices.getString("studentNumber")%></td>
								<td width="10%"><%=recordServices.getString("yearLevelAndSection")%></td>
								
							</tr>
							<% } %>
						</table>
							<% if(hasList2){%>
								<br/>
								<center><font color="#f5ce04" face="trebuchet ms" size="6">NOTHING TO SHOW</font></center>
							<%} %>
						</table>
							
					</div>
					
					
					<br/><br/><br/>
				</div>
				
			
				
				<div class="col-lg-1"></div>
				
		
	</body>
</html>