
package com.senior;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class RedirectServlet5 extends HttpServlet {   

   // process "get" request from client
   protected void doGet( HttpServletRequest request, 
      HttpServletResponse response )
         throws ServletException, IOException 
   {
      String categ= request.getParameter( "cat" );
      int cat=Integer.parseInt(categ);
     
     try{
     
      connect as=new connect();
      ResultSet d=as.getcon().executeQuery("select * from category where catrgory.category_id="+cat+"");
      }
      	catch(SQLException SQLe){}
     String location="index_logged.jsp";
  
      
      HttpSession session=request.getSession(true);
		
		

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

