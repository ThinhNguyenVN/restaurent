
                       
 <%@page import="java.util.LinkedHashMap"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Statement"%> 
<%@page import="java.util.Date" %> 
 <%@include file="dbcon.jsp" %>
 
                  <%
                    String[] names=(String[])request.getParameterValues("cg");System.out.println("");
                    String[] counts=(String[])request.getParameterValues("count");System.out.println("");
                  
                   
                    LinkedHashMap <String,String> lhm= new LinkedHashMap<String, String>();
                    for(int i=0;i<names.length;i++){
                        lhm.put(names[i],counts[i]);}
                   String s= lhm.toString();
                     System.out.println("count"+s);
                
                   
                   
                  
                  
ResultSet rs=st.executeQuery("select count(*) from delivary ");
rs.next();
int cou=rs.getInt(1)+1;                            System.out.println(" count:"+cou );
String hr=request.getParameter("hr");String min=request.getParameter("min");

String place=request.getParameter("place");   System.out.println(" place:"+place);

String  time= ""+hr+":"+min;
String month =request.getParameter("month");   System.out.println(" month:"+month );  
String day =request.getParameter("day");   System.out.println("day:"+day );  
String year =request.getParameter("year");   System.out.println(" year:"+year );//place

String date=""+day+"/"+month+"/"+year;  System.out.println(" date:"+date ); 
                  String name=session.getAttribute("customer").toString();
                PreparedStatement pst=con.prepareStatement("Insert into delivary values(?,?,?,?,?,?,?)");
                pst.setInt(1,cou);
pst.setString(2,s);
pst.setString(3,time);
pst.setString(4,date);
pst.setString(5,place);
pst.setString(6,name);
pst.setString(7,"pending");

int io=pst.executeUpdate();
if(io>0)
{

    response.sendRedirect("user.jsp?val=success");

}else
    out.println("...");
                  %>