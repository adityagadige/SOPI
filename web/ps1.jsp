<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>



	<%@include file="uheader.jsp"%>
  <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row"> 
	 <form action="" method="get">
                     <center>   <table  style="border-style: solid" >
                            <caption> <h2 style="color: coral">TENDERS</h2></caption>
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                <td><font size="4">ID_</td> <td><font size="4">USER NAME_</td><td><font size="4">PRODUCT NAME_</td><td><font size="4">QUANTITY_</td><td><font size="4">AMOUNT_</td><td><font size="4">MANUFACTURE_</td><td><font size="4">QUALITY TEST_</td><td><font size="4">INVOICE_	</td><td><font size="4">INSTALLATION_</td><td><font size="4">PAID AMOUNT_</td><td><font size="4">RECEIPT_</td>
                            </tr>
	

<%
Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	
	Statement st1 = null;
    ResultSet rs1 = null;
	String email=(String)session.getAttribute("email");
	String uname=(String)session.getAttribute("uname");
	String pname=request.getParameter("pname");
	System.out.println(uname);
	try{
	con = DbConnection.getConnection();
							st = con.createStatement();
							st1 = con.createStatement();
	 rs1=st1.executeQuery("select * from userproducts where uname='"+uname+"' and pname='"+pname+"'");
	 while(rs1.next()){
		 
		 %>
	 
	 		<tr>	<td><font size="4"><%=rs1.getString(1)%></td><td><font size="4"><%=rs1.getString(2)%></td><td><font size="4"><%=rs1.getString(3)%></td><td><font size="4"><%=rs1.getString(4)%> </td><td><font size="4"><%=rs1.getString(6)%> </td><td><font size="4"><%=rs1.getString(7)%> </td><td><font size="4"><%=rs1.getString(8)%> </td><td><font size="4"><%=rs1.getString(11)%> </td><td><font size="4"><%=rs1.getString(9)%><td><font size="4"><%=rs1.getString(10)%> </td><td><font size="4"><button onclick="javascript:window.print();">Print</button>
</td>
</tr>
	 <%
	 }
 }
				
				
 

	catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("ps.jsp?msggg='failed'");
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