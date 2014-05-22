
<%@include  file="dbcon.jsp" %>



<%String emp=session.getAttribute("emp").toString();
       session.setAttribute("emp", emp);
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
     <script language="javascript">

function printfn()
{
	//document.getElementById('1001a1').innerHTML='';
	if(document.getElementById('down-time'))
	document.getElementById('down-time').style.display='none';	
	window.print();
}

var DepositStartDate='';
var DepositEndDate='';
var CurrentDate='2014,01,06';

var EnableCaptcha='';
  var CurrentDate='2014,01,06';  
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
                  
                      <li><a href="employee.jsp">Home</a></li>
                        <li><a  class="current"  href="viewcarryout.jsp">View Carry outs</a> </li>  
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
       <div class="block-2 pad-1">
         <%
String q=request.getParameter("q");
if(q!=null)
       {
         if(q.equals("9"))
       {  
           String i=request.getParameter("id"); 
           int id=Integer.parseInt(i);
    
    ResultSet r1=st.executeQuery("select * from carryouts where id="+id+"");
    if(r1.next())
    {
        PreparedStatement pst=con.prepareStatement(" UPDATE `carryouts` SET `statuss`=? WHERE `id`=? and `statuss`=? ");
            
pst.setString(1,"complete");
pst.setInt(2,id);        
pst.setString(3,"pending");

int io=pst.executeUpdate();
if(io>0)
{
    session.setAttribute("id", id);  
    response.sendRedirect("employeprint.jsp?q=9");

}else
    out.println("...");
     
        } 
    
    //////////         8888888         **********************
    
     }else if(q.equals("8")) 
       { 
           String i=request.getParameter("id"); 
           int id=Integer.parseInt(i);
    //id  selectditem  btime bdate nofpeople name status
    //UPDATE `bookparty` SET `id`=[value-1],`selectditem`=[value-2], `name`=[value-6],`status`=[value-7] WHERE 1       
    ResultSet r1=st.executeQuery("select * from `bookparty` where id="+id+"");
    if(r1.next())
    {
        PreparedStatement pst=con.prepareStatement(" UPDATE `bookparty` SET `status`=? WHERE `id`=? and `status`=? ");
            
pst.setString(1,"complete");
pst.setInt(2,id);        
pst.setString(3,"pending");

int io=pst.executeUpdate();
if(io>0)
{
    session.setAttribute("id", id);  
    response.sendRedirect("employeprint.jsp?q=8");

}else
    out.println("...");
     
        }   ////////////////// 77777777777777 ***************
       }else if(q.equals("7"))
       {  String i=request.getParameter("id"); 
           int id=Integer.parseInt(i);      
    ResultSet r1=st.executeQuery("select * from `catering` where id="+id+"");
    if(r1.next())
    {
        PreparedStatement pst=con.prepareStatement(" UPDATE `catering` SET `status`=? WHERE `id`=? and `status`=? ");
            
pst.setString(1,"complete");
pst.setInt(2,id);        
pst.setString(3,"pending");

int io=pst.executeUpdate();
if(io>0)
{
    session.setAttribute("id", id);  
    response.sendRedirect("employeprint.jsp?q=7");

}else
    out.println("...");
     
        } //////////////////////////// 666666666666  *****************
       }else if(q.equals("6"))
       {   String i=request.getParameter("id"); 
           int id=Integer.parseInt(i);      
    ResultSet r1=st.executeQuery("select * from `delivary` where id="+id+"");
    if(r1.next())
    {///id selecteditems count dtime ddate dplace name status
        PreparedStatement pst=con.prepareStatement(" UPDATE `delivary` SET `status`=? WHERE `id`=? and `status`=? ");
            
pst.setString(1,"complete");
pst.setInt(2,id);        
pst.setString(3,"pending");

int io=pst.executeUpdate();
if(io>0)
{
    session.setAttribute("id", id);  
    response.sendRedirect("employeprint.jsp?q=6");

}else
    out.println("...");
     
        }
       }
  } 

%> 	
       
           
           	 
                       
                       
                       
                       
        <div class="col-2 left-2">
        	<h3 class="h3-line top-1">More Options</h3>
            <div class="box-2 top-2">
                   
                            <ul class="list-1">
                        <li><a href="menus.jsp">Menu</a> </li> 
                            <li><a href="carryouts.jsp">View Carryout  </a></li> 
                            <li><a href="detailesofemployees.jsp">Employee Details </a></li>
                            <li><a href="detailsofcustomerss.jsp">Customers Details</a></li> 
                            <li><a href="logout.jsp">logout</a></li> 
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
                             