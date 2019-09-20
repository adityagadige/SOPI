 <%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>



	<%@include file="vheader.jsp"%>
  <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row">
	
	 <form action="" method="get">
                     <center>   <table  style="border-style: solid" >
                            <caption> <h2 style="color: coral">TENDERS</h2></caption>
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                <td><font size="4">ID_</td> <td><font size="4">USER NAME_</td><td><font size="4">PRODUCT NAME_</td><td><font size="4">QUANTITY_</td><td><font size="4">AMOUNT_</td><td><font size="4">ACTION</td>
                            </tr>
	

<%
Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	
	Statement st1 = null;
    ResultSet rs1 = null;
	String email=(String)session.getAttribute("email");
	String uname=(String)session.getAttribute("uname");
	try{
	con = DbConnection.getConnection();
							st = con.createStatement();
							st1 = con.createStatement();

						
 
	String vname=(String)session.getAttribute("vname");

	 rs1=st1.executeQuery("select * from userproducts where vname='"+vname+"'");
	 while(rs1.next()){
		 
		 %>
	 
	 		<tr>	<td><font size="4"><%=rs1.getString(1)%></td><td><font size="4"><%=rs1.getString(2)%></td><td><font size="4"><%=rs1.getString(3)%></td><td><font size="4"><%=rs1.getString(4)%> </td><td><font size="4"><%=rs1.getString(6)%> </td><td><a href="p1status.jsp?id=<%=rs1.getString(1)%>"><font size="4">Update</a></td>
</tr>
	 <%
	 }
 }
				
				
 

	catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("q1tender.jsp?msggg='failed'");
                }
%>
</table></center>
	 </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="wow bounceInRight">
          
        </div>
        <div class="wow bounceInLeft">
          
        </div>
      </div>
    </div>
  </div>