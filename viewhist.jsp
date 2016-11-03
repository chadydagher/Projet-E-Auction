<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">
<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="viewhist_files/filelist.xml">
<title>History Page</title>
<!--[if !mso]>
<style>
v\:*         { behavior: url(#default#VML) }
o\:*         { behavior: url(#default#VML) }
.shape       { behavior: url(#default#VML) }
</style>
<![endif]--><!--[if gte mso 9]>
<xml><o:shapedefaults v:ext="edit" spidmax="1027"/>
</xml><![endif]-->
</head>

<body>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: -1; top: -1" bordercolor="#111111" width="523" id="AutoNumber1" height="279" background="JPG/fon01.gif">
  <tr>
    <td width="100%" valign="top">
    <p align="center"><!--[if gte vml 1]><v:shapetype id="_x0000_t161"
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
</v:shapetype><v:shape id="_x0000_s1026" type="#_x0000_t161" alt="Item History"
 style='width:224.25pt;height:60pt' adj="5665">
 <v:shadow color="#868686"/>
 <v:textpath style='font-family:"Impact";v-text-kern:t' trim="t" fitpath="t"
  xscale="f" string="Item History"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=301 height=80
src="viewhist_files/image001.gif" alt="Item History" v:shapes="_x0000_s1026"><![endif]></p>
    <table border="2" cellspacing="1" style="position: absolute; left: 8; top: 102" width="506" id="AutoNumber2" height="28">
      <tr>
        <td width="61" align="center"><b>Bid Id</b></td>
        <td width="107" align="center"><b>Bidder Name</b></td>
        <td width="74" align="center"><b>Item Id</b></td>
        <td width="93" align="center"><b>Bid Amount</b></td>
        <td width="150" align="center"><b>Bid Time And Date</b></td>
      </tr>
       <% 
  try{
  connect a=new connect();
  int ae1 = Integer.parseInt(""+session.getAttribute("i_id"));
  ResultSet b=a.getcon().executeQuery("select * from Bids where Bids.i_id="+ae1+" order by Bids.b_amount DESC");
  while( b.next())
  {
  %>
   <tr>
        <td width="61"><%=b.getString(1) %>&nbsp;</td>
        <td width="107"><%=b.getString(2) %>&nbsp;</td>
        <td width="74"><%=b.getString(3) %>&nbsp;</td>
        <td width="93"><%=b.getString(4) %>&nbsp;</td>
        <td width="150"><%=b.getString(5) %>&nbsp;</td>
      </tr>
      <%
      }
      a.concl();
      }
      catch(SQLException SQLe){}
      %>
    </table>
    </td>
  </tr>
</table>

</body>

</html>