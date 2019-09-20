<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

<%

Connection con = null;
    Statement st = null;
    ResultSet rs = null;


String id=(String)session.getAttribute("id");
String inst=request.getParameter("inst");
String pamt=request.getParameter("pamt");
String inv=request.getParameter("inv");


	try{
	con = DbConnection.getConnection();
							st = con.createStatement();
							
				
int i=st.executeUpdate("update userproducts set inst='"+inst+"', pamt='"+pamt+"' where id='"+id+"'");
if(i!=0){
	response.sendRedirect("aps.jsp?msg='success'");
		
}
else{%>
                <script type="text/javascript">
                    window.alert("updation failed!");
                    window.location="aps.jsp";
                </script>
<%
        }

	}
	catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("aps.jsp?msggg='success'");
                }
				
				%>