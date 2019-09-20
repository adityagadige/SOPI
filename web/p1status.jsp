<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>



	<%@include file="vheader.jsp"%>
  <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row">
	
	 <form action="p2status.jsp" method="post" style="margin-left: 800px;margin-top: -150px;">
              <table ><tr>
                                     
							
							<%
Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	String id=request.getParameter("id");
	session.setAttribute("id",id);
	
	String uname=(String)session.getAttribute("uname");
	try{
	con = DbConnection.getConnection();
							st = con.createStatement();
							rs=st.executeQuery("select * from userproducts where id='"+id+"'");
							while(rs.next()){
%>
<tr><td width="300px"><label>ID:</label></td><td> <input type="text" class="form-control form-control-lg" value="<%=rs.getInt(1)%>" style="width: 242px;" name="id" readonly required><br>

</td></tr>
<tr><td width="300px"><label>USER NAME: </label></td><td><input type="text" class="form-control form-control-lg" value="<%=rs.getString(2)%>" style="width: 242px;" name="uname" readonly required><br>
</td></tr>
<tr><td width="300px"><label>PRODUCT NAME: </label></td><td><input type="text" class="form-control form-control-lg" value="<%=rs.getString(3)%>" style="width: 242px;" name="pname" readonly required><br>
</td></tr>
<tr><td width="300px"><label>PRODUCT QUANTITY:</label></td><td> <input type="text" class="form-control form-control-lg" value="<%=rs.getString(4)%>" style="width: 242px;" name="pq" readonly required><br>
</td></tr>
<tr><td width="300px"><label>MANUFACTURE:</label></td><td> <input type="text" class="form-control form-control-lg" value="<%=rs.getString(7)%>" style="width: 242px;" name="mfs" required><br>
</td></tr>
<tr><td width="300px"><label>QUALITY TESTING: </label></td><td><input type="text" class="form-control form-control-lg" value="<%=rs.getString(8)%>" style="width: 242px;" name="qts" required><br>		
</td></tr>
<tr><td width="300px"><label>DELIVERY CHALLAN AND INVOICE :</label> </td><td><input type="text" class="form-control form-control-lg" value="<%=rs.getString(11)%>" style="width: 242px;" name="inv" required><br>
</td></tr>
<tr><td width="300px"><label>ADDRESS :</label> </td><td><input type="text" class="form-control form-control-lg" value="<%=rs.getString(12)%>" style="width: 242px;" name="address" readonly required><br>
</td></tr>

<tr><td width="300px"><label>AGENT NAME :</label> </td><td><input type="text" class="form-control form-control-lg" value="<%=rs.getString(13)%>" style="width: 242px;" name="agent" required><br>
</td></tr>
<tr><td width="200px"><label>INSTALLATION:</label> </td><td><input type="text" class="form-control form-control-lg" value="<%=rs.getString(9)%>" style="width: 242px;" name="inst" readonly required><br>
</td></tr>


<tr><td width="200px"><label>AMOUNT PAID:</label> </td><td><input type="text" class="form-control form-control-lg" value="<%=rs.getString(10)%>" style="width: 242px;" name="pamt" readonly required>
</td></tr></table>
<%							}	
}
catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("vendorhome.jsp?msggg='failed'");
                }
%>
<br>
<br><input type="submit" class="btn btn-lg btn-primary" style="margin-left: -150px;height: 37px;" value="Submit">

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