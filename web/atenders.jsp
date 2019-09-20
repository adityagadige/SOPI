<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>


<%
Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	
	
	%>
	<%@include file="aheader.jsp"%>
  <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row">
	
	 <form action="" method="post">
                     <center>   <table  style="border-style: solid" >
                            <caption> <h2 style="color: coral">TENDERS</h2></caption>
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                <td><font size="4">ID_</td> <td><font size="4">USER NAME_</td><td><font size="4">VENDOR NAME_</td><td><font size="4">PRODUCT NAME_</td><td><font size="4">QUANTITY_</td><td><font size="4">AMOUNT_</td><td><font size="4">PAID AMOUNT_</td><td><font size="4">ACTION</td>
                            </tr>
	
	<%
	
	
	try{
	
	con = DbConnection.getConnection();
							st = con.createStatement();
							
 rs=st.executeQuery("select * from userproducts");
							while (rs.next()) {

		%>
			<tr><td><font size="4"><%=rs.getString(1)%></td><td><font size="4"><%=rs.getString(2)%></td><td><font size="4"><%=rs.getString(5)%></td><td><font size="4"><%=rs.getString(3)%></td><td><font size="4"><%=rs.getString(4)%></td><td><font size="4"><%=rs.getString(6)%></td><td><font size="4"><%=rs.getString(10)%></td><td><a href="atpd.jsp?id=<%=rs.getString(1)%>" onclick="return confirm('Are you sure you want to delete?');"><font size="4">Delete</a></td>
			</tr>
		<%}
			
		}
	
catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("adminhome.jsp?msggg='failed'");
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
  <!-- end column content -->
  <%@include file="footer.html"%>