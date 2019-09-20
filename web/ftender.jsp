<%@page import="java.sql.*"%>
<%@page import="com.db.Connection.DbConnection"%>
<%
Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	
	 Statement st1 = null;
    ResultSet rs1 = null;
 Statement st2 = null;
String email=(String)session.getAttribute("email");
String amt=request.getParameter("amt");
String id=request.getParameter("id");

System.out.println(amt);
try{
	
	
	con = DbConnection.getConnection();
							st = con.createStatement();
							st1 = con.createStatement();
							st2 = con.createStatement();
							
							 rs=st.executeQuery("select * from vreg where email='"+email+"'");
							while (rs.next()) {
String vendorname=rs.getString(2);
 rs1=st1.executeQuery("select * from userproducts1 where id='"+id+"'");
	while(rs1.next()){
		String uname=rs1.getString(2);
		String pname=rs1.getString(3);
		String pq=rs1.getString(4);
		String ptname=uname+"__"+pname;
		System.out.println(ptname);
 int i=st2.executeUpdate("insert into "+ptname+"(vname,uname,pname,pq,amount) values('"+vendorname+"','"+uname+"','"+pname+"','"+pq+"','"+amt+"')");
 if(i!=0){
    response.sendRedirect("tenders.jsp?msg='success'");	 
 }
 else{%>
 <script type="text/javascript">
     window.alert("error submitting!");
     window.location="tenders.jsp";
     </script>
     <%
	 }
							}
							
			}
}
catch (Exception ex) 
				{
					System.out.println(ex);%>
                                        <script type="text/javascript">
                                            window.alert("internal error!contact admin");
                                            window.location="vendorhome.jsp";
                                        </script>>                    
                    <%
                    }

%>