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
        <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=" "><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
                 <li><a  href="menuitem.jsp">Menu</a></li>
                              <li><a href="loca.jsp">Location  </a></li> 
                            <li><a href="Details.jsp">Edit Details </a></li>
                            <li><a href="FeedBack.jsp">FeedBack</a></li>
                            <li><a href="cont.jsp">Contact</a></li>
                          <li><a href="log.jsp">Logout</a></li>
            </ul>
            <div class="clear"></div>
         </nav>
      <div id="slide">		
            <div class="slider">
                <ul class="items">
                    <li><img src="images/slider-1.JPG" alt="" /></li>
                    <li><img src="images/slider-2.JPG" alt="" /></li>
                    <li><img src="images/slider-3.JPG" alt="" /></li>
                </ul>
               
          </div>
          <div class="phone-number"><h2>The Hub of <span>delicious food </span></h2></div>	
      </div> 
        
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
       	<h3 class="h3-line"> Welcome <%=session.getAttribute("customer") %></h3>
            
            <div class="wrap">
                <%
                String s=session.getAttribute("customer").toString();
                        String val =request.getParameter("val"); 
                            if(val!=null) 
                                          {  if(val.equals("1")) 
                                          {%>    <label style="color:purple"> Successful </label> <% }else if(val.equals("2")) 
                                          {%>    <label style="color:purple">Successful </label> <% } else if(val.equals("3")) 
                                          {%>    <label style="color:purple">Successful</label> <% }  else if(val.equals("4")) 
                                          {%>    <label style="color:purple">Successful </label> <% } }  %>
                                          
                  <%   
                  
                  
                  
                  
ResultSet rsw=st.executeQuery("select * from membership where cname='"+s+"'");

if(rsw.next()){
    String ssw= rsw.getString(5);
 out.println(" <h2> "+ssw+"</h2>");
 
}
                  
                  
                  
                  
                  
ResultSet rs=st.executeQuery("SELECT * FROM delivary WHERE count BETWEEN 19 AND 200 AND name = '"+s+"' ");
if(rs.next())
{
    
ResultSet rss=st.executeQuery("select * from membership where cname='"+s+"'");

if(rss.next()){
 //out.println("1");
}else{
    ResultSet ro=st.executeQuery("select count(*) from membership");
ro.next(); 
int ms=ro.getInt(1)+1;                            System.out.println(" count:"+ms );

//SELECT customer_id FROM `customerdetails` WHERE cname ='hari' 
  //SELECT * FROM `customerdetails` WHERE cname='hari'
ResultSet ro1=st.executeQuery("SELECT * FROM `customerdetails` WHERE cname ='"+s+"'"); 
ro1.next(); 
int comid=ro1.getInt(1) ;                            System.out.println(" count:"+comid ); 

PreparedStatement pst = con.prepareStatement("insert into membership values(?,?,?,?,?)");
pst.setInt(1,comid);
pst.setString(2,s);
pst.setInt(3,ms); 
pst.setString(4,"active"); 
pst.setString(5," Discount 10% ");

int io=pst.executeUpdate();
if(io>0)
{
    //out.println("2");
   }else
    out.println("...");

            } 
    
%>  <% } 


ResultSet rsp=st.executeQuery("SELECT * FROM bookparty  WHERE nofpeople BETWEEN 45 AND 1000 AND name = '"+s+"' ");
if(rsp.next())
{
    
ResultSet rss=st.executeQuery("select * from membership where cname='"+s+"'");

if(rss.next()){
    String ssss= rss.getString(5);
 //out.println(""+ssss);
 
}else{
    ResultSet ro=st.executeQuery("select count(*) from membership");
ro.next(); 
int ms=ro.getInt(1)+1;                            System.out.println(" count:"+ms );

//SELECT customer_id FROM `customerdetails` WHERE cname ='hari' 
  //SELECT * FROM `customerdetails` WHERE cname='hari'
ResultSet ro1=st.executeQuery("SELECT * FROM `customerdetails` WHERE cname ='"+s+"'"); 
ro1.next(); 
int comid=ro1.getInt(1) ;                            System.out.println(" count:"+comid ); 
PreparedStatement pst = con.prepareStatement("insert into membership values(?,?,?,?,?)");
pst.setInt(1,comid);
pst.setString(2,s);
pst.setInt(3,ms); 
pst.setString(4,"active"); 
pst.setString(5," Discount 10% ");
int io=pst.executeUpdate();
if(io>0)
{
    
out.println("2");
   }else
    out.println("...");

            }  
}





