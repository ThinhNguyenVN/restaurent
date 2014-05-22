package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.*;

public final class Bookparty_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/dbcon.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("                       \n");
      out.write(" \n");
      out.write(" ");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write(" ");

  
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","root");
                Statement st=con.createStatement();



      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <title>Priya India Cuisine</title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/reset.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/style.css\">\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>\n");
      out.write("    <script src=\"js/jquery-1.7.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("\t \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"bg-top\">\n");
      out.write("<div class=\"bgr\">\n");
      out.write("  <!--==============================header=================================-->\n");
      out.write("    <header>\n");
      out.write("        <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"\"><img src=\"images/logo.png\" alt=\"\"></a></h1>\n");
      out.write("        <nav>  \n");
      out.write("            <ul class=\"menu\">\n");
      out.write("              <li><a  href=\"menuitem.jsp\">Menu</a></li>\n");
      out.write("                              <li><a href=\"loca.jsp\">Location  </a></li> \n");
      out.write("                            <li><a href=\"Details.jsp\">Edit Details </a></li>\n");
      out.write("                            <li><a href=\"FeedBack.jsp\">FeedBack</a></li>\n");
      out.write("                            <li><a href=\"cont.jsp\">Contact</a></li>\n");
      out.write("                          <li><a href=\"log.jsp\">Logout</a></li> \n");
      out.write("            </ul>\n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("         </nav>\n");
      out.write("    </header>  \n");
      out.write("  <!--==============================content================================-->\n");
      out.write("   <section id=\"content\"><div class=\"ic\"></div>\n");
      out.write("       \n");
      out.write("       <div class=\"block-2 pad-2\">\n");
      out.write("        <div class=\"col-1\">\n");
      out.write("         \t<h3 class=\"h3-line\">Welcome ");
      out.print(session.getAttribute("customer") );
      out.write(" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Advance booking catering\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"user.jsp\">Back</a></h3>\n");
      out.write("            \n");
      out.write("            <div class=\"wrap\">\n");
      out.write("            \t<dl class=\"adr\">\n");
      out.write("                   \n");
      out.write("                <fieldset>\n");
      out.write("                  <form action=\"Bookparty1.jsp\" method=\"post\"><center>\n");
      out.write("                          <h3>\n");
      out.write("                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date:<input type=\"text\" name=\"date\" placeholder=\"DATE\"><br>\n");
      out.write("                      count Expected:<input type=\"number\" name=\"people\" max=\"1000\" min=\"20\"><br>\n");
      out.write("                      &nbsp;&nbsp;Time:<input type=\"number\"  name=\"hr\" max=\"23\" min=\"0\" >:<input type=\"number\" name=\"min\" max=\"59\" min=\"0\"><br></h3>\n");
      out.write("                       \n");
      out.write("                      <table border=\"1\">\n");
      out.write("                          <tr><td>&nbsp;&nbsp;ITEM</td>&nbsp; <td> NAME</td>&nbsp;<td>Image</td><td>&nbsp;&nbsp;&nbsp;Price</td></tr>\n");
      out.write("                  ");

                      ResultSet rs=st.executeQuery("Select * from Menu");
                      while(rs.next())
                      {
                          
                  
      out.write("\n");
      out.write("                  <tr><td> <input type=\"checkbox\" name=\"cg\" value=\"");
      out.print(rs.getString("name"));
      out.write("\"></td><td> ");
      out.print(rs.getString("name") );
      out.write("</td><td><img width=\"100\" height=\"90\" src=\"");
      out.print(rs.getString("image"));
      out.write("\"></td><td>&nbsp;&nbsp;&nbsp;");
      out.print(rs.getString("price"));
      out.write("</td>\n");
      out.write("                      </tr>\n");
      out.write("                 \n");
      out.write("                          ");
 
                      }
                          
      out.write("\n");
      out.write("                          <tr><td></td><td></td><td><input type=\"Submit\" value=\"Place Order\"></td></tr>\n");
      out.write("                       </table></center>\n");
      out.write("                  </form>\n");
      out.write("                 </fieldset>\n");
      out.write("            \n");
      out.write("                     \n");
      out.write("                </dl>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("       </div>\n");
      out.write("    </section> \n");
      out.write("\n");
      out.write("<!--==============================footer=================================-->\n");
      out.write(" <footer>\n");
      out.write("      <p>© Clepriya.in &copy; 2011<br>\n");
      out.write("            <a rel=\"nofollow\" class=\"link\" target=\"_blank\" href=\"http://www.clepriya.in/\">Priya Indian Cuisine</a>\n");
      out.write("          \n");
      out.write("      </p> \n");
      out.write("  </footer>\t\t \n");
      out.write("</div> \n");
      out.write("</div>       \n");
      out.write("</body>\n");
      out.write("</html>                 ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
