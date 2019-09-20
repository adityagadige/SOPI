<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>


<%
Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	
	 Statement st1 = null;
    ResultSet rs1 = null;
	
	Statement st2 = null;
ResultSet rs2 = null;
	String email=null;
String vendorname=null;
 
	String uname=null;
	%>
	<%@include file="vheader.jsp"%>
  <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row">
	
	 <form action="" method="post">
                     <center>   <table  style="border-style: solid" >
                            <caption> <h2 style="color: coral">TENDERS</h2></caption>
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                <td><font size="4">ID_</td> <td><font size="4">USER NAME_</td><td><font size="4">PRODUCT NAME_</td><td><font size="4">QUANTITY_</td><td><font size="4">ACTION</td>
                            </tr>
	
	<%
	
	 vendorname=(String)session.getAttribute("vname");
 
	try{
	email=(String)session.getAttribute("email");
	System.out.println(email);
	con = DbConnection.getConnection();
							st = con.createStatement();
							st1 = con.createStatement();
							st2 = con.createStatement();
 

rs1=st1.executeQuery("select * from userproducts1");
	while(rs1.next()){
		uname=rs1.getString(2);
		String pname=rs1.getString(3);
		
		String ptname=uname+"__"+pname;
		
		
		rs2=st2.executeQuery("select * from "+ptname+" where vname='"+vendorname+"'");
		if(!rs2.next()){%>
			<tr><td><font size="4"><%=rs1.getString(1)%></td><td><font size="4"><%=rs1.getString(2)%></td><td><font size="4"><%=rs1.getString(3)%></td><td><font size="4"><%=rs1.getString(4)%></td><td><a href="ftender1.jsp?id=<%=rs1.getInt(1) %>"><font size="4">Send</a></td>
			</tr>
		<%}
			
	}
	
	
	
}
	

catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("vendorhome.jsp?msggg='failed'");
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