ResultSet rsc=st.executeQuery("SELECT * FROM carryouts  WHERE  count BETWEEN 45 AND 1000 AND name = '"+s+"' ");
if(rsc.next())
{
    
ResultSet rss=st.executeQuery("select * from membership where cname='"+s+"'");

if(rss.next()){
// out.println("1 cy");
}else{
    ResultSet ro=st.executeQuery("select count(*) from membership");
ro.next(); 
int ms=ro.getInt(1)+1;                            System.out.println(" count:"+ms );

//SELECT customer_id FROM `customerdetails` WHERE cname ='hari' 
  //SELECT * FROM `customerdetails` WHERE cname='hari'
ResultSet ro1=st.executeQuery("SELECT * FROM `customerdetails` WHERE cname ='"+s+"'"); 
ro1.next(); 
int comid=ro1.getInt(1) ;                            System.out.println(" count:"+comid ); 
PreparedStatement pst = con.prepareStatement("insert into membership values(?,?,?,?,?)");
pst.setInt(1,comid);
pst.setString(2,s);
pst.setInt(3,ms); 
pst.setString(4,"active"); 
pst.setString(5," Discount 10% ");

int io=pst.executeUpdate();
if(io>0)
{
    
out.println("2 cy");
   }else
    out.println("...");

            }  
}
//	


ResultSet rscc=st.executeQuery("SELECT * FROM catering WHERE  countofp BETWEEN 45 AND 1000 AND name = '"+s+"' ");
if(rscc.next())
{
    
ResultSet rss=st.executeQuery("select * from membership where cname='"+s+"'");

if(rss.next()){
 out.println("1 lll");
}else{
    ResultSet ro=st.executeQuery("select count(*) from membership");
ro.next(); 
int ms=ro.getInt(1)+1;                            System.out.println(" count:"+ms );

//SELECT customer_id FROM `customerdetails` WHERE cname ='hari' 
  //SELECT * FROM `customerdetails` WHERE cname='hari'
ResultSet ro1=st.executeQuery("SELECT * FROM `customerdetails` WHERE cname ='"+s+"'"); 
ro1.next(); 
int comid=ro1.getInt(1) ;                            System.out.println(" count:"+comid ); 
PreparedStatement pst = con.prepareStatement("insert into membership values(?,?,?,?,?)");
pst.setInt(1,comid);
pst.setString(2,s);
pst.setInt(3,ms); 
pst.setString(4,"active"); 
pst.setString(5," Discount 10% "); 

int io=pst.executeUpdate();
if(io>0)
{
    
out.println("2ll");
   }else
    out.println("...");

            }  
}





%>                        
                                          
                                          
                <dl class="adr">
                   <fieldset>
                <form action="UserPage.jsp" method="post" > <h3>
                    <input type="Submit" value="For CarryOut"></h3>
                </form>
                  <form name="f1" action="Bookparty.jsp" method="post"><h3>
                      <input type="Submit" value="Book For Party"></h3>
                  </form>
                  <form action="Catering.jsp" method="post" > <h3>
                    <input type="Submit" value="For Catering"></h3>
                </form>
                   <form action="Delivery.jsp" method="post" ><h3> 
                    <input type="Submit" value="For DoorDelivery"></h3>
                   </form>
                 </fieldset>
                </dl>
                <dl class="adr last">
                     
                </dl>
            </div>
        </div>
         
       </div>
    </section> 

<!--==============================footer=================================-->
<footer>
        <div class="main">
        	<div class="aligncenter">
            	<span>Clepriya.in &copy; 2011</span>
                <a rel="nofollow" class="link" target="_blank" href="http://www.Clepriya.in/">Priya Indian Cuisine</a>
            </div>
        </div>
    </footer>			 
</div> 
</div>       
</body>
</html>                 