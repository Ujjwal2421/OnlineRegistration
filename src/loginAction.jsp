<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<% 
String email=request.getParameter("email");
String password=request.getParameter("password");

if("admin@gmail.com".equals(email) && "admin".equals(password)){
	//Setting value to use in multiple place
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else{
	
	int z=0;
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select*from users where email='"+email+"'and password='"+password+"'");
		//If user exist then set value as 1	
		while(rs.next()){
				z=1;
				session.setAttribute("email", email);
				response.sendRedirect("home.jsp");
			}
		// If user not exist than set 0 
			if(z==0)
				response.sendRedirect("login.jsp?msg=notexisit");
	}catch(Exception e){
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
		
	}
	
}
%>