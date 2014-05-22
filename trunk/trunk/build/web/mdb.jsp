
 
<%@page import="java.sql.*"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%
  try {
  DiskFileItemFactory dff = new DiskFileItemFactory();
                     
                        ServletFileUpload disk = new ServletFileUpload(dff);

            List lst = disk.parseRequest(request); 

            FileItem f0 = (FileItem) lst.get(0);  //String i= f0.getString();
            FileItem f1 = (FileItem) lst.get(1);  //String name = f1.getString();
            FileItem f2 = (FileItem) lst.get(2); //String price = f2.getString(); 
            FileItem f3 = (FileItem) lst.get(3);  //String p1=f3.getName();
           // FileItem f4 = (FileItem) lst.get(4);  String decr = f4.getString(); 
            String name = f0.getString(); String price = f1.getString();  String p1=f2.getName(); String decr = f3.getString(); 
           

            System.out.println(" file name:: ::"+name);
            System.out.println(" file price:: ::"+price);
            System.out.println(" file path:: ::"+p1);
 
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","root");
                Statement st=con.createStatement();

                
                 System.out.println(" file image: ::"+p1);
            //int id=Integer.parseInt(i); 
                ResultSet rs1=st.executeQuery("select * from menu where name='"+name+"'"); rs1.next(); String image=rs1.getString(4);      
                
            System.out.println(" file image: ::"+image);
           
            if(p1 != null)
               {
                if(p1.equals(""))
                {     
int io=st.executeUpdate("UPDATE menu SET price='"+price+"',description='"+decr+"'  WHERE name='"+name+"'");
//response.sendRedirect("Home.jsp?shva=0");
if(io>0)
{  response.sendRedirect("updatemenu.jsp?val=4");

}else
    out.println("...");
        
                    }else{
                     File file = new File(image);
 
    		if(file.delete()){
    			System.out.println(file.getName() + " is deleted!");
    		}else{
    			System.out.println("Delete operation is failed.");
    		}
             String path=request.getRealPath("images");
            File f= new File(path+"\\"+p1);
            f2.write(f);
            
            
 String pa="images"+"//"+p1;
            
           
 
//PreparedStatement pst = con.prepareStatement("UPDATE `menu` SET `price`='"+price+"',`image`='"+pa+"',`description`='"+decr+"'  WHERE `name`='"+name+"'");
//PreparedStatement pst = con.prepareStatement("insert into menu values(?,?,?,?,?)"); 
//UPDATE `menu` SET `name`="biryani",`price`="200 ",`description`="iiiii" WHERE `itemid`=1
 

//pst.setString(1,name);pst.setString(2,price);pst.setString(3,pa);pst.setString(4,decr);pst.setInt(5,id);
String kl=p1; String chk=kl.substring(kl.length()-3, kl.length());
if(chk.equalsIgnoreCase("jpg") || chk.equalsIgnoreCase("png"))
{

int io=st.executeUpdate("UPDATE menu SET price='"+price+"',image='"+pa+"',description='"+decr+"'  WHERE name='"+name+"'");
//response.sendRedirect("Home.jsp?shva=0");
if(io>0)
{

    response.sendRedirect("updatemenu.jsp?val=4");

}else
    out.println("...");

            }else
{   response.sendRedirect("updatemenu.jsp?val=5");
            }

                                }
                                      } }
 
         catch (Exception ex) {
           out.println(ex);// Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }




%>