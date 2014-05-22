
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
                             <li><a href="logout.jsp">Logout</a></li> 
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
           <%String v=request.getParameter("val");
           if(v!=null){
               if(v.equals("1"))
                { 
          
           %>
       	<div class="col-1"><h2 class="h2-line">View Pending CarryOuts   </h2>
              <div class="box-1"> 
            	  <div class="extra-wrap">
                       <table border="2" >
                                <tr style="color:#459a6f "><th>SelectediItems </th> <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                                 <th> Time </th>        <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>  
                                 <th>Date </th>    <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td> 
                                 <th>Name  </th> 
                                </tr>
                                <%    ResultSet rs= st.executeQuery("select * from carryouts where statuss='pending'"); 
                                //String imgnme =email.replaceAll("\\.", "")+"."+p1a[1];
                               while (rs.next())   { %>
 
 
                               <tr align="center">  <td><%=rs.getString(2) %>  </td><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>  
                                                     <td> <%=rs.getString(3) %> </td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                     <td> <%=rs.getString(4) %> </td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                       <td> <%=rs.getString(5) %></td> 
                                                        
   </tr>   <%    }   %>
                       </table>
                        </div>  </div> </div>
                      <%} if(v.equals("2"))
                                          { %>
           	<div class="col-1"><h2 class="h2-line">View Completed CarryOuts   </h2>
              <div class="box-1"> 
            	  <div class="extra-wrap">
                       <table border="2" >
                               
                       <tr style="color:#459a6f "><th>SelectediItems </th> <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                                 <th> Time </th>        <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>  
                                 <th>Date </th>    <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td> 
                                 <th>Name  </th> 
                                </tr>
                                <%    ResultSet rs= st.executeQuery("select * from carryouts where statuss='complete'"); 
                                //String imgnme =email.replaceAll("\\.", "")+"."+p1a[1];
                               while (rs.next())   { %>
 
 
                               <tr align="center">  <td><%=rs.getString(2) %>  </td><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>  
                                                     <td> <%=rs.getString(3) %> </td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                     <td> <%=rs.getString(4) %> </td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                       <td> <%=rs.getString(5) %></td> 
   </tr>   <%    }   %>
                       </table>
                        </div>  </div> </div>
           <%} 
           
 
}else{%>
           
           	<div class="col-1">   <h5 class="p1"> <a href="viewcarryouts.jsp?val=1">View Pending Carryout Details </a>   <br>             <a href="viewcarryouts.jsp?val=2">View Completed Carryout Details</a> </h5>    
              <div class="box-1"> 
            	  <div class="extra-wrap">
                        
                        </div>  </div> </div>
           
           <%}%> 
                       
                       
                       
                       
        <div class="col-2 left-2">
        	<h3 class="h3-line top-1">More Options</h3>
            <div class="box-2 top-2">
                   
                            <ul class="list-1">
                        <li><a href="menu.jsp">Menu</a> </li>  
                            <li><a href="updatemenu.jsp">Update Menu Details  </a></li> 
                            <li><a href="detailesofemployee.jsp">Employee Details </a></li>
                            <li><a href="detailsofcustomers.jsp">Customers Details</a></li>
                             <li><a href="testimonials.jsp"> Update Quote of The Day</a></li> 
                            <li><a href="logout.jsp">Logout</a></li> 
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
      <p>� Clepriya.in &copy; 2011<br>
            <a rel="nofollow" class="link" target="_blank" href="http://www.clepriya.in/">Priya Indian Cuisine</a>
          
      </p> 
  </footer>	
</div> 
</div>       
</body>
</html>                     
                             