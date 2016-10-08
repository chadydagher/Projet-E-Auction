
package com.senior;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class RedirectServlet3 extends HttpServlet {   

   // process "get" request from client
   protected void doGet( HttpServletRequest request, 
      HttpServletResponse response )
         throws ServletException, IOException 
   {
      String user= request.getParameter( "usern" );
      String upass= request.getParameter( "upass" );
      
     String location="index_logged.jsp";
      String location1="index.jsp";
      
      HttpSession session=request.getSession(true);
		session.setAttribute("user",user);
		session.setAttribute("password",upass);
		
      	try{
			
			
int rcount=0;
connect a =new connect();

ResultSet b=a.getcon().executeQuery("select Count (*) from Customer where Customer.c_loginname='"+user+"' and Customer.c_password='"+upass+"'");

  if(b.next()==true){
  
  rcount = b.getInt(1);
  b.close();
  }
 
  if(rcount!=0)
{
	session.setAttribute("status","1");
response.sendRedirect(location );
}
else
{
session.setAttribute("status","0");
response.sendRedirect(location1 );
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

