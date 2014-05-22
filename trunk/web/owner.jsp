<%-- 
    Document   : owner
    Created on : Jan 30, 2014, 5:18:51 PM
    Author     : hari
--%>    
              
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
                  
                      <li><a class="current"  href="owner.jsp">Home</a></li>
                                               <li><a href="viewcarryouts.jsp">View Carry outs</a> </li>  
                            <li><a href="viewpartie.jsp">View Parties</a> </li> 
                            <li><a href="viewcatering.jsp">View Catering</a> </li> 
                            <li><a href="viewdeliveries.jsp">View Deliveries</a> </li> 
                               <li><a href="index.jsp">logout</a></li> 
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
       <div class="block-2 pad-1">
       	<div class="col-1">
        	 <div class="box-1">
            	  <div class="extra-wrap">
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
       			<h3 class="h3-line-2">Most delicious:</h3>
            </div>
            <div class="box-3">
            	<div>
                	<div class="img-border"><img src="images/page1-img2.jpg" alt=""></div>
                	<p class="border-2"><span class="it-bold clr-1">Vivamus hendrerit</span><br>mauris ut dui gravida ut rra lectus incidunt. Cras mattis tempor eros nec tristique. </p>
                	<a href="#" class="link">read more</a>
                </div>
                <div>
                	<div class="img-border"><img src="images/page1-img3.jpg" alt=""></div>
                	<p class="border-2"><span class="it-bold clr-1">Cras mattis tempor eros nec </span><br>tristique Sed sed felis arcu, vel vehicula augue maecenas faucibus sagittis.</p>
                	<a href="#" class="link">read more</a>
                </div>
                <div>
                	<div class="img-border"><img src="images/page1-img4.jpg" alt=""></div>
                	<p class="border-2"><span class="it-bold clr-1">Sed sed felis arcu, vel </span><br>vehicula augue  maecenas faucibus sagittis cursus. Fusce tincidunt tellus eget.</p>
                	<a href="#" class="link">read more</a>
                </div>
                <div class="last">
                	<div class="img-border"><img src="images/page1-img5.jpg" alt=""></div>
                	<p class="border-2"><span class="it-bold clr-1">Maecenas faucibus sagittis</span><br>cursus fusce tincidunt, tellus eget tristique cursus orci mi iaculis sem sit amet.</p>
                	<a href="#" class="link">read more</a>
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