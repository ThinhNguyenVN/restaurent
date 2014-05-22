
 <%@page import="java.sql.*"%>

 <%
  
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","root");
                Statement st=con.createStatement();
 
String v=request.getParameter("v");
 if(v!=null){if(v.equals("1")){
String message=request.getParameter("message");
String name=request.getParameter("name");
String desig=request.getParameter("desig");
ResultSet rs=st.executeQuery("select count(*) from  testmessage ");
rs.next();
int cou=rs.getInt(1)+1;          
int i=st.executeUpdate("insert into  testmessage values("+cou+",'"+message+"','"+name+"','"+desig+"')"); 

if(i>0)
{

    response.sendRedirect("testimonials.jsp?val=4");

}else
    out.println("...");
 }else if(v.equals("2")){
String i=request.getParameter("id"); int id=Integer.parseInt(i); 
String message=request.getParameter("message");
String name=request.getParameter("name");
String desig=request.getParameter("desi");     
//int i=st.executeUpdate("insert into  testmessage values("+cou+",'"+message+"','"+name+"','"+desig+"')"); 
int i1= st.executeUpdate("update testmessage set message='"+message+"',name='"+name+"',desig='"+desig+"' where id="+id+"");

if(i1>0)
{

    response.sendRedirect("testimonials.jsp?val=5");

}else
    out.println("...");
 }
 
 }


%>