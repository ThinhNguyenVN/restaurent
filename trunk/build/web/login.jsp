            	
                          
 <!DOCTYPE html>
<html lang="en">
<head>
    <title>Priya India Cuisine</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
	 
</head>
<body>
<div class="bg-top">
<div class="bgr">
  <!--==============================header=================================-->
    <header>
        <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
               <li><a  href="index.jsp">Home</a></li> <li><a href="menuitems.jsp">Menu</a></li> 
                              <li><a href="location.jsp">Location  </a></li> 
                            <li><a href="membership.jsp">Membership Details </a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                             <li><a  class="current" href="login.jsp">Login</a></li>
            </ul>
            <div class="clear"></div>
         </nav>
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
       <div class="block-2 pad-2">
        <div class="col-5">
<!--        	<h3 class="h3-line">Contact info</h3>
             -->
            <div class="wrap">
            	<dl class="adr">
                   
                </dl>
                <dl class="adr last">
                     
                </dl>
            </div>
        </div>
        <div class="col-4 left-2">
        	<h3 class="h3-line"> Login Form</h3>
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