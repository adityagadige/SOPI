<%@include file="uheader.jsp"%>
  <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row">
        
		<div class="text-center">
			<h3 style="margin-right:910px;">Add Product</h3>
			<form action="login.jsp" method="post">
           <div class="form-row" style=" margin-right: 50px;">  
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="text" class="form-control form-control-lg" placeholder="Enter Product Name" style="width: 242px;" name="pname" required><br>
                    <input type="number" class="form-control form-control-lg" min="10" placeholder="Enter Quantity in units(min:10)" style="width: 242px;" name="pq" required>
                    <input type="hidden" value="4" name="status" />
                  <h5 align="left" style="color:red;"><i>please use '_' instead of space in product name(ex: sample_item_desc)</i></h5>
                    <input type="submit" class="btn btn-lg btn-primary" style="margin-right: 900px;" value="Add">
				  				  
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