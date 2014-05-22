

                       
 <%@page import="java.util.LinkedHashMap"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Statement"%> 
<%@page import="java.util.Date" %>
 <%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Priya India Cuisine</title>
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
        <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html"><img src="images/logo.png" alt=""></a></h1>
        <nav>  
            <ul class="menu">
                <li><a  href="UserPage.jsp">Menu</a></li>
                              <li><a href="loca.jsp">Location  </a></li> 
                            <li><a href="Details.jsp">Edit Details </a></li>
                            <li><a href="FeedBack.jsp">FeedBack</a></li>
                            <li><a href="cont.jsp">Contact</a></li>
                          <li><a href="log.jsp">Logout</a></li> 
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
<!--        	<h3 class="h3-line">Contact info</h3>
             -->
            <div class="wrap">
            	<dl class="adr">
                   
                </dl>
                <dl class="adr last">
                     
                </dl>
            </div>
        </div>
        <div class="col-4 left-2"> 
            
              <fieldset>
                  <%
                    String[] names=(String[])request.getParameterValues("cg");System.out.println("");
                    String[] counts=(String[])request.getParameterValues("count");System.out.println("");
                   /*  String[] price=request.getParameterValues("price");System.out.println("");
                    
 *  String[] price=request.getParameterValues("price");System.out.println("");
                   int[] bill=new int[names.length] ;
                    int pc=0;
                   for(int i=0;i<bill.length;i++){
                       int c=Integer.parseInt(counts[i]);
                       int p=Integer.parseInt(price[i]); 
                    bill[i]=c*p; 
                    System.out.println("count"+bill[i]);
                     pc=bill[i];
                      
                       }
                     System.out.println("count"+pc);
                    
 * 
 * 
 *  LinkedHashMap <String,String> lhm= new LinkedHashMap<String, String>();
                    for(int i=0;i<names.length;i++){
                        lhm.put(names[i],counts[i]);}
                   String s= lhm.toString();
                     System.out.println("count"+s);
 * 
 * 
 * 
                         LinkedHashMap <String,String> lh= new LinkedHashMap<String, String>();
                    for(int j=0;j<names.length;j++){
                        lh.put(counts[j],price[j]);}
                   String pc= lh.toString();
  System.out.println("count"+pc);
                    */
                    
                   
                    LinkedHashMap <String,String> lhm= new LinkedHashMap<String, String>();
                    for(int i=0;i<names.length;i++){
                        lhm.put(names[i],counts[i]);}
                   String s= lhm.toString();
                     System.out.println("count"+s);
                
                   
                   SimpleDateFormat si=new SimpleDateFormat("MM-dd-YYYY");System.out.println("");
                   Date date=new Date();
                  System.out.println("Date " +si.format(date)+" ss "+s);
                  
                  
ResultSet rs=st.executeQuery("select count(*) from carryouts ");
rs.next();
int cou=rs.getInt(1)+1;                            System.out.println(" count:"+cou );
String hr=request.getParameter("hr");String min=request.getParameter("min");
String  time= ""+hr+":"+min;
                  String name=session.getAttribute("customer").toString();
                PreparedStatement pst=con.prepareStatement("Insert into carryouts values(?,?,?,?,?,?)");
                pst.setInt(1,cou);
pst.setString(2,s);
pst.setString(3,time);
pst.setString(4,si.format(date));
pst.setString(5,name);
pst.setString(6,"pending");

int io=pst.executeUpdate();
if(io>0)
{

    response.sendRedirect("user.jsp?val=success");

}else
    out.println("...");
                  %>
              </fieldset>
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