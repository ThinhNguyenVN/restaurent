<%@include file="dbcon.jsp" %>
      <!DOCTYPE html>
<html lang="en">
<head> <title>Priya India Cuisine</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
    <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script>
		$(document).ready(function(){				   	
			$('.slider')._TMS({
				show:0,
				pauseOnHover:true,
				prevBu:false,
				nextBu:false,
				playBu:false,
				duration:700,
				preset:'fade',
				pagination:true,
				pagNums:false,
				slideshow:8000,
				numStatus:false,
				banners:false,
				waitBannerAnimation:false,
				progressBar:false
			})		
		});
	</script> 
</head>
<body>
<div class="bg-top">
<div class="bgr">
  <!--==============================header=================================-->
    <header>
        <h1>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=""><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
                 <li><a class="current" href="index.jsp">Home</a></li>
                            <li><a href="menuitems.jsp">Menu</a></li> 
                              <li><a href="location.jsp">Location  </a></li> 
                            <li><a href="membership.jsp">Membership Details </a></li>
                            <li><a href="timing.jsp">Timings</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                             
            </ul>
            <div class="clear"></div>
         </nav>
        <div id="slide">		
            <div class="slider">
                <ul class="items">
                    <li><img src="images/slider-1.JPG" alt="" /></li>
                    <li><img src="images/slider-2.JPG" alt="" /></li>
                    <li><img src="images/slider-3.JPG" alt="" /></li>
                </ul>
               
          </div>
          <div class="phone-number"><h2>The Hub of <span>delicious food </span></h2></div>	
      </div> 
    </header>  
  <!--==============================content================================-->
    <section id="content"><div class="ic"></div>
       <div class="block-1">
       	<div class="border-right">
        	<div class="block-1-title">
            	<span> </span>
                <div class="text-1">Best<strong>cuisine</strong></div>
                <strong class="clear"></strong>
            </div>
<!--            <p class="border-1"> </p><a href="#" class="link-1">read more</a>-->
        </div>
        <div class="border-right">
        	<div class="block-1-title">
            	<span> </span>
                <div class="text-2">Good<strong>rest</strong></div>
                <strong class="clear"></strong>
            </div>
<!--            <p class="border-1"></p><a href="#" class="link-1">read more</a>-->
        </div>
        <div class="border-right">
        	<div class="block-1-title">
            	<span> </span>
                <div class="text-3">Great<strong>service</strong></div>
                <strong class="clear"></strong>
            </div>
       <!--      <p class="border-1"> </p>
           <a href="#" class="link-1">read more</a>-->
        </div>
        <div class="block-1-last">
        	<div class="block-1-title">
            	<span> </span>
                <div class="text-4">Best<strong>cooks</strong></div>
                <strong class="clear"></strong>
            </div>
<!--            <p class="border-1"></p><a href="#" class="link-1">read more</a>-->
        </div>
       </div>
        <div class="block-2 pad-1">
       	<div class="col-1">
        	<h2 class="h2-line">We are glad to invite you!<strong>The place where you feel bliss</strong></h2>
            <div class="box-1">
            	<div class="img-border img-indent"><img src="images/page1-img2.jpg" alt=""></div>
                <div class="extra-wrap">
                	<p class="it-bold p2">  </p>
                     <p class="border-1">  <a href=" " class="link"> </a><br> <br> <br> </p>
                    
                </div>
            </div>
        </div>
        <div class="col-2 left-2">
        	<h3 class="h3-line top-1">Quote of The Day</h3>
            <div class="box-2 top-2">
                <div class="comment border-1">
                    <p><img src="images/comment-top.png" alt="" >
                        <%ResultSet rs=st.executeQuery("select * from testmessage");
                        if(rs.next()){
                        %><span class="clr-1"></span>
                         <%=rs.getString(2)%>
                        <img src="images/comment-bottom.png" alt="" class="second"></p>
                    <span class="clr-1"><strong> <%=rs.getString(3)%></strong> <i>(<%=rs.getString(4)%>)</i></span>
                    <%}%>
                    
<!--                     <p><img src="images/comment-top.png" alt="" ><span class="clr-1">Vivamus hendrerit mauris ut dui</span> gravida ut viverra lectus incidunt. Cras mattis tempor eros nec tristique. Sed sed felis arcu, vel vehicula.<img src="images/comment-bottom.png" alt="" class="second"></p>
                    <span class="clr-1"><strong>Tina Smith</strong> <i>(top manager)</i></span>-->
                
                    
                </div>
                 
             </div> 
        </div>
  <div class="col-4 left-2">
        	<h3 class="h3-line "> Login Form</h3>
            <form id="form"action="logindb.jsp?val=1" method="post" >
              <fieldset>
                  <%
                        String val =request.getParameter("val"); 
                            if(val!=null) 
                                          {%>    <label style="color:purple">Invalid Login Details </label> <%  }  %>
                <label><strong>UserName:</strong><input name="name" type="text"  required="required"><strong class="clear"></strong></label>
                <label><strong>Password:</strong><input name="password" type="password"  required="required"><strong class="clear"></strong></label>
                <label><strong>User Type</strong><select name="type" required="required">
                                    <option value="">Select</option>
                                    <option value="customer">Customer</option>
                                    <option value="employee">Employee</option>
                                    <option value="owner">Owner</option>
                                </select> <strong class="clear"></strong></label>
                
                <label>     <strong> <input type="submit" value="Sign In"> </strong></label> 
               
                                 
                
                                 <a href="registration.jsp" style="color:#e00d0c ">Registration</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="forgotpass.jsp" style="color:#e00d0c ">Forgot Password</a>
              
                               
              
                
               </fieldset>  
                             
                
            </form> 
        </div>
                 <div class="clear"></div>
                <div class="block-3">
        	<div class="h3">
       			<h3 class="h3-line-2">Most delicious:</h3>
            </div>
            <div class="box-3">
            	<div>
                	<div class="img-border"><img src="images/page1-img2.jpg" alt=""></div>
                        <p class="border-2"><span class="it-bold clr-1"> </span></p> 
                </div>
                <div>
                	<div class="img-border"><img src="images/page1-img3.jpg" alt=""></div>
                	<p class="border-2"><span class="it-bold clr-1"> </span></p> 
                </div>
                <div>
                	<div class="img-border"><img src="images/page1-img4.jpg" alt=""></div>
                	<p class="border-2"><span class="it-bold clr-1"> </span></p> 
                </div>
                <div class="last">
                	<div class="img-border"><img src="images/page1-img5.jpg" alt=""></div>
                	<p class="border-2"><span class="it-bold clr-1"> </span></p> 
                </div>
            </div>
        </div>
       </div>
  </section>
<!--==============================footer=================================-->
 <footer>
        <div class="main">
        	<div class="aligncenter">
            	<span>Clepriya.in &copy; 2011</span>
                <a rel="nofollow" class="link" target="_blank" href="http://www.Clepriya.in/">Priya Indian Cuisine</a>
            </div>
        </div>
    </footer>	
</div> 
</div>       
</body>
</html>