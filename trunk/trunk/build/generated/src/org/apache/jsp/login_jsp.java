package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("            \t\n");
      out.write("                          \n");
      out.write(" <!DOCTYPE html>\n");
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
      out.write("               <li><a  href=\"index.jsp\">Home</a></li> <li><a href=\"menuitems.jsp\">Menu</a></li> \n");
      out.write("                              <li><a href=\"location.jsp\">Location  </a></li> \n");
      out.write("                            <li><a href=\"membership.jsp\">Membership Details </a></li>\n");
      out.write("                            <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                             <li><a  class=\"current\" href=\"login.jsp\">Login</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("         </nav>\n");
      out.write("    </header>  \n");
      out.write("  <!--==============================content================================-->\n");
      out.write("   <section id=\"content\"><div class=\"ic\"></div>\n");
      out.write("       <div class=\"block-1\">\n");
      out.write("       \t<div class=\"border-right\">\n");
      out.write("        \t<div class=\"block-1-title\">\n");
      out.write("            \t<span> </span>\n");
      out.write("                <div class=\"text-1\">Best<strong>cuisine</strong></div>\n");
      out.write("                <strong class=\"clear\"></strong>\n");
      out.write("            </div>\n");
      out.write("<!--            <p class=\"border-1\"> </p><a href=\"#\" class=\"link-1\">read more</a>-->\n");
      out.write("        </div>\n");
      out.write("        <div class=\"border-right\">\n");
      out.write("        \t<div class=\"block-1-title\">\n");
      out.write("            \t<span> </span>\n");
      out.write("                <div class=\"text-2\">Good<strong>rest</strong></div>\n");
      out.write("                <strong class=\"clear\"></strong>\n");
      out.write("            </div>\n");
      out.write("<!--            <p class=\"border-1\"></p><a href=\"#\" class=\"link-1\">read more</a>-->\n");
      out.write("        </div>\n");
      out.write("        <div class=\"border-right\">\n");
      out.write("        \t<div class=\"block-1-title\">\n");
      out.write("            \t<span> </span>\n");
      out.write("                <div class=\"text-3\">Great<strong>service</strong></div>\n");
      out.write("                <strong class=\"clear\"></strong>\n");
      out.write("            </div>\n");
      out.write("       <!--      <p class=\"border-1\"> </p>\n");
      out.write("           <a href=\"#\" class=\"link-1\">read more</a>-->\n");
      out.write("        </div>\n");
      out.write("        <div class=\"block-1-last\">\n");
      out.write("        \t<div class=\"block-1-title\">\n");
      out.write("            \t<span> </span>\n");
      out.write("                <div class=\"text-4\">Best<strong>cooks</strong></div>\n");
      out.write("                <strong class=\"clear\"></strong>\n");
      out.write("            </div>\n");
      out.write("<!--            <p class=\"border-1\"></p><a href=\"#\" class=\"link-1\">read more</a>-->\n");
      out.write("        </div>\n");
      out.write("       </div>\n");
      out.write("       <div class=\"block-2 pad-2\">\n");
      out.write("        <div class=\"col-5\">\n");
      out.write("<!--        \t<h3 class=\"h3-line\">Contact info</h3>\n");
      out.write("             -->\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("            \t<dl class=\"adr\">\n");
      out.write("                   \n");
      out.write("                </dl>\n");
      out.write("                <dl class=\"adr last\">\n");
      out.write("                     \n");
      out.write("                </dl>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-4 left-2\">\n");
      out.write("        \t<h3 class=\"h3-line\"> Login Form</h3>\n");
      out.write("            <form id=\"form\"action=\"logindb.jsp?val=1\" method=\"post\" >\n");
      out.write("              <fieldset>\n");
      out.write("                  ");

                        String val =request.getParameter("val"); 
                            if(val!=null) 
                                          {
      out.write("    <label style=\"color:purple\">Invalid Login Details </label> ");
  }  
      out.write("\n");
      out.write("                <label><strong>UserName:</strong><input name=\"name\" type=\"text\"  required=\"required\"><strong class=\"clear\"></strong></label>\n");
      out.write("                <label><strong>Password:</strong><input name=\"password\" type=\"password\"  required=\"required\"><strong class=\"clear\"></strong></label>\n");
      out.write("                <label><strong>User Type</strong><select name=\"type\" required=\"required\">\n");
      out.write("                                    <option value=\"\">Select</option>\n");
      out.write("                                    <option value=\"customer\">Customer</option>\n");
      out.write("                                    <option value=\"employee\">Employee</option>\n");
      out.write("                                    <option value=\"owner\">Owner</option>\n");
      out.write("                                </select> <strong class=\"clear\"></strong></label>\n");
      out.write("                \n");
      out.write("                <label>     <strong> <input type=\"submit\" value=\"Sign In\"> </strong></label> \n");
      out.write("               \n");
      out.write("                                 \n");
      out.write("                 <a href=\"registration.jsp\" style=\"color:#e00d0c \">Registration</a>\n");
      out.write("                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                <a href=\"forgotpass.jsp\" style=\"color:#e00d0c \">Forgot Password</a>\n");
      out.write("              \n");
      out.write("                \n");
      out.write("               </fieldset>  \n");
      out.write("                             \n");
      out.write("                \n");
      out.write("            </form> \n");
      out.write("        </div>\n");
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
      out.write("    </footer>\t\t \n");
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
