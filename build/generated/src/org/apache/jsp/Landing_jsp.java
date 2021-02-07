package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Landing_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"styles/global.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"styles/landing.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.15.1/css/all.css\">\n");
      out.write("\n");
      out.write("        <title>Happy</title>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id = \"page-landing\">\n");
      out.write("            <div class=\"content-wrapper\">\n");
      out.write("                <img src=\"images/logo.svg\" alt=\"logo\"/>\n");
      out.write("\n");
      out.write("                <main>\n");
      out.write("                    <h1>Leve felicidade para o mundo</h1>\n");
      out.write("                    <p>Visite orfanatos e mude o dia de muitas crianças</p>\n");
      out.write("                </main>\n");
      out.write("\n");
      out.write("                <div class=\"location\">\n");
      out.write("                    <strong>Goioerê</strong>\n");
      out.write("                    <span>Paraná</span>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <button type=\"button\" onClick =\"window.location.href='Login'\" class=\"login-button\">\n");
      out.write("                    Acesso restrito\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <a href=\"OrphanagesMap\">\n");
      out.write("                    <div class=\"enter-app\">\n");
      out.write("                        <i class=\"fas fa-arrow-right\"></i>\n");
      out.write("                    </div>\n");
      out.write("                </a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
