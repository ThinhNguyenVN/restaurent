 
                 	
                          
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
	 
    <script type="text/javascript">
    function fun()
    {
        if(document.f.uname.value=="")
                    {
                        alert("Enter user name");
                        document.f.uname.focus();
                        return false;
                    } else if(!(/^[A-Za-z ]+$/.test(document.f.uname.value)))
                            {
                            alert('Enter Valid User Name');
                             document.f.uname.focus();
                            return false;
                            }  else if(document.f.password.value=="")
                    {
                        alert("Enter password");
                        document.f.password.focus();
                        return false;
                    }

                       else if(document.f.password.value.length<4)
                    {
                        alert("Password must be greater than 4");
                        document.f.password.focus();
                        return false;
                    } else if(document.f.email.value=="")
                {
                    alert("Enter Valid email");
                    document.f.email.focus();
                    return false;
                }

                   else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.f.email.value)))
                   {
				alert("Please enter valid Email(Eg: you@example.com)");
				document.f.email.focus();
				return false;
			}
                else if(document.f.number.value=="")
                    {
                        alert("Enter mobile number");
                        document.f.number.focus();
                        return false;
                    }

                      else if(isNaN(document.f.number.value))
                         {
                             alert("Enter only numbers");
                             document.f.number.focus();
                             return false;
                         }

                    else if(document.f.number.value.length!=10)
                     {
                        alert("Enter valid phone number");
                        document.f.number.focus();
                        return false;
                     }

                     else if(document.f.gender.value=="")
                     {
                        alert("Select gender");
                         document.f.gender.focus();
                        return false;

                     } 
                     else if(document.f.message.value=="")
                     {
                        alert("Enter Address");
                         document.f.message.focus();
                        return false;

                     }  
                else
                         {
                    return true;
                         }
                }
</script>

    
</head>
<body>
<div class="bg-top">
<div class="bgr">
  <!--==============================header=================================-->
    <header>
        <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html"><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
               <li><a  href="index.jsp">Home</a></li>
                            <li><a  href="menu.jsp">Menu</a></li>
                              <li><a href="location.jsp">Location  </a></li> 
                            <li><a href="membership.jsp">Membership Details </a></li>
                           <li><a href="timing.jsp">Timings</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                             
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
        	<h3 class="h3-line">Registration From</h3>
                <form id="form"action="logindb.jsp?val=2" method="post" name="f"  onsubmit="return fun()" >
              <fieldset>
                  <%
                        String val =request.getParameter("val"); 
                            if(val!=null) 
                                          {%>    <label style="color:purple"> Registration Successfully  </label> <%  }  %>
                <label><strong>UserName:</strong><input name="uname" type="text" ><strong class="clear"></strong></label>
                <label><strong>Password:</strong><input name="password" type="password"  ><strong class="clear"></strong></label>
                <label><strong>Your Email:</strong><input name="email" type="text" ><strong class="clear"></strong></label>
                <label><strong>Your Mobile No:</strong><input name="number"  type="text"><strong class="clear"></strong></label>
                <label><strong>Gender :</strong><select name="gender" >
                                    <option value="">Select</option>
                                    <option value="male"> Male</option>
                                    <option value="female">Female</option> 
                                </select> <strong class="clear"></strong></label>
                 <label><strong>Address:</strong><textarea name="message" rows="10" cols="15"></textarea><strong class="clear"></strong></label>
                
                <label>     <strong> <input type="submit" value="Sign UP"> </strong></label> 
                
                </fieldset>    </form>                              
                                	 
                  
                    
                
                
                
                
                
        </div>
       </div>
    </section> 

<!--==============================footer=================================-->
 <footer>
      <p>© Clepriya.in &copy; 2011<br>
            <a rel="nofollow" class="link" target="_blank" href="http://www.clepriya.in/">Priya Indian Cuisine</a>
          
      </p> 
  </footer>		 
</div> 
</div>       
</body>
</html>                 