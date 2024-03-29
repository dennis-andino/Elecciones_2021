package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/login.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/alertify.min.css\">\n");
      out.write("        <script src=\"assets/js/noback.js\"></script>\n");
      out.write("        <script src=\"assets/js/jquery-3.5.1.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/alertify.js\"></script>\n");
      out.write("        <title>Sistema de Elecciones</title>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"noback();\">\n");
      out.write("        <div class=\"alineacion\">\n");
      out.write("            <div class=\"login\">\n");
      out.write("                <h2 class=\"login-header\">Sistema de Elecciones</h2>\n");
      out.write("                <div class=\"login-container\">\n");
      out.write("                    <form action=\"loginDAO.jsp\" method=\"POST\">\n");
      out.write("                        <?php\n");
      out.write("                        if(isset($_SESSION['loginstate'])){\n");
      out.write("                        ?>\n");
      out.write("                        <div class=\"alert<?=$_SESSION['loginstate']['tipo']=='sucess'?' alert-success':' alert-danger'?>\" role=\"alert\">\n");
      out.write("                            <?=$_SESSION['loginstate']['msj']?>\n");
      out.write("                        </div>\n");
      out.write("                        <?php\n");
      out.write("                        unset($_SESSION['loginstate']);\n");
      out.write("                        }\n");
      out.write("                        ?>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <p><input type=\"text\" class=\"form-control\" id=\"username\" name=\"username\" placeholder=\"ID\" required></p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <p><input type=\"password\" class=\"form-control\" id=\"pass\" name=\"pass\" placeholder=\"Clave de acceso\" required></p>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"submit\" name=\"accion\" value=\"Ingresar\">\n");
      out.write("                    </form>\n");
      out.write("                    <br>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
