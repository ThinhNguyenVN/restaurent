<%-- 
    Document   : logindb
    Created on : Jan 30, 2014, 1:15:16 PM
    Author     : hari
--%>  

<%@include file="dbcon.jsp" %>

<%
 
String val =request.getParameter("val");

if(val.equals("1"))
       {
    
String name =request.getParameter("name");          System.out.println("name: "+name );
String password =request.getParameter("password");  System.out.println("password: "+password );
 String type=request.getParameter("type");          System.out.println("type: "+type ); 
                      
 
               /////           CUSTOMER  ///////////
 if(type.equals("customer"))
             {
                 
                 PreparedStatement ps=con.prepareStatement("select * from customerdetails where cname=? and cpassword=?");
               
                 ps.setString(1, name);
               ps.setString(2,password); 
               
                
            ResultSet rs=ps.executeQuery();
             
            if(rs.next()){
              session.setAttribute("customer", name); response.sendRedirect("user.jsp");}
            else
                response.sendRedirect("login.jsp?val=1");
             }else if(type.equals("employee"))              /////           EMPLOTEE  ///////////
             {                 
                 PreparedStatement ps=con.prepareStatement("select * from  employeedetails where name=? and password=?");
               
                 ps.setString(1, name);
               ps.setString(2,password); 
               
               ResultSet rs=ps.executeQuery();
             
            if(rs.next()){
                // System.out.println("user id"+uid); session.setAttribute("uid",uid);

               session.setAttribute("emp", name);
              ResultSet rs1=st.executeQuery("select * from employeedetails where name='"+name+"'");
              rs1.next();
             int id=rs1.getInt(1);
                     String ss= new java.util.Date().toString(); 
         
             String d[]= ss.split(" ");
              String dd= "Day :"+d[0]+", Month :"+d[1]+", Date :"+d[2]+", Year :"+d[5]+", Time  :"+d[3];
       String date=d[2]+"/"+d[1]+"/"+d[5];
       String time=d[3];
         String ddd="Date : "+date+" Time : "+time;
PreparedStatement ps1=con.prepareStatement("insert into emphistory values(?,?,?,?)");
               
                 ps1.setInt(1, id);
               ps1.setString(2,name);
               ps1.setString(3, ddd);
               ps1.setString(4,"process");
              int i= ps1.executeUpdate(); 
            response.sendRedirect("employee.jsp");} 
               else 
                response.sendRedirect("login.jsp?val=1");
             }else if(type.equals("owner"))    /////           EMPLOTEE  ///////////
             {
                 
                
               session.setAttribute("owner", name);   
             
            if(name.equals("bindu")&&password.equals("bindu"))
               response.sendRedirect("owner.jsp");
           else
            response.sendRedirect("login.jsp?val=1");
             }
         
         
         
         
         

}else if(val.equals("2"))
{

String name =request.getParameter("uname");        System.out.println("name: "+name );
String password =request.getParameter("password"); System.out.println("password: "+password );
String email =request.getParameter("email");       System.out.println("email: "+email );
String number =request.getParameter("number");     System.out.println(" number:"+number );
String gender =request.getParameter("gender");     System.out.println(" gender:"+gender );
String message =request.getParameter("message");   System.out.println(" message:"+message );

ResultSet rs=st.executeQuery("select count(*) from customerdetails ");
rs.next();
int cou=rs.getInt(1)+1;                            System.out.println(" count:"+cou );
PreparedStatement pst = con.prepareStatement("insert into customerdetails values(?,?,?,?,?,?,?)");
pst.setInt(1,cou);
pst.setString(2,name);
pst.setString(3,password);
pst.setString(4,email);
pst.setString(5,number);
pst.setString(6,gender);
pst.setString(7,message); 

int io=pst.executeUpdate();
if(io>0)
{

    response.sendRedirect("registration.jsp?val=s");

}else
    out.println("...");

            } 

 
 
%>
        
       
    </body>
</html>
