<%-- 
    Document   : logout
    Created on : Feb 3, 2014, 10:37:11 PM
    Author     : hari
--%>
<%@include file="dbcon.jsp" %>
 <%
 String name=session.getAttribute("emp").toString();


ResultSet rs1=st.executeQuery("select * from employeedetails where name='"+name+"'");
              rs1.next();
             int id=rs1.getInt(1);
                     String ss= new java.util.Date().toString(); 
         
             String d[]= ss.split(" ");
              String dd= "Day :"+d[0]+", Month :"+d[1]+", Date :"+d[2]+", Year :"+d[5]+", Time  :"+d[3];
       String date=d[2]+"/"+d[1]+"/"+d[5];
       String time=d[3];
         String ddd="Date : "+date+" Time : "+time;
         //UPDATE `emphistory` SET `emp_id`=[value-1],`ename`=[value-2],`logindat`=[value-3],`logoutdat`=[value-4] WHERE 1
PreparedStatement ps1=con.prepareStatement("UPDATE `emphistory` SET`logoutdat`= ? where `emp_id`=? and `ename`=? ");
               
                
               ps1.setString(1, ddd); 
                ps1.setInt(2, id);
               ps1.setString(3,name);
              int i= ps1.executeUpdate(); 


 
session.removeAttribute("emp"); 


response.sendRedirect("index.jsp");


%>