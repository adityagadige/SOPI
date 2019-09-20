<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

<%

String id=request.getParameter("id");
String pname=(String)session.getAttribute("pname");

String uname=(String)session.getAttribute("uname");

System.out.println(id);
System.out.println(pname);
System.out.println(uname);

Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	String ptname=uname+"__"+pname;
	    Statement st1 = null;
    ResultSet rs1 = null;
	
	Statement st2 = null;
	Statement st3 = null;
	con = DbConnection.getConnection();
							st = con.createStatement();
							st1 = con.createStatement();
							
						rs1=st.executeQuery("select * from "+ptname+" where id='"+id+"'");
							while(rs1.next()){
								String vname=rs1.getString(2);
								String amt=rs1.getString(6);

							int i=st1.executeUpdate("update userproducts set vname='"+vname+"',amount='"+amt+"' where uname='"+uname+"' and pname='"+pname+"'");
	if(i!=0)
	{
		st2 = con.createStatement();
		st3 = con.createStatement();
		st2.executeUpdate("drop table "+ptname+"");
		st3.executeUpdate("delete from userproducts1 where uname='"+uname+"' and pname='"+pname+"'");
                %>
                <script type="text/javascript">
                  window.alert("sent successfully;");
                  window.location="q1tender.jsp";
                </script>
                <%
		}
	else{%>
        <script type="text/javascript">
            window.alert("error sending!");
            window.location("q1tender.jsp");
        </script>		
                <%  
							}
							}
	
				
				%>