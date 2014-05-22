<%-- 
    Document   : detailofemployes
    Created on : Feb 10, 2014, 7:03:54 PM
    Author     : hari
--%> 
<%String emp=session.getAttribute("emp").toString();
       session.setAttribute("emp", emp);
       //String uid = session.getAttribute("uid").toString(); session.setAttribute("uid",uid);
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
        <h1>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html"><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
                  
                      <li><a class="current"  href="employee.jsp">Home</a></li>
                                               <li><a href="viewcarryout.jsp">View Carry outs</a> </li>  
                            <li><a href="viewparties.jsp">View Parties</a> </li> 
                            <li><a href="viewcaterings.jsp">View Catering</a> </li> 
                            <li><a href="viewdeliverie.jsp">View Deliveries</a> </li> 
                             <li><a href="logout.jsp">logout</a></li> 
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
       <%@page import="java.sql.*"%>

 <%
  
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","root");
                Statement st=con.createStatement();


%>
       <div class="block-2 pad-1">
       	 	<div class="col-1"><h2 class="h2-line">Employee  Details    </h2>
            
        	 
                       
                                                 
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
                                ResultSet rs= st.executeQuery("select * from employeedetails where name='"+emp+"'"); 
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
                             </div>  
        <div class="col-2 left-2">
        	<h3 class="h3-line top-1">More Options</h3>
            <div class="box-2 top-2">
                   
                       <ul class="list-1">
                        <li><a href="menus.jsp">Menu</a> </li> 
                            
                            <li><a href="detailsofcustomerss.jsp">Customers Details</a></li> 
                             
                            </ul>
                 
                 
                 </div> 
        </div>
        <div class="clear"></div>
      
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

 
      