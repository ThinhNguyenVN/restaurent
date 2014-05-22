

                       
 <%@page import="java.sql.ResultSet"%>
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
        <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=" "><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
             <li><a  href="menuitem.jsp">Menu</a></li>
                              <li><a href="loca.jsp">Location  </a></li> 
                            <li><a href="Details.jsp">Edit Details </a></li>
                            <li><a href="FeedBack.jsp">FeedBack</a></li>
                            <li><a href="cont.jsp">Contact</a></li>
                          <li><a href="log.jsp">Logout</a></li> 
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
        <div class="block-2 pad-1">
       	<div class="col-1">
        	<h3 class="h3-line">Welcome <%=session.getAttribute("customer") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Advance booking Carryout 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="user.jsp">Back</a></h3>
            
            <div class="wrap">
            	<dl class="adr">
                   
                <fieldset>
                   <form id="form" action="Order.jsp" method="get" >
              <fieldset>
                  <table>
                   
                  <%
                      ResultSet rs=st.executeQuery("Select * from Menu");
                      while(rs.next())
                      {
                          
                  %>
                  <tr>
                      <td> <input type="checkbox" name="cg" value="<%=rs.getString("name")%>"></td>
                      <td> <%=rs.getString("name") %></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <input type="hidden" name="price" value="<%=rs.getString("price")%>">
                      <td><img src="<%=rs.getString("image")%>" width="100" height="95" ></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                   <td><%=rs.getString("price")%></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                      <td><input type="number" name="count" ></td> </tr>
                  <% }%>  
                  </table> 
                  <label><strong>Time :</strong> <input type="number"  placeholder="Hours"  name="hr" max="23" min="0" ><input placeholder="Minits"   type="number" name="min" max="59" min="0">  <strong class="clear"></strong></label>
                    
                    
                  <label>   <input type="Submit" value="Place Order"></label> 
                  </fieldset>
            </form>
                  
                  
                </dl>
               
            </div>
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