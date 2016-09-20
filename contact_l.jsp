<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<% 
String sta=""+session.getAttribute("status");
if(sta.equals("1")){
%>
<meta http-equiv="Content-Language" content="en-gb">
 <link rel="File-List" href="contact_l_files/filelist.xml">

<SCRIPT LANGUAGE="JAVASCRIPT"><!--  hide        

function customize() {    
        var address = "changepass.jsp";   
        var op_tool  =0;    
        var op_loc_box  =0;    
        var op_dir  =0;    
        var op_stat  =0;    
        var op_menu  =0;    
        var op_scroll  =1;    
        var op_resize  =0;    
        var op_wid  = 500;   
        var op_heigh = 280;                 
        var option = "toolbar="+ op_tool +",location="+ op_loc_box +",directories="+ op_dir +",status="+ op_stat +",menubar="+ op_menu +",scrollbars="+ op_scroll +",resizeable="+ op_resize 
        +                ",width="       
        + op_wid +                ",height="      + op_heigh;
        var win3 = window.open("", "what_I_want", option);  
        var win4 = window.open(address, "what_I_want");
}
function customize1() {    
        var address = "SMSSender.html";   
        var op_tool  =0;    
        var op_loc_box  =0;    
        var op_dir  =0;    
        var op_stat  =0;    
        var op_menu  =0;    
        var op_scroll  =1;    
        var op_resize  =0;    
        var op_wid  = 440;   
        var op_heigh = 370;                 
        var option = "toolbar="+ op_tool +",location="+ op_loc_box +",directories="+ op_dir +",status="+ op_stat +",menubar="+ op_menu +",scrollbars="+ op_scroll +",resizeable="+ op_resize 
        +                ",width="       
        + op_wid +                ",height="      + op_heigh;
        var win3 = window.open("", "what_I_want", option);  
        var win4 = window.open(address, "what_I_want");
}

function clear(form){ 
        document.form1.wid.value=""; 
        document.form1.heigh.value="";
}
// done hiding -->
</SCRIPT>

<!--[if !mso]>
<style>
v\:*         { behavior: url(#default#VML) }
o\:*         { behavior: url(#default#VML) }
.shape       { behavior: url(#default#VML) }
</style>
<![endif]--><!--[if gte mso 9]>
<xml><o:shapedefaults v:ext="edit" spidmax="1027"/>
</xml><![endif]-->












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
    <area href="search.jsp" shape="rect" coords="187, 139, 241, 153">
    <area href="complaint.jsp" shape="rect" coords="445, 140, 532, 154">
    <area href="postcomp.jsp" shape="rect" coords="540, 139, 639, 154">
    <area href="faq.jsp" shape="rect" coords="286, 141, 325, 153">
    <area href="index.jsp" shape="rect" coords="626, 97, 656, 108">
    <area href="contact.jsp" shape="rect" coords="363, 140, 432, 153">
    </map>
    <img border="0" src="JPG/UpperMenu_1.jpg" width="780" height="208" usemap="#FPMap0"></span><form>
      </form>
      <table border="1" cellspacing="1" style="border-collapse: collapse; position: absolute; left: 187; top: 209; border-right-width: 0; border-top-width: 0; border-bottom-width: 0" bordercolor="#30A1DB" width="13" height="643">
        <tr>
          <td width="100%" style="border-left-style: solid; border-left-width: 1; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium">&nbsp;</td>
        </tr>
      </table>
      <table border="0" cellspacing="1" style="border-collapse: collapse; position: absolute; left: 129; top: 852" bordercolor="#111111" width="646" height="50">
        <tr>
          <td width="100%"><b><a style="text-decoration: none">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">About us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">Support</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">Services</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">Contacts</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <span lang="en-us">NewsLetter</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none">FAQ</a></b></td>
        </tr>
      </table>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 188; top: 208" bordercolor="#111111" width="592" id="AutoNumber9" height="611">
        <tr>
          <td width="100%">
          </td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 188; top: 209" bordercolor="#111111" width="593" id="AutoNumber10" height="639">
        <tr>
          <td width="100%" background="JPG/fon01.gif" height="250" valign="middle">
          <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; float: left; left: 30; top: 19" bordercolor="#111111" width="593" id="AutoNumber11" height="150">
            <tr>
              <td width="100%"><!--[if gte vml 1]><v:shapetype id="_x0000_t161"
 coordsize="21600,21600" o:spt="161" adj="4050" path="m,c7200@0,14400@0,21600,m,21600c7200@1,14400@1,21600,21600e">
 <v:formulas>
  <v:f eqn="prod #0 4 3"/>
  <v:f eqn="sum 21600 0 @0"/>
  <v:f eqn="val #0"/>
  <v:f eqn="sum 21600 0 #0"/>
 </v:formulas>
 <v:path textpathok="t" o:connecttype="custom" o:connectlocs="10800,@2;0,10800;10800,@3;21600,10800"
  o:connectangles="270,180,90,0"/>
 <v:textpath on="t" fitshape="t" xscale="t"/>
 <v:handles>
  <v:h position="center,#0" yrange="0,8100"/>
 </v:handles>
 <o:lock v:ext="edit" text="t" shapetype="t"/>
</v:shapetype><v:shape id="_x0000_s1028" type="#_x0000_t161" alt="E-AUCTION Search Engine"
 style='width:388.5pt;height:60pt' adj="5665">
 <v:shadow color="#868686"/>
 <v:textpath style='font-family:"Impact";v-text-kern:t' trim="t" fitpath="t"
  xscale="f" string="Contact Us"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=520 height=76
src="contact_l_files/image001.gif" alt="E-AUCTION Search Engine" v:shapes="_x0000_s1028"><![endif]></td>
            </tr>
          </table>
          </td>
        </tr>
        <tr>
          <td width="100%" height="318" bgcolor="#FFFFFF">
          <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 235" bordercolor="#111111" width="575" id="AutoNumber12" height="133">
            <tr>
              <td width="100%">
              <p align="center"><span lang="en-us">For Technical issues :
              <a href="mailto:webmaster@e-auction.com">webmaster@e-auction.com</a></span></p>
              <p align="center"><span lang="en-us">For general information :
              <a href="mailto:info@e-auction.com">info@e-auction.com</a></span></p>
              <p align="center"><span lang="en-us">For Adding new ideas :
              <a href="mailto:enhance@e-auction.com">enhance@e-auction.com</a></span></p>
              <p>&nbsp;</td>
            </tr>
          </table>
          <p>&nbsp;</p>
          </td>
        </tr>
      </table>
     
    </form>

    <p><span style="position: absolute; left: 0; top: 209">
    <map name="FPMap1">
    <area href="index_chat.jsp" shape="rect" coords="26, 55, 117, 69">
    <area href="logoff.jsp" shape="rect" coords="26, 138, 116, 152">
    <area href=javascript:customize() shape="rect" coords="25, 35, 113, 50">
    <area href=javascript:customize1() shape="rect" coords="26, 75, 126, 89">
    <area href="index_portfolio.jsp" shape="rect" coords="26, 95, 100, 110">
    <area href="upload.jsp" shape="rect" coords="26, 114, 95, 130">
    </map>
    <img border="0" src="JPG/logleft.jpg" width="188" height="175" usemap="#FPMap1"></span></p>

    
    
      
    
    <form name="op" style="position: absolute; left: 359; top: 470">
      <p>
      </p>
    </form>
    
    
      
    
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
<jsp:forward page="contact.jsp"></jsp:forward>
<%
}
%>