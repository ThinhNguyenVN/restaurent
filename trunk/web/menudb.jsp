
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

            FileItem f0 = (FileItem) lst.get(0);  String name = f0.getString();
            FileItem f1 = (FileItem) lst.get(1);  String price = f1.getString();
            FileItem f2 = (FileItem) lst.get(2);  String p1=f2.getName();
            FileItem f3 = (FileItem) lst.get(3);  String decri = f3.getString(); 
            String path=request.getRealPath("images");

            System.out.println(" file name:: ::"+p1);
 
            File f= new File(path+"\\"+p1);
           
            f2.write(f);
            
 String pa="images"+"//"+p1;
            
           
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","root");
                Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select count(*) from menu ");
rs.next();
int cou=rs.getInt(1)+1;

PreparedStatement pst = con.prepareStatement("insert into menu values(?,?,?,?,?)"); 
pst.setInt(1,cou);
pst.setString(2,name);
pst.setString(3,price);
pst.setString(4,pa);
pst.setString(5,decri);  
String kl=p1;
String chk=kl.substring(kl.length()-3, kl.length());
if(chk.equalsIgnoreCase("jpg") || chk.equalsIgnoreCase("png"))
{

int io=pst.executeUpdate();
//response.sendRedirect("Home.jsp?shva=0");
if(io>0)
{

    response.sendRedirect("updatemenu.jsp?val=0");

}else
    out.println("...");

            }else
{
     response.sendRedirect("updatemenu.jsp?val=5");
            }

  

 
        } catch (Exception ex) {
           out.println(ex);// Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }




%>