<%-- 
    Document   : detailesofemployee
    Created on : Jan 31, 2014, 3:57:51 PM
    Author     : hari
--%>  
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
       	<div class="col-1"><h2 class="h2-line">Employee  Details    </h2>
            
        	 
                          <h5 class="p1"> <a href="detailesofemployee.jsp?val=1">View Employee Details</a>  &nbsp;&nbsp;&nbsp;
                                                 <a href="detailesofemployee.jsp?val=2">ADD New Employee</a> </h5>  
                                                 <%      String val=request.getParameter("val");
                                                if(val!=null )
                                                { 
                                                       if(val.equals("1"))
                                                       {                                            
                                 
                                 %>
                                                 
                     <table border="2" >
                                <tr style="color:#459a6f "><th>Employee ID </th> <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</td>
                                                           <th>Name </th><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th>Email ID</th> <td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th>Mobile No</th> <td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th> Gender </th><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                           <th>Department</th><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                           <th>Dateofjoin</th><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                           <th>Address</th><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                           
                                </tr>  <%
                               ResultSet rs= st.executeQuery("select * from employeedetails"); 
                              while(rs.next())  { %>
                              <tr  align="center" style="color:#080707 "><td><%=rs.getString(1)%> </td><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                         <td><%=rs.getString(2)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(4)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(5)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(6)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(7)%></td>  <td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(8)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(9)%></td> 
                              </tr>  <%  }   %> </table>
                             </div> </div>
                                 
                                   <%   } else if(val.equals("2"))
                                          { %>
                                 
                           <h3>ADD New Employee From</h3>
                           <form id="form" action="empdb.jsp?val=1" method="post" >
              <fieldset>  
                <label><strong>Employee Name:</strong><input name="name" type="text"  required="required"><strong class="clear"></strong></label>
                <label><strong>Password:</strong><input name="password" type="password"  required="required"><strong class="clear"></strong></label>
                <label><strong>YourEmail:</strong><input name="email" type="email" required="required" /><strong class="clear"></strong></label>
                <label><strong>Your MobileNo:</strong><input name="number"  type="tel" size="10" pattern="[0-9]{10,10}" maxlength="10"  required="required" /><strong class="clear"></strong></label>
                <label><strong> Gender :</strong><select name="gender" required="required">
                                    <option value="">Select</option>
                                    <option value="male"> Male</option>
                                    <option value="female">Female</option> 
                                </select> <strong class="clear"></strong></label>
                 <label><strong>Department :</strong><input name="dept" type="text"  required="required"><strong class="clear"></strong></label>
                <label><strong>Dateofjoin :</strong> <select name="day" required="required">
                                    <option value="">Day</option>
                                    <% for(int i=1;i<=31;i++){  %>
                                    <option value="<%=i%>"><%=i%></option> 
                                    <%}%> 
                                </select><select name="month" required="required">
                                    <option value="">Month</option><option value="January">January</option><option value="February">February</option>
                                    <option value="March">March</option><option value="April">April</option><option value="May">May</option>
                                    <option value="June">June</option><option value="July">July</option><option value="August">August</option>
                                    <option value="September">September</option><option value="October">October</option><option value="November">November</option>
                                     <option value="December">December</option> 
                                    </select>   <select name="year" required="required">
                                    <option value="">Year</option>
                                    <% for(int i=1950;i<=2050;i++){  %>
                                    <option value="<%=i%>"><%=i%></option> 
                                    <%}%> 
                                </select>  <strong class="clear"></strong></label>
                <label><strong>Address:</strong><textarea name="address"  required="required" ></textarea><strong class="clear"></strong></label>
                
                 <label>     <strong> <input type="submit" value="ADD EMPLOYEE"> </strong></label>   
                    
                            </fieldset>	 
                    </form>
                            
                                 <%  }else if(val.equals("3"))
                                 {%> <h4> New Employee Added Successfully </h4>
                                   
                                 <%}
                       }  %> 
                       
                      
                	  </div>
            </div>
        </div>
<!--        <div class="col-2 left-3">
        	<h3 class="h3-line top-1">More Options</h3>
            <div class="box-2 top-2">
                   
                            <ul class="list-1">
                        <li><a href="menu.jsp">Menu</a> </li>  
                            <li><a href="updatemenu.jsp">Update Menu Details  </a></li> 
                            <li><a href="detailesofemployee.jsp">Employee Details </a></li>
                            <li><a href="detailsofcustomers.jsp">Customers Details</a></li>
                            <li><a href="logout.jsp">logout</a></li> 
                             <li><a href="testimonials.jsp"> update Testimonials</a></li> 
                            </ul>
                 
                 </div> 
        </div>-->
        
     
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
                                                        
                             