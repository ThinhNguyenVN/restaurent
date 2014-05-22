
 <%@include file="dbcon.jsp" %>
<%String emp=session.getAttribute("emp").toString();
       session.setAttribute("emp", emp);
 %> 
 <!DOCTYPE html>
<html lang="en">
<head>
    <title>Cookbook</title>
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
        <h1>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html"><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
                  
                         <li><a href="employee.jsp">Home</a></li>
                        <li><a  href="viewcarryout.jsp">View Carry outs</a> </li>  
                            <li><a   href="viewparties.jsp">View Parties</a> </li> 
                            <li><a  href="viewcaterings.jsp">View Caterings</a> </li> 
                            <li><a class="current" href="viewdeliverie.jsp">View Deliveries</a> </li> 
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
               
            
         <table border="2" >
                                <%
                               ResultSet rs= st.executeQuery("select * from menu   LIMIT 0,5"); 
                              while(rs.next())  { %>
                              <td  align="center" style="color:#080707 ">
<!--                              <td><%=rs.getString(1)%> </td><td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                                                         <td><%=rs.getString(2)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(3)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(4)%></td><td>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                                         <td><%=rs.getString(5)%></td>  -->
                                  <div class="img-border"><div><img src="<%=rs.getString(4)%>"  width="100" height="90" alt="<%=rs.getString(2)%>"></div>
                           <p><span class="it-bold clr-1"> <%=rs.getString(2)%> </span>
                                 </p>
               </div>
                              </td>  <%  }   %> </table>
                              <table border="2" >
                                <%
                               ResultSet r= st.executeQuery("select * from menu   LIMIT 5,10"); 
                              while(r.next())  { %>
                              <td  align="center" style="color:#080707 "> 
                                  <div class="img-border"><div><img src="<%=r.getString(4)%>"  width="100" height="90" alt="<%=r.getString(2)%>"></div>
                           <p><span class="it-bold clr-1"> <%=r.getString(2)%> </span> </p>
               </div>
                              </td>  <%  }   %> </table>
                              
                              <table border="2" >
                                <%
                               ResultSet r1= st.executeQuery("select * from menu   LIMIT 10,15"); 
                              while(r1.next())  { %>
                              <td  align="center" style="color:#080707 "> 
                                  <div class="img-border"><div><img src="<%=r1.getString(4)%>"  width="100" height="90" alt="<%=r1.getString(2)%>"></div>
                           <p><span class="it-bold clr-1"> <%=r1.getString(2)%> </span> </p>
               </div>
                              </td>  <%  }   %> </table>
                              <table border="2" >
                                <%
                               ResultSet r2= st.executeQuery("select * from menu   LIMIT 15,20"); 
                              while(r2.next())  { %>
                              <td  align="center" style="color:#080707 "> 
                                  <div class="img-border"><div><img src="<%=r2.getString(4)%>"  width="100" height="90" alt="<%=r2.getString(2)%>"></div>
                           <p><span class="it-bold clr-1"> <%=r2.getString(2)%> </span> </p>
               </div>
                              </td>  <%  }   %> </table>
                              
                               <table border="2" >
                                <%
                               ResultSet r21= st.executeQuery("select * from menu   LIMIT 20, 25"); 
                              while(r21.next())  { %>
                              <td  align="center" style="color:#080707 "> 
                                  <div class="img-border"><div><img src="<%=r21.getString(4)%>"  width="100" height="90" alt="<%=r21.getString(2)%>"></div>
                           <p><span class="it-bold clr-1"> <%=r21.getString(2)%> </span>  </p>
               </div>
                              </td>  <%  }   %> </table>
                              
                                 
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