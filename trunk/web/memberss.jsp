
<%@include file="dbcon.jsp" %>
<%String q=request.getParameter("q");
if(q!=null)
       {
         if(q.equals("9"))
       {  
           String i=request.getParameter("id");
  String dis=request.getParameter("dis");           
           int id=Integer.parseInt(i);
    
    ResultSet r1=st.executeQuery("select * from `membership` where  ms_id="+id+"");
    if(r1.next())
    {
        PreparedStatement pst=con.prepareStatement(" UPDATE `membership` SET `disscountt`=? WHERE  ms_id=?  ");
            
pst.setString(1,dis);
pst.setInt(2,id);  

int io=pst.executeUpdate();
if(io>0)
{
    session.setAttribute("id", id);  
    response.sendRedirect("members.jsp");

}else
    out.println("...");
     
        } 
        }}
    %>