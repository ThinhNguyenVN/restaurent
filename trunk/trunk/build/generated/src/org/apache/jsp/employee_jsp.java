package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class employee_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

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

      out.write('\n');
String emp=session.getAttribute("emp").toString();
       session.setAttribute("emp", emp);
       //String uid = session.getAttribute("uid").toString(); session.setAttribute("uid",uid);
 
      out.write("\n");
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
      out.write("    <script>\n");
      out.write("\t\t$(document).ready(function(){\t\t\t\t   \t\n");
      out.write("\t\t\t$('.slider')._TMS({\n");
      out.write("\t\t\t\tshow:0,\n");
      out.write("\t\t\t\tpauseOnHover:true,\n");
      out.write("\t\t\t\tprevBu:false,\n");
      out.write("\t\t\t\tnextBu:false,\n");
      out.write("\t\t\t\tplayBu:false,\n");
      out.write("\t\t\t\tduration:700,\n");
      out.write("\t\t\t\tpreset:'fade',\n");
      out.write("\t\t\t\tpagination:true,\n");
      out.write("\t\t\t\tpagNums:false,\n");
      out.write("\t\t\t\tslideshow:8000,\n");
      out.write("\t\t\t\tnumStatus:false,\n");
      out.write("\t\t\t\tbanners:false,\n");
      out.write("\t\t\t\twaitBannerAnimation:false,\n");
      out.write("\t\t\t\tprogressBar:false\n");
      out.write("\t\t\t})\t\t\n");
      out.write("\t\t});\n");
      out.write("\t</script> \n");
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
      out.write("                      <li><a class=\"current\"  href=\"employee.jsp\">Home</a></li>\n");
      out.write("                                               <li><a href=\"viewcarryout.jsp\">View Carry outs</a> </li>  \n");
      out.write("                            <li><a href=\"viewparties.jsp\">View Parties</a> </li> \n");
      out.write("                            <li><a href=\"viewcaterings.jsp\">View Catering</a> </li> \n");
      out.write("                            <li><a href=\"viewdeliverie.jsp\">View Deliveries</a> </li> \n");
      out.write("                             <li><a href=\"logout.jsp\">Logout</a></li> \n");
      out.write("            </ul>\n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("         </nav>\n");
      out.write("        <div id=\"slide\">\t\t\n");
      out.write("            <div class=\"slider\">\n");
      out.write("                <ul class=\"items\">\n");
      out.write("                    <li><img src=\"images/slider-1.JPG\" alt=\"\" /></li>\n");
      out.write("                    <li><img src=\"images/slider-2.JPG\" alt=\"\" /></li>\n");
      out.write("                    <li><img src=\"images/slider-3.JPG\" alt=\"\" /></li>\n");
      out.write("                </ul>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"phone-number\"><h2>The Hub of <span>delicious food </span></h2></div>\t\n");
      out.write("      </div> \n");
      out.write("    </header>  \n");
      out.write("  <!--==============================content================================-->\n");
      out.write("    <section id=\"content\"><div class=\"ic\"></div>\n");
      out.write("      \n");
      out.write("        <div class=\"col-2 left-2\">\n");
      out.write("        \t<h3 class=\"h3-line top-1\">More Options</h3>\n");
      out.write("            <div class=\"box-2 top-2\">\n");
      out.write("                   \n");
      out.write("                            <ul class=\"list-1\">\n");
      out.write("                        <li><a href=\"menus.jsp\">Menu</a> </li> \n");
      out.write("                            <li><a href=\"employeelog.jsp\">Log</a></li> \n");
      out.write("                            <li><a href=\"detailsofcustomers.jsp\">Customers Details</a></li> \n");
      out.write("                            <li><a href=\"logout.jsp\">Logout</a></li> \n");
      out.write("                            </ul>\n");
      out.write("                 \n");
      out.write("                 </div> \n");
      out.write("        </div>\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("        \n");
      out.write("       </div>\n");
      out.write("    </section> \n");
      out.write("\n");
      out.write("<!--==============================footer=================================-->\n");
      out.write(" <footer>\n");
      out.write("        <div class=\"main\">\n");
      out.write("        \t<div class=\"aligncenter\">\n");
      out.write("            \t<span>Clepriya.in &copy; 2011</span>\n");
      out.write("                <a rel=\"nofollow\" class=\"link\" target=\"_blank\" href=\"http://www.Clepriya.in/\">Priya Indian Cuisine</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\t\n");
      out.write("</div> \n");
      out.write("</div>       \n");
      out.write("</body>\n");
      out.write("</html>\n");
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
