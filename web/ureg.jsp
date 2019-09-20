<%@include file="iheader.jsp"%>
  <!-- column content -->
  <script type="text/javascript">
      function pwdcheck(){
          var pwd,pwd1;
          pwd=document.form.pwd.value;
          pwd1=document.form.pwdr.value;
          if(pwd!==pwd1){
            window.alert("passwords doesn't match");
           }
          }
      </script>
  <div id="main-content">
    <div class="container">
      <div class="row">
        
		<div class="text-center">
			<h3 style="margin-right:910px;">User Registration</h3>
			<form action="login.jsp" name="form" method="post">
           <div class="form-row" style=" margin-right: 50px;">  
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="text" class="form-control form-control-lg" placeholder="Enter your firstname" style="width: 242px;" name="fname" required><br>
                  <input type="text" class="form-control form-control-lg" placeholder="Enter your lastname" style="width: 242px;" name="lname" required><br>
                  <input type="number" class="form-control form-control-lg" min="18" max="100" placeholder="Enter your age" style="width: 242px;" name="age" required><br>
                  <input type="text" class="form-control form-control-lg" maxlength="10" pattern="[0-9]{10}" placeholder="Enter your mobile number" style="width: 242px;" name="phne" required><br>
                  <input type="email" class="form-control form-control-lg" placeholder="Enter your email-id" style="width: 242px;" name="email" required><br>
				  <textarea class="form-control form-control-lg" placeholder="Enter Address" name="address" style="width: 242px;" required></textarea><br>
				  <input type="password" class="form-control form-control-lg" placeholder="Enter your password" style="width: 242px;" name="pwd" required><br>
                                   <input type="password" class="form-control form-control-lg" placeholder="Re-Enter your password" style="width: 242px;" name="pwdr" required>                          
                                   <input type="hidden" value="2" name="status" /><br>
                  <input type="submit" class="btn btn-lg btn-primary" style="margin-right: 900px;" value="Register" onclick="pwdcheck()">
				  				  
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