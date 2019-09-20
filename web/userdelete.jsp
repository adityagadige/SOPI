<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>


<%
Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	
String id=request.getParameter("id");
	try{
	
	con = DbConnection.getConnection();
	st = con.createStatement();
							
 int i=st.executeUpdate("delete from user_reg where id='"+id+"'");
	if(i!=0) {
			response.sendRedirect("ausers.jsp?msg='success'");
	}
	else{%>
        <script type="text/javascript">
            window.alert("delete unsuccessful!");
            window.location="adminhome.jsp";
            </script>
		                    <%
	}
			
		}
	
catch (Exception ex) 
				{
					System.out.println(ex);%>
                          <script type="text/javascript">
                          window.alert("internal error!contact admin");
                         window.location="adminhome.jsp";
                         </script>
                                        <%
                }

	
	
	
	
	%>
	