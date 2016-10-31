<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<% 
String sta=""+session.getAttribute("status");
if(sta.equals("1")){
%>
<meta http-equiv="Content-Language" content="en-gb">
<body bgcolor="#246494">

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 0; border-left-width:0; border-top-width:0; border-bottom-width:0" bordercolor="#30A1DB" width="781" id="AutoNumber1" height="900">
  <tr>
    <td width="805" height="549" style="border-left:medium none #30A1DB; border-right:1px solid #30A1DB; border-top:medium none #30A1DB; border-bottom:medium none #30A1DB; ">
    <table border="0" cellspacing="1" style="border-collapse: collapse; position: absolute; left: -1; top: 847" bordercolor="#111111" width="783" height="80">
      <tr>
        <td width="100%" background="JPG/fon_bot.gif">&nbsp;</td>
      </tr>
    </table>
    <span style="position: absolute; left: 0; top: 1">
    <map name="FPMap0">
    <area href="index.jsp" shape="rect" coords="19, 139, 64, 153">
    <area href="register.jsp" shape="rect" coords="96, 141, 155, 154">
    <area href="search.jsp" shape="rect" coords="189, 139, 237, 154">
    <area href="complaint.jsp" shape="rect" coords="444, 140, 533, 154">
    <area href="postcomp.jsp" shape="rect" coords="542, 139, 639, 154">
    <area href="faq.jsp" shape="rect" coords="284, 140, 327, 153">
    <area href="index.jsp" shape="rect" coords="626, 97, 657, 108">
    <area href="contact.jsp" shape="rect" coords="364, 140, 432, 154">
    </map>
    <img border="0" src="JPG/UpperMenu_1.jpg" width="780" height="208" usemap="#FPMap0"></span><form>
      <table border="1" cellspacing="1" style="border-collapse: collapse; position: absolute; left: 187; top: 209; border-right-width: 0; border-top-width: 0; border-bottom-width: 0" bordercolor="#30A1DB" width="13" height="643">
        <tr>
          <td width="100%" style="border-left-style: solid; border-left-width: 1; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium">&nbsp;</td>
        </tr>
      </table>
      <table border="0" cellspacing="1" style="border-collapse: collapse; position: absolute; left: 158; top: 852" bordercolor="#111111" width="617" height="49">
        <tr>
          <td width="100%"><b><a style="text-decoration: none">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">About us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">Support</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">Services</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">Contacts</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">Help</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">FAQ</a></b></td>
        </tr>
      </table>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 188; top: 208" bordercolor="#111111" width="592" id="AutoNumber9" height="611">
        <tr>
          <td width="100%">
          <applet code="com.senior.login" width="580" height="600" style="position: absolute; left: 5; top: 20">
          </applet></td>
        </tr>
      </table>
      <p>
      &nbsp;</p>
    </form>

    <p><span style="position: absolute; left: 0; top: 209; z-index:-1">
    <img border="0" src="JPG/logleft.jpg" width="188" height="175"></span></p>
    
    
      
    
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 782" bordercolor="#111111" width="187" id="AutoNumber5" height="68">
      <tr>
        <td width="100%" background="JPG/left_bot.gif">&nbsp;</td>
      </tr>
    </table>
     <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 23; top: 796" bordercolor="#111111" width="152" id="AutoNumber7" height="50">
            <tr>
              <td width="100%" valign="top"><font color="#FFFFFF">
              <span style="font-size: 10pt">Copyright ©2005<br>
              E-AUCTION.com<br>
              All rights reserved</span></font></td>
            </tr>
          </table>
    <table cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 387; border-left-width:0; border-right-width:0" bordercolor="#30A1DB" width="187" id="AutoNumber1" height="151" border="1">
  
  <% 
  try{
  connect a=new connect();
  ResultSet b1=a.getcon().executeQuery("select * from Category");
  //session.setAttribute("result1",b1);
  for(int i=0;i<5;i++)
  {
  b1.next();
  %>
    <tr>
    <td width="186" height="44" bgcolor="#246494" background="JPG/cell_left.jpg" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </font><b><a href="/vf/redirect?page=<%= b1.getString(3) %>&cat=<%= b1.getString(1) %>" style= "text-decoration: none" >
    <font color="#FFFFFF" style="font-size: 11pt"><%= b1.getString(2) %></font></a></b></td>
  </tr>
  <%
  }
  a.concl();
				
				}
				catch(SQLException SQLe){}
	%>
	 <tr>
    <td width="186" height="44" bgcolor="#246494" background="JPG/cell_left.jpg" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </font><b><a href="allcat.jsp" style= "text-decoration: none" >
    <font color="#FFFFFF" style="font-size: 11pt">view all categories</font></a></b></td>
  </tr>
			
</table>
    </td>
  </tr>
</table>
<p>&nbsp;</p>
<%
}
else
{
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>