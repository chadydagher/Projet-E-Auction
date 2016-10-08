
package com.senior;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class RedirectServlet4 extends HttpServlet {   

   // process "get" request from client
   protected void doGet( HttpServletRequest request, 
      HttpServletResponse response )
         throws ServletException, IOException 
   {
      String olpass= request.getParameter( "olpass" );
      String npass= request.getParameter( "npass" );
      String cpass= request.getParameter( "cpass" );
      
    
      
      HttpSession session=request.getSession(true);
		String user=""+ session.getAttribute("user");
	
		
		
      	try{
			
			
int rcount=0;
connect a =new connect();

ResultSet b=a.getcon().executeQuery("select Count (*) from Customer where Customer.c_loginname='"+user+"' and Customer.c_password='"+olpass+"'");

  if(b.next()==true){
  
  rcount = b.getInt(1);
  b.close();
  }
 
  if(rcount!=0)
{
	if(npass.equals(cpass))
	{
		a.getcon().executeUpdate("update Customer set Customer.c_password='"+npass+"' where Customer.c_loginname='"+user+"'");
		response.sendRedirect("success.html");
		session.setAttribute("password",npass);
	}
	else
	response.sendRedirect("error.html");
	
	

}
if(rcount==0)
{
response.sendRedirect("errorold.html");
}
a.concl();
				
				}
				catch(SQLException SQLe){}
         
         
            
         

      response.setContentType( "text/html" );
      PrintWriter out = response.getWriter();  

      // start XHTML document
      out.println( "<?xml version = \"1.0\"?>" );

      out.println( "<!DOCTYPE html PUBLIC \"-//W3C//DTD " +
         "XHTML 1.0 Strict//EN\" \"http://www.w3.org" +
         "/TR/xhtml1/DTD/xhtml1-strict.dtd\">" ); 

      out.println( 
         "<html xmlns = \"http://www.w3.org/1999/xhtml\">" );

      // head section of document
      out.println( "<head>" );
      out.println( "<title>Invalid page</title>" );
      out.println( "</head>" );

      // body section of document
      out.println( "<body>" );
      out.println( "<h1>Invalid page requested</h1>" );
      out.println( "<p><a href = " + 
         "\"servlets/RedirectServlet.html\">" );
      out.println( "Click here to choose again</a></p>" );
      out.println( "</body>" );

      // end XHTML document
      out.println( "</html>" );
      out.close();  // close stream to complete the page  
   }   
}

