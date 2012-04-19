<%@page import="support.*, java.util.*"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Specialization</title>
</head>
<body>
<% String Residence_test = (String)session.getAttribute("residence") ; 
String c_ship = (String)session.getAttribute("citizenship");%>

First Name: <%=session.getAttribute("first") %> </br >
Middle Initial: <%=session.getAttribute("middle") %> </br>
Last Name: <%=session.getAttribute("last") %> </br>
Citizenship: <%=session.getAttribute("citizenship") %> </br>
Country of Residence: <%=session.getAttribute("residence")%> </br>
<% String counter = (String)session.getAttribute("counter"); 
//session.setAttribute("counter",counter);%>
<% 
Address a = (Address)session.getAttribute("address");
String add = (String)a.getAddress();
String city = (String)a.getCity();
String zip = (String)a.getZip();
String area = (String)a.getAreaCode();
String state = (String)a.getState();
String ctc = (String)a.getTel();
%>
Address: <%=add %></br>
City: <%=city %></br>
Zip: <%=zip %> </br>
Area Code: <%=area %> </br>
<% if(!Residence_test.equals("United States")) { %>
	Country Telephone Code: <%=ctc%> </br>
<%} 
else{ %>
	State: <%=state%>
<%} %>
<% 
if ( c_ship.equals("United States")|| Residence_test.equals("United States") ){
%>
	Identity of the Applicant: Domestic Applicant <br>	
<%
}
else {%>
	Identity of the Applicant: International Applicant <br>
<%
}
%>
<% 
   Degree d = (Degree)session.getAttribute("degree");
   String loc = (String)d.getLocation();
   String uni = (String)d.getUniversity();
   String major = (String)d.getDiscipline();
   String title = (String)d.getTitle();
%>

<%
	ArrayList<Degree> d_array = (ArrayList<Degree>)session.getAttribute("degreeArray") ;
	int count_t = Integer.parseInt(counter);
	String StringCount, l, u, t, m, G, y, mo;
	if (count_t > 0) {
		for (int i = 0 ; i < d_array.size(); i++ ){ 
			StringCount = Integer.toString(i+1) ;
			l = d_array.get(i).getLocation();
			u = d_array.get(i).getUniversity() ;
			t = d_array.get(i).getTitle();
			m = d_array.get(i).getDiscipline() ;
			G = d_array.get(i).getGPA() ;
			mo = d_array.get(i).getMonth() ;
			y = d_array.get(i).getYear();
		%>
		University <%=StringCount %> in <%=l %> <br>
		Name of University <%=StringCount %> : <%=u%> <br>
		major <%=StringCount %> : <%= m %><br>
		title <%=StringCount %> : <%= t %><br>
		GPA/Expect GPA <%=StringCount %> : <%=G%> <br>
		Month/Year <%=StringCount %> : <%=mo %>/<%=y %> <br>
		<br>	
	<%	}
	}
%>

<% 
String path = config.getServletContext().getRealPath("specializations.txt");
support s = new support();  
Vector specialization = s.getSpecializations(path); %>
<form method = get action ="verification.jsp">
<SELECT name ="specialization">
<%
for (int i = 0 ; i < specialization.size(); i++){
%>
<option value = "<%=specialization.get(i)%>"><%=specialization.get(i)%></option>
<%} 
%>
</SELECT>
<p>
<input type = "submit" name = "action" value = "Done" />
</form>
</body>
</html>