package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(' ');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write(" ");

  
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","root");
                Statement st=con.createStatement();



      out.write("\n");
      out.write("   \n");
      out.write("    <!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head> <title>Priya India Cuisine</title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/reset.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/style.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/slider.css\">\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>\n");
      out.write("    <script src=\"js/jquery-1.7.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("    <script src=\"js/tms-0.4.1.js\"></script>\n");
      out.write("     \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"bg-top\">\n");
      out.write("<div class=\"bgr\">\n");
      out.write("  <!--==============================header=================================-->\n");
      out.write("    <header>\n");
      out.write("        <h1>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"index.html\"><img src=\"images/logo.png\" alt=\"\"></a></h1>\n");
      out.write("        <nav>  \n");
      out.write("            <ul class=\"menu\">\n");
      out.write("                  \n");
      out.write("                      <li><a class=\"current\"  href=\"owner.jsp\">Home</a></li>\n");
      out.write("                                               \n");
      out.write("                           <li><a href=\"viewcarryouts.jsp\">View Carry outs</a> </li>  \n");
      out.write("                            <li><a href=\"viewpartie.jsp\">View Parties</a> </li> \n");
      out.write("                            <li><a href=\"viewcatering.jsp\">View Catering</a> </li> \n");
      out.write("                            <li><a href=\"viewdeliveries.jsp\">View Deliveries</a> </li> \n");
      out.write("                             <li><a href=\"logout.jsp\">logout</a></li> \n");
      out.write("            </ul>\n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("         </nav>\n");
      out.write("        \n");
      out.write("    </header>  \n");
      out.write("   <!--==============================content================================-->\n");
      out.write("   <section id=\"content\"><div class=\"ic\"></div>\n");
      out.write("      \n");
      out.write("           <div class=\"wrap\"> <ul class=\"list\">\n");
      out.write("                 \n");
      out.write("                ");

                
ResultSet rs=st.executeQuery("select * from menu");
while(rs.next())
       {

      out.write("\n");
      out.write(" <li><strong> ");
      out.print(rs.getString(2) );
      out.write("</strong><span>$");
      out.print(rs.getString(3) );
      out.write("</span><em>&nbsp;</em></li>\n");
      out.write("                ");
 } 

      out.write("\n");
      out.write("                \n");
      out.write("             \n");
      out.write("                  \n");
      out.write("        \n");
      out.write("              </ul>\n");
      out.write("          </div>\n");
      out.write("                      \n");
      out.write("                \t  </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("        <div class=\"block-3\">\n");
      out.write("        \t<div class=\"h3\">\n");
      out.write("       \t\t\t \n");
      out.write("            </div>\n");
      out.write("            <div class=\"box-3\">\n");
      out.write("            \t \n");
      out.write("                \t \n");
      out.write("                <div class=\"last\">\n");
      out.write("                \t\n");
      out.write("    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("       </div>\n");
      out.write("    </section> \n");
      out.write("\n");
      out.write("<!--==============================footer=================================-->\n");
      out.write("<footer>\n");
      out.write("        <div class=\"main\">\n");
      out.write("        \t<div class=\"aligncenter\">\n");
      out.write("            \t<span>Clepriya.in &copy; 2011</span>\n");
      out.write("                <a rel=\"nofollow\" class=\"link\" target=\"_blank\" href=\"http://www.Clepriya.in/\">Priya Indian Cuisine</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("</div> \n");
      out.write("</div>       \n");
      out.write("</body>\n");
      out.write("</html>                     \n");
      out.write("                             ");
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
