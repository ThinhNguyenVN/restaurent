<%-- 
    Document   : testimonials
    Created on : Feb 3, 2014, 11:40:02 PM
    Author     : hari
--%> 
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
           <%String v=request.getParameter("val");
           if(v!=null){
               if(v.equals("1"))
                { 
          
           %>
       	<div class="col-1"><h2 class="h2-line"> Add Quote of The Day  Details  </h2>
              <div class="box-1"> 
            	  <div class="extra-wrap"> 
                           <form id="form" action="test.jsp?v=1" method="post" >
              <fieldset>  
                   <label><strong>Message:</strong><textarea name="message"  required="required" ></textarea><strong class="clear"></strong></label>
               
                <label><strong>Name:</strong><input name="name" type="text"  required="required"><strong class="clear"></strong></label>
                <label><strong>Designation :</strong><input name="desig" type="text"   required="required"><strong class="clear"></strong></label>
                 <label>     <strong> <input type="submit" value="ADD Test"> </strong></label>   
                    
                      </fieldset>	 
                    </form>
                      
                      
                      
                      
                                <%    %>    <%     %>
                       
                        </div>  </div> </div>
                      <%}else if(v.equals("2"))
                                          { %>  
           	<div class="col-1"><h2 class="h2-line">Update Quote of The Day  Details </h2>
              <div class="box-1"> 
            	  <div class="extra-wrap">
                      
                      <div class="wrap">
                      
                         <form   action="testimonials.jsp?val=9" method="post">
                       <table border="2" >
                                <tr style="color:#459a6f "><th>Message </th> <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                                 <th> Name  </th>       <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>  
                                <th>Designation : </th>    <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td> 
                                 <th> Action </th>     
                                </tr>
                                <%    ResultSet rs= st.executeQuery("select * from testmessage"); 
                                if(rs.next())   { %>
                                <input type="hidden" name="id" value="<%=rs.getString(1)%>">
                                <tr align="center" style="color:#000000 ">  <td> <%=rs.getString(2) %> </td>  <td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
  <td> <%=rs.getString(3) %>  <td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
  <td> <%=rs.getString(4) %> </td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td><td><input type="submit" value="Update"></td>  </tr>  
<%    }   %>
                       </table></form>
                        </div>  </div></div> </div>
           <%} else if(v.equals("4"))
                                          {%>
             <div class="col-1">   <h5 class="p1">   Added Successfully </h5>    
              <div class="box-1"> 
            	  <div class="extra-wrap">
                        
                        </div>  </div> </div>
           <%
               } else if(v.equals("5"))
                                          {%>
             <div class="col-1">   <h5 class="p1">   Update Successfully </h5>    
              <div class="box-1"> 
            	  <div class="extra-wrap">
                        
                        </div>  </div> </div>
           <%
               }else if(v.equals("9"))
                {       String idd=request.getParameter("id");     
int i=Integer.parseInt(idd);
                               ResultSet rs= st.executeQuery("select * from testmessage where 	id="+i); 
                              while(rs.next())  { %>
                              <div class="col-1"><h2 class="h2-line">Update Quote of The Day  Details </h2>
              <div class="box-1"> 
            	  <div class="extra-wrap">
                      
                      <div class="wrap">
                      
                                <form id="form"action="test.jsp?v=2" method="post"> 
                                     
                                     <fieldset>  
                                         <input type="hidden" name="id" value="<%=rs.getString(1)%>">
                                         <label><strong>>Message: </strong><textarea name="message"  required="required" ><%=rs.getString(2)%></textarea><strong class="clear"></strong></label>
               <label><strong> Name:  </strong><input name="name"  value="<%=rs.getString(3)%>" required="required"><strong class="clear"></strong></label>
               <label><strong>Designation :  </strong><input name="desi"  value="<%=rs.getString(4)%>" required="required"><strong class="clear"></strong></label>
                                       
                <label>     <strong>  </strong> <input type="submit" value="ADD ITEM"><strong class="clear"></strong></label> 
                </fieldset>   </form>   </div>  </div> </div></div>
                             <%  }  %>   
               <% }
}else{%>
           
           	<div class="col-1">   <h5 class="p1"> <a href="testimonials.jsp?val=1">Add Quote of The Day  Details </a>   <br>       
                                  <a href="testimonials.jsp?val=2">Upate Quote of The Day Details</a> </h5>    
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
                             