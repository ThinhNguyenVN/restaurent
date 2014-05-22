

 <%@page import="java.sql.*"%>

 <%
  
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","root");
                Statement st=con.createStatement();


%>
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
                             <li><a href="index.jsp">logout</a></li>
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
       	<div class="col-1"><h2 class="h2-line">Menu list   </h2>
            
        	 <div class="box-1"> 
            	  <div class="extra-wrap">
                      
                      
                       
            <div class="wrap">
               
                
                  <h5 class="p1"> <a href="updatemenu.jsp?val=1">Update menu Items</a>  &nbsp;&nbsp;&nbsp;
                                                 <a href="updatemenu.jsp?val=2">ADD New Item</a> </h5>
                  <%      String val=request.getParameter("val");
                                                if(val!=null )
                                                { 
                                                       if(val.equals("1"))
                                                       {  %> 
                                                       <form action="updatemenudb.jsp"method="post">
                <table border="2" >
                                <tr style="color:#459a6f "> 
                                                           <th>Name </th><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th>price</th> <td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th>Description</th> <td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           
                                                           <th>Action</th><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                           <%
                               ResultSet rs= st.executeQuery("select * from menu"); 
                              while(rs.next())  { %>
                                <input type="hidden" name="id" value="<%=rs.getString(1)%>">
                              <tr  align="center" style="color:#080707 "> <td><%=rs.getString(2)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(3)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(5)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                        
                                                         
                                                         <td><input type="submit" value="Update"></td> 
                              </tr>  <%  }  %>  </table></form>
                
                <%                                           
                                                             }else  if(val.equals("2"))
                                                       {   
                                                           %> 
                                                           
                 
                <form id="form"action="menudb.jsp" method="post"  enctype="multipart/form-data"  >
              <fieldset>  <label><strong>Food Item Name:  </strong><input name="name" type="text"  required="required"><strong class="clear"></strong></label>
                <label><strong>Price :</strong><input name="number"  type="number"   pattern="[0-9]"    required="required" /><strong class="clear"></strong></label>
                
                <label><strong>Description : </strong><textarea name="descri"  required="required" ></textarea><strong class="clear"></strong></label>
                <label>     <strong>  </strong> <input type="submit" value="ADD ITEM"><strong class="clear"></strong></label> 
                </fieldset>   </form> 
         
                <%                                                
                                                             }else if(val.equals("3"))
                            { %>    <label style="color:purple">Inserted Successfully </label> <%  }else if(val.equals("4"))
                            { %>    <label style="color:purple">Updated Successfully </label> <%  }else if(val.equals("5"))
                            { %>    <label style="color:purple"> Inserted or Updated failed:-photo format should be jpg or png only</label> <%  } } %>
            
            
            
            
            </div>
                      
                	  </div>
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
                             