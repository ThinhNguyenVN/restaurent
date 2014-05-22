 
<%@page import="java.sql.ResultSet"%>
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
       <script type="text/javascript">
      function onChangeTest(changeVal) {     
          window.location = 'logemployee.jsp?v='+changeVal.value; 
  } 
     </script> 
</head>
<body>
<div class="bg-top">
<div class="bgr">
  <!--==============================header=================================-->
    <header>
        <h1>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html"><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
                  
                      <li><a class="current"  href="owner.jsp">Home</a></li>
                                               <li><a href="viewcarryouts.jsp">View Carry outs</a> </li>  
                            <li><a href="viewpartie.jsp">View Parties</a> </li> 
                            <li><a href="viewcatering.jsp">View Catering</a> </li> 
                            <li><a href="viewdeliveries.jsp">View Deliveries</a> </li> 
                           <li><a href="index.jsp">Logout</a></li>
             
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
       <div class="block-2 pad-1">
       	<div class="col-1"><h2 class="h2-line">View MemberShip Details    </h2>
            
        	 <div class="box-1"> 
            	  <div class="extra-wrap">
                       
                      </select></form>
                    
             <table border="2" >  
 
                                <tr style="color:#459a6f "><th>Customer ID </th> <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</td>
                                                           <th> Customer Name </th><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th>MemberShip ID</th> <td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th>DisCount </th> <td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th>Action</th> 
                                                                                           
                                </tr>  <%//SELECT *  FROM  `membership` 
                                ResultSet rss= st.executeQuery("select * from  `membership` ");  
                              while(rss.next())  { %>
                               <form action="memberss.jsp?q=9"method="post" >
                               
                               <input type="hidden" name="id" value="<%=rss.getInt(1)%>"> 
                                
                              <tr  align="center" style="color:#080707 "><td><%=rss.getInt(1)%> </td><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                         <td><%=rss.getString(2)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rss.getInt(3)%></td> <td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td> <input type="text" name="dis" > value="<%=rss.getString(5)%>"> >  </td> <td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td> <input type="submit" value="Update">   </td>  
                              </tr></form>
                               
                               
                               
                               <%  }   %> </table>
            
           
                      
                      
                      
                      
                      
                	  </div>
            </div>
        </div>
        <div class="col-2 left-2">
        	<h3 class="h3-line top-1">More Options</h3>
            <div class="box-2 top-2">
                   
                            <ul class="list-1">
                      <li><a href="menu.jsp">Menu</a> </li>  
                            <li><a href="updatemenu.jsp">Update Menu Details  </a></li>  
                            <li><a href="detailesofemployee.jsp">Employee Details </a></li>
                            <li><a href="logemployee.jsp">Employee log Details </a></li>
                            <li><a href="detailsofcustomers.jsp">Customers Details</a></li>
                            <li><a href="members.jsp">Membership Details</a></li>
                             <li><a href="testimonials.jsp"> update Quote of The Day</a></li> 
                           
                            </ul>
                 
                 </div> 
        </div>
        <div class="clear"></div>
        <div class="block-3">
        	<div class="h3"> 
            </div>
            <div class="box-3">
            	 
                	 
                <div class="last">
                	
    
                </div>
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
                             