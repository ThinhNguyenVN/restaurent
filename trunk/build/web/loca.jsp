<%-- 
    Document   : loca
    Created on : Feb 4, 2014, 3:15:32 PM
    Author     : hari
--%> 
<%@include file="dbcon.jsp" %>
  <!DOCTYPE html>
<html lang="en">
<head>     <title>Priya India Cuisine</title>
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
          <h1>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=""><img src="images/logo.png" alt=""></a></h1>
      <nav>  
            <ul class="menu">
                 <li><a  href="menuitem.jsp">Menu</a></li>
                 <li><a class="current" href="loca.jsp">Location  </a></li> 
                            <li><a href="Details.jsp">Edit Details </a></li>
                            <li><a href="FeedBack.jsp">FeedBack</a></li>
                            <li><a href="cont.jsp">Contact</a></li>
                          <li><a  href="log.jsp">logout</a></li>
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
        	<h3 class="h3-line">Location</h3>
            <div class="map img-border">
<iframe width="525" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Priya+restaurant++Chevrolet+Blvd,+Cleveland,+Ohio&amp;aq=&amp;sll=41.405994,-81.767421&amp;sspn=0.005118,0.009645&amp;t=h&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;ll=41.405972,-81.767142&amp;spn=0.006295,0.006295&amp;iwloc=A&amp;output=embed"></iframe> 
            </div>
            <div class="wrap">
            	<dl class="adr">
                  
  
                    <dt class="clr-3 it-bold">Priya Indian Cuisine </dt>
                    <dd>5747 Chevrolet Boulevard, <br>Cleveland, OHIO 44130</dd>
                    <dd><span>Telephone:</span><strong class="clr-2">+(440) 345-5599</strong></dd>
                    <dd><span>Fax:</span><strong class="clr-2">+(440) 345-5599</strong></dd>
                    <dd><span>Email:</span><a href="#" class="link">priya@priya.com</a></dd>
                </dl>
                <dl class="adr last">
                    <dt class="clr-3 it-bold">Priya restaurant</dt>
                    <dd>Chevrolet Blvd, <br> Cleveland, Ohio </dd>
                    <dd><span>Telephone:</span><strong class="clr-2">+440-345-5599</strong></dd>
                    <dd><span>Fax:</span><strong class="clr-2">+440-345-5510</strong></dd>
                    <dd><span>Email:</span><a href="#" class="link">prt@priya.com</a></dd>
                </dl>
            </div>
        </div>
        <div class="col-4 left-2">
        	<h3 class="h3-line top-1">Testimonials:</h3>
            <div class="box-2 top-2">
                <div class="comment border-1">
                    <p><img src="images/comment-top.png" alt="" >
                        <%ResultSet rs=st.executeQuery("select * from testmessage");
                        if(rs.next()){
                        %><span class="clr-1"></span>
                         <%=rs.getString(2)%>
                        <img src="images/comment-bottom.png" alt="" class="second"></p>
                    <span class="clr-1"><strong> <%=rs.getString(3)%></strong> <i>(<%=rs.getString(4)%>)</i></span>
                    <%}%>
                    
<!--                     <p><img src="images/comment-top.png" alt="" ><span class="clr-1">Vivamus hendrerit mauris ut dui</span> gravida ut viverra lectus incidunt. Cras mattis tempor eros nec tristique. Sed sed felis arcu, vel vehicula.<img src="images/comment-bottom.png" alt="" class="second"></p>
                    <span class="clr-1"><strong>Tina Smith</strong> <i>(top manager)</i></span>-->
                
                    
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