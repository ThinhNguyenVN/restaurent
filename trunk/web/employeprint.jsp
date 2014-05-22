
<%@include  file="dbcon.jsp" %>



<%String emp=session.getAttribute("emp").toString();
       session.setAttribute("emp", emp);
       String idd=session.getAttribute("id").toString(); 
 %>
  
<html >
<head> <title>Priya India Cuisine</title> 
  <script language="javascript">

function printfn()
{
	//document.getElementById('1001a1').innerHTML='';
	if(document.getElementById('down-time'))
	document.getElementById('down-time').style.display='none';	
	window.print();
}

var DepositStartDate='';
var DepositEndDate='';
var CurrentDate='2014,01,06';

var EnableCaptcha='';
  var CurrentDate='2014,01,06';  
</script>
</head>
<body>  
         <%
String q=request.getParameter("q");
if(q!=null)
       {
         if(q.equals("9"))
       {   
           int id=Integer.parseInt(idd);  
    out.println("<center>");
    ResultSet r1=st.executeQuery("select * from carryouts where id="+id+"");
    if(r1.next())
    {
       
         

     %> <br><br><br> <h2 class="h2-line">View CarryOuts  Details  </h2> 
   
     <%   %><table align="center"   border="2">
         <tr>  
         <th>  id  </th> <td><%=r1.getInt(1)%></td> </tr><tr>
         <th>  selecteditems </th>
             <td><%=r1.getString(2)%></td></tr><tr>
         <th>  ctime </th>
             <td><%=r1.getString(3)%></td></tr><tr>
         <th>cdate</th>
             <td> <%=r1.getString(4)%></td></tr><tr>
         <th> name</th>
         <td><%=r1.getString(5)%> <td></tr> 
     <tr> 
         <th>  statuss </th> 
             <td<%=r1.getString(6)%> <td> 
         </tr>
     </table>
   
   
                      <FORM id="form">
                          <INPUT TYPE="button" value="Print" onClick="window.print()">
                        </FORM>





<a href="employee.jsp" class="linkfooter">home</a></span></td>
                      
                      <%      
        }
      out.println("<center>");} 
                 else  if(q.equals("8"))
       {   
           int id=Integer.parseInt(idd);  
    out.println("<center>");
    ResultSet r1=st.executeQuery("select * from `bookparty` where id="+id+"");
    if(r1.next())
    {
       
    //id  selectditem  btime bdate nofpeople name status
         

     %> <br><br><br> <h2 class="h2-line">View parties  Details  </h2> 
   
     <%   %><table align="center"   border="2">
         <tr>  
         <th>  id  </th> <td><%=r1.getInt(1)%></td> </tr><tr>
         <th>  selecteditems </th>
             <td><%=r1.getString(2)%></td></tr><tr>
         <th>  Time </th>
             <td><%=r1.getInt(3)%></td></tr><tr>
         <th> Date</th>
             <td><%=r1.getString(4)%></td></tr><tr>
         <th>No of people </th>
             <td> <%=r1.getString(5)%></td></tr><tr>
         <th> name</th>
         <td><%=r1.getString(6)%> <td></tr> 
<!--         <tr> 
         <th>  statuss </th> 
             <td<%=r1.getString(7)%> <td> 
         </tr>-->
     </table>
   
   
                      <FORM id="form">
                          <INPUT TYPE="button" value="Print" onClick="window.print()">
                        </FORM>






<a href="employee.jsp" class="linkfooter">home</a></span></td>
                      
                      <%      
        }
      out.println("<center>");}
         
          else  if(q.equals("7"))
       {   
           int id=Integer.parseInt(idd);  
    out.println("<center>");
    ResultSet r1=st.executeQuery("select * from `catering`  where id="+id+"");
    if(r1.next())
    {
       
    //id  selectditem  btime bdate nofpeople name status
         

     %> <br><br><br> <h2 class="h2-line">View Catering  Details  </h2> 
   
     
   <table align="center"   border="2">
    
 
       <tr>  
         <th>  id  </th> <td><%=r1.getInt(1)%></td> </tr><tr>
         <th>  selecteditems </th>
             <td><%=r1.getString(2)%></td></tr><tr>
         <th>  Time </th>
             <td><%=r1.getInt(3)%></td></tr><tr>
         <th> Date</th>
             <td><%=r1.getString(4)%></td></tr><tr>
         <th> Place</th>
             <td><%=r1.getString(5)%></td></tr><tr>
         <th>No of people </th>
             <td> <%=r1.getString(6)%></td></tr><tr>
         <th> name</th>
         <td><%=r1.getString(7)%> <td></tr> 
<!--         <tr> 
         <th>  statuss </th> 
             <td<%=r1.getString(8)%> <td> 
         </tr>-->
     </table>
   
   
                      <FORM id="form">
                          <INPUT TYPE="button" value="Print" onClick="window.print()">
                        </FORM>







<a href="employee.jsp" class="linkfooter">home</a></span></td>
                      
                      <%      
        }
      out.println("<center>");}
         
         else  if(q.equals("6"))
       {   
           int id=Integer.parseInt(idd);  
    out.println("<center>");
    ResultSet r1=st.executeQuery("select * from `delivary` where id="+id+"");
    if(r1.next())
    {
       
    //id  selectditem  btime bdate nofpeople name status
         

     %> <br><br><br> <h2 class="h2-line">View Catering  Details  </h2> 
   
     
    id selecteditems count dtime ddate dplace name status
   <table align="center"   border="2">
    
 
       <tr>  
         <th>  id  </th> <td><%=r1.getInt(1)%></td> </tr><tr>
         <th>  selecteditems </th>
             <td><%=r1.getString(2)%></td></tr><tr>
         <th>  Time </th>
             <td><%=r1.getInt(3)%></td></tr><tr>
         <th> Date</th>
             <td><%=r1.getString(4)%></td></tr><tr>
         <th> Place</th>
             <td><%=r1.getString(5)%></td></tr><tr> 
         <th> name</th>
         <td><%=r1.getString(6)%> <td></tr> 
 <tr> 
         <th>  statuss </th> 
             <td<%=r1.getString(7)%> <td> 
         </tr>
     </table>
   
   
                      <FORM id="form">
                          <INPUT TYPE="button" value="Print" onClick="window.print()">
                        </FORM>







<a href="employee.jsp" class="linkfooter">home</a></span></td>
                      
                      <%      
        }
      out.println("<center>");}



}
    %>
         
    
    
    
    
    
    
</body>
</html>                     
                      