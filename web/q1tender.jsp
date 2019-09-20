<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>



	<%@include file="uheader.jsp"%>
  <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row">
	
	 <form action="qtender.jsp" method="post" style="margin-right: 1100px;margin-top: 100px;">
                                                  
							<select name="pname">
							<option>---Select Product---</option>
							<%
Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	
	String uname=(String)session.getAttribute("uname");
	try{
	con = DbConnection.getConnection();
							st = con.createStatement();
							rs=st.executeQuery("select * from userproducts where uname='"+uname+"'");
							while(rs.next()){
%>
						<option value="<%=rs.getString(3)%>" name="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>		
                <%							}	
}
catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("vendorhome.jsp?msggg='failed'");
                }
%>
</select><br>
<br><input type="submit" class="btn btn-lg btn-primary" style="margin-right: 700px;height: 37px;" value="Submit"><br>

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