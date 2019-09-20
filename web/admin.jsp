<%@include file="iheader.jsp"%>
  <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row">
        
		<div class="text-center">
			<h3 style="margin-right:910px;">Admin Login</h3>
			<form action="login.jsp" method="post">
           <div class="form-row" style=" margin-right: 50px;">  
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="text" class="form-control form-control-lg" placeholder="Enter your username" style="width: 242px;" name="name" required><br>
				  <input type="password" class="form-control form-control-lg" placeholder="Enter your password" style="width: 242px;" name="pwd" required>
				  <input type="hidden" value="1" name="status" /><br>
                  <input type="submit" class="btn btn-lg btn-primary" value="login" style="margin-right: 900px;">
				  				  
                </div>
              </div>
            </form>
        </div>
		
		
		
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