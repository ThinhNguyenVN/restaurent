
 
 <%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedHashMap"%>  
 <%@include file="dbcon.jsp" %>

 <%
                    String[] names=(String[])request.getParameterValues("cg");System.out.println("");
                    
String countofp =request.getParameter("people");   System.out.println(" month:"+countofp);   
String month =request.getParameter("month");   System.out.println(" month:"+month );  
String day =request.getParameter("day");   System.out.println("day:"+day );  
String year =request.getParameter("year");   System.out.println(" year:"+year );
String date=""+day+"/"+month+"/"+year;  System.out.println(" date:"+date );  
                   
                     String ss=""; 
                
                for(int io=0;io<names.length;io++)
                {
                      ss+=""+names[io]+", "; 
                }
                     System.out.println("data ss :"+ss ); 
                    
                 
ResultSet rs=st.executeQuery("select count(*) from bookparty ");
rs.next();
int cou=rs.getInt(1)+1;     System.out.println(" count:"+cou );
String hr=request.getParameter("hr");String min=request.getParameter("min");
String  time= ""+hr+":"+min;
                  String name=session.getAttribute("customer").toString();
                PreparedStatement pst=con.prepareStatement("Insert into bookparty values(?,?,?,?,?,?,?)");
                pst.setInt(1,cou);
pst.setString(2,ss );
pst.setString(3,time);
pst.setString(4, date);
pst.setString(5, countofp); 
pst.setString(6,name);
pst.setString(7,"pending");

int io=pst.executeUpdate();
if(io>0)
{

    response.sendRedirect("user.jsp?val=1");

}else
    out.println("..."); 
 %>