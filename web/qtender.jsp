<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>
	<%@include file="uheader.jsp"%>
  <!-- column content -->

  <div id="main-content">
    <div class="container">
      <div class="row">
	
	 <form  method="get">
            
                     <center>   <table  style="border-style: solid" >
                            <caption> <h2 style="color: coral">TENDERS</h2></caption>
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                <td><font size="4">ID_</td> <td><font size="4">VENDOR NAME_</td><td><font size="4">PRODUCT NAME_</td><td><font size="4">QUANTITY_</td><td><font size="4">AMOUNT_</td><td><font size="4">ACTION</td>
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

						
 
	 String pname=request.getParameter("pname");
	 session.setAttribute("pname",pname);
	 String ptname=uname+"__"+pname;

	 rs1=st1.executeQuery("select * from "+ptname+" where id");
	 while(rs1.next()){
		 
		 %>
	
	 		<tr>
                          
                            <td><font size="4"><%=rs1.getString(1)%></td><td><font size="4"><%=rs1.getString(2)%></td><td><font size="4"><%=rs1.getString(4)%></td><td><font size="4"><%=rs1.getString(5)%> </td><td><font size="4"><%=rs1.getString(6)%> </td><td><a href="q2tender.jsp?id=<%=rs1.getString(1)%>" onclick="return confirm('Are you sure you want to send?');" ><font size="4">Send</a></td>
                        
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

</form>
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