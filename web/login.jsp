<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>


<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String tname=fname+"_"+lname;
String age=request.getParameter("age");
String phne=request.getParameter("phne");
String email=request.getParameter("email");
String address=request.getParameter("address");
String uname=request.getParameter("name");
String pass=request.getParameter("pwd");
String pwdr=request.getParameter("pwdr");
String cname=request.getParameter("cname");
String pname=request.getParameter("pname");
String pq=request.getParameter("pq");



Connection con = null;
    Statement st = null;
    ResultSet rs = null;
	
	 Statement st1 = null;
    ResultSet rs1 = null;
	
	Statement st2 = null;
Statement st3 = null;
	

int status = Integer.parseInt(request.getParameter("status"));
 
 System.out.println(status);
 
 switch (status)
	{

case 1:
			if(uname.equals("admin") && pass.equals("admin"))
	{
                    response.sendRedirect("adminhome.jsp?msg=success");
        }
	   else
	   {%>
		<script type="text/javascript">
                window.alert("invalid credentials");
                window.location="admin.jsp";
                </script>
	   <%
	   }
	   break;
	   
	   
	   
case 2:
try {
				  if(pass.equals(pwdr)){
                                   
			con = DbConnection.getConnection();
    			st = con.createStatement();
	                int i=st.executeUpdate("insert into user_reg(name,ag,phne,email,address,password) values ('"+tname+"','"+age+"','"+phne+"','"+email+"','"+address+"','"+pass+"')");
					
					
                    if (i != 0) {
                            %>
                           <script type="text/javascript">
                                window.alert("registration successful");
                                window.location="userlog.jsp";
                              </script>
                            <%
                    } else {%>
                              <script type="text/javascript">
                                  window.alert("registration failed!!!!");
                                  window.location="ureg.jsp";
                              </script>          
                              <%}
                }
                        else
                                    {
                                   response.sendRedirect("ureg.jsp?msg3=failed");
                                    }
                                }
                                  catch (Exception ex) 
				{
					System.out.println(ex);%>
                              <script type="text/javascript">
                                  window.alert("registration failed!!!!");
                                  window.location="ureg.jsp";
                              </script>          
                              <%
                }
                break;


				
case 3:
try{
	con = DbConnection.getConnection();
							st = con.createStatement();
 rs=st.executeQuery("select * from user_reg where email='"+email+"' and password='"+pass+"'");
							if (rs.next()) {
						
						session.setAttribute("email",email);
						uname=rs.getString(2);
						session.setAttribute("uname",uname);
                                                response.sendRedirect("userhome.jsp?msg=success");
			}
                         else {%>
                         <script type="text/javascript">
                           window.alert("invalid credentials");
                           window.location="userlog.jsp";
                         </script>
                         <%                                      
                        }
                }
				catch (Exception ex) 
				{
					System.out.println(ex);
                                        %>
                                         <script type="text/javascript">
                                            window.alert("internal error!contact admin");
                                            window.location="userlog.jsp";
                                        </script>
                                        <%
                    }
                break;
							
							
case 4:

try{
	email=(String)session.getAttribute("email");
	con = DbConnection.getConnection();
							st = con.createStatement();
							st1 = con.createStatement();
							st2 = con.createStatement();
							st3 = con.createStatement();
 rs=st.executeQuery("select * from user_reg where email='"+email+"'");
							while (rs.next()) {
 uname=rs.getString(2);
 String addresss=rs.getString(6);
 System.out.println(uname);
 

String ptname=uname+"__"+pname;

String query="create table "+ptname+"(id int not null auto_increment,vname varchar(100),uname varchar(100),pname varchar(100),pq varchar(100),amount varchar(100),primary key(id))";
System.out.println(query);
st1.execute(query);
	
		
		
		int j=st2.executeUpdate("insert into userproducts(uname,pname,pq,address) values ('"+uname+"','"+pname+"','"+pq+"','"+addresss+"')");
		
		if(j!=0){
			int i=st3.executeUpdate("insert into userproducts1(uname,pname,pq,address) values ('"+uname+"','"+pname+"','"+pq+"','"+addresss+"')");
			if(i!=0){
			response.sendRedirect("addproduct.jsp?msg='success'");
		}}
		else{ %>
                
           <script type="text/javascript">
               window.alert("error!product not added");
               window.location="addproduct.jsp";
               </script>
                    
			
	<%	
                }
	}
}

            catch (Exception ex) 
				{
					System.out.println(ex);%>
                   <script type="text/javascript">
               window.alert("error!product not added!");
               window.location="addproduct.jsp";
               </script>
          
                                        <%}
                break;
				
case 5:         
                                
                                try {
                                    if(pass.equals(pwdr)){
                                   
                                                        con = DbConnection.getConnection();
							st = con.createStatement();
				
				int i=st.executeUpdate("insert into vreg(name,age,phne,email,cname,address,password) values ('"+tname+"','"+age+"','"+phne+"','"+email+"','"+cname+"','"+address+"','"+pass+"')");
			        					
                    if (i != 0) {%>
                           <script type="text/javascript">
                                window.alert("registration successful");
                                window.location="vendorlog.jsp";
                              </script>
                            <%
                        } 
                    else {%>
                    <script type="text/javascript">
                       window.alert("registration failed!!!!");
                       window.location="vreg.jsp";
                    </script>
                              <%
                        }
                    }
                          else
                                    {
                                   response.sendRedirect("vreg.jsp?msg3=failed");
                                    }
                          }
                           
                                   catch (Exception ex) 
				{
					System.out.println(ex);
                                      %>
                                 <script type="text/javascript">
                                window.alert("registration failed!!!!");
                                window.location="vreg.jsp";
                             </script>
                                      <%
                    
                }
                    
                               
                              break;
				

case 6:
try{
	con = DbConnection.getConnection();
							st = con.createStatement();
 rs=st.executeQuery("select * from vreg where email='"+email+"' and password='"+pass+"'");
							if (rs.next()) {
						
						session.setAttribute("email",email);
						session.setAttribute("vname",rs.getString(2));
                                                response.sendRedirect("vendorhome.jsp?msg=success");
                                                        } 
                                                        else {%>
                              <script type="text/javascript">
                                  window.alert("invalid credentials");
                                window.location="vendorlog.jsp";  
                              </script>                          
                              <%
                         }
                }
				catch (Exception ex) 
				{
					System.out.println(ex);%>
                               <script type="text/javascript">
                                window.alert("internal error!contact admin");
                                window.location="vendorlog.jsp";
                               </script>          
                              <%
                    }
                break;
			

case 7:
try {
				  if(pass.equals(pwdr)){
                                   
							con = DbConnection.getConnection();
							st = con.createStatement();
				
				int i=st.executeUpdate("insert into areg(name,phne,email,address,password) values ('"+tname+"','"+phne+"','"+email+"','"+address+"','"+pass+"')");
					
					
                    if (i != 0) {%>
                           <script type="text/javascript">
                                window.alert("registration successful");
                                window.location="agentlog.jsp";
                              </script>
                            <%
                     } else {
                        response.sendRedirect("areg.jsp?msgg=failed");
                    }
                }
                          else
                                    {
                                   response.sendRedirect("areg.jsp?msg3=failed");
                                    }
        
        }
				catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("areg.jsp?msggg=failed");
                }
                break;


case 8:
try{
	con = DbConnection.getConnection();
							st = con.createStatement();
 rs=st.executeQuery("select * from areg where email='"+email+"' and password='"+pass+"'");
							if (rs.next()) {
						
						session.setAttribute("email",email);
						session.setAttribute("aname",rs.getString(2));
                                                response.sendRedirect("agenthome.jsp?msg=success");
                    } else {%>
                    <script type="text/javascript">
                        window.alert("invalid credentials");
                        window.location="agentlog.jsp";
                    </script>
                    <%
                      }
                }
				catch (Exception ex) 
				{
					System.out.println(ex);%>
                                        <script type="text/javascript">
                                            window.alert("internal error!contact admin");
                                            window.location="agentlog.jsp";
                                        </script>
                                        <%
                }
                break;				
				
	}

	%>