<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

<%

Connection con = null;
    Statement st = null;
    ResultSet rs = null;


String id=(String)session.getAttribute("id");
String mfs=request.getParameter("mfs");
String qts=request.getParameter("qts");
String inv=request.getParameter("inv");
String agent=request.getParameter("agent");
System.out.println(agent);
	try{
	con = DbConnection.getConnection();
							st = con.createStatement();
int i=st.executeUpdate("update userproducts set manufacture='"+mfs+"',quality_test='"+qts+"',invoice='"+inv+"',agent='"+agent+"' where id='"+id+"'");
if(i!=0){
	response.sendRedirect("pstatus.jsp?msg='success'");
		
}
else{%>
<script type="text/javascript">
    window.alert("updation failed!");
    window.location("pstatus.jsp");
    </script>
<%}
	}
	catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("pstatus.jsp?msggg='success'");
                }
				
				%>