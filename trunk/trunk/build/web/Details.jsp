

                       
 <%@page import="java.sql.Statement"%>
 <%@include file="dbcon.jsp" %>
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
        <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html"><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
               <li><a  href="menuitem.jsp">Menu</a></li>
                 <li><a href="loca.jsp">Location  </a></li> 
                            <li><a class="current"  href="Details.jsp">Edit Details </a></li>
                            <li><a href="FeedBack.jsp">FeedBack</a></li>
                            <li><a href="cont.jsp">Contact</a></li>
                          <li><a  href="log.jsp">Logout</a></li>
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
        	<h3 class="h3-line">Edit Details Form</h3>
            
              <fieldset>
                  <%
                      Statement state=con.createStatement();
                      ResultSet rs=state.executeQuery("Select * from customerdetails where cname='"+session.getAttribute("customer")+"'");
                  while(rs.next())
                  {
                  %>
                  <form id="form" name="f2" onclick="return validate();" action="Update.jsp">
                  <table>
                      <tr><td>Email:</td><td><input type="email" name="mail" required="required" value='<%=rs.getString("cemailid")%>' onclick="this.value='';"></td></tr>
                      <tr><td>PhoneNumber:</td><td><input type="tel" pattern="[0-9]{10,10}" size="10" maxlength="10" name="number" required="required" value='<%=rs.getString("mobile_no")%>' onclick="this.value='';"></td></tr>
                  <tr><td>Address:</td><td><textarea name="address"><%=rs.getString("address")%></textarea></td></tr>
                  </table>
                  <input type="submit" value="Update Details">
                  </form>
                <%
                  }
                %>
              </fieldset>
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