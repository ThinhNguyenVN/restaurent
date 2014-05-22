
<%@include file="dbcon.jsp" %>

 <%
 
 
String val =request.getParameter("val");

 
 if(val.equals("1"))
{

String name =request.getParameter("name");        System.out.println("name: "+name );
String password =request.getParameter("password"); System.out.println("password: "+password );
String email =request.getParameter("email");       System.out.println("email: "+email );
String number =request.getParameter("number");     System.out.println(" number:"+number );
String gender =request.getParameter("gender");     System.out.println(" gender:"+gender ); 
String dept =request.getParameter("dept");   System.out.println(" dept:"+dept ); 
String month =request.getParameter("month");   System.out.println(" month:"+month );  
String day =request.getParameter("day");   System.out.println("day:"+day );  
String year =request.getParameter("year");   System.out.println(" year:"+year );  
String address =request.getParameter("address");   System.out.println(" message:"+address ); //


String date=""+day+"/"+month+"/"+year;  System.out.println(" date:"+date );
ResultSet rs=st.executeQuery("select count(*) from employeedetails ");
rs.next();
int cou=rs.getInt(1)+1;                            System.out.println(" count:"+cou );
PreparedStatement pst = con.prepareStatement("insert into employeedetails values(?,?,?,?,?,?,?,?,?)"); 
pst.setInt(1,cou); 
pst.setString(2,name); 
pst.setString(3,password); 
pst.setString(4,email); 
pst.setString(5,number); 
pst.setString(6,gender); 
pst.setString(7,dept); 
//String dat[]=date.split("-");  
//pst.setDate(8,new java.sql.Date(Integer.parseInt(dat[2]),Integer.parseInt(dat[0]),Integer.parseInt(dat[1])));
pst.setString(8,date);

pst.setString(9,address); 

int io=pst.executeUpdate();
if(io>0)
{

    response.sendRedirect("detailesofemployee.jsp?val=3");

}else
    out.println("...");

            } 

 
 
%>
   