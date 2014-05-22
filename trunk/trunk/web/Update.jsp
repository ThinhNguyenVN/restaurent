
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbcon.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           int i=st.executeUpdate("update customerdetails SET cemailid='"+request.getParameter("mail")+"', mobile_no='"+request.getParameter("number")+"', address='"+request.getParameter("address")+"' WHERE cname='"+session.getAttribute("customer")+"';");
           out.println("<script>alert(\"Details Successfully Updated\")</script>");
           response.sendRedirect("detailsofcustomers.jsp");
            
        %>
    </body>
</html>
