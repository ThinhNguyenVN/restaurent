

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="dbcon.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FeedBack</title>
    </head>
    <body>
       <%
          PreparedStatement pst=con.prepareStatement("insert into feedback values(?,?,?)");
          String s=request.getParameter("feedback");
          ResultSet rs=st.executeQuery("select count(*) from feedback");
          rs.next();
          int c=rs.getInt(1);
          pst.setInt(1,++c);
          pst.setString(2,(String)session.getAttribute("customer"));
          pst.setString(3,s);
          int i=pst.executeUpdate();
          response.sendRedirect("user.jsp");
       %>
    </body>
</html>
