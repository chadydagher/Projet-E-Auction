<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">
<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

<link rel="File-List" href="search_r_files/filelist.xml">


<title>Search Result</title>
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

<body bgcolor="#246494" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 2" bordercolor="#111111" width="700" id="AutoNumber1" height="231">
  <tr>
    <td width="700" valign="top" height="80">
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
</v:shapetype><v:shape id="_x0000_s1025" type="#_x0000_t161" alt="Search Result"
 style='width:510pt;height:60pt;float:left' adj="5665">
 <v:shadow color="#868686"/>
 <v:textpath style='font-family:"Impact";v-text-kern:t' trim="t" fitpath="t"
  xscale="f" string="Search Result"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=682 height=79
src="search_r_files/image001.gif" align=left alt="Search Result" v:shapes="_x0000_s1025"><![endif]></td>
  </tr>
  <tr>
  <td width="700" height="85" valign="top">
  <p align="left">&nbsp;</p>
  <%

String category=request.getParameter("categ");
String criteria="%"+request.getParameter("crit")+"%";
String type=request.getParameter("type");
int typ=1;
if(type.equals("All Types"))
{
type="%";
}
if(type.equals("Direct Sell Items"))
{
type="1";
}
if(type.equals("Bidding Items"))
{
type="2";
}
if(category.equals("All Categories"))
{
category="%";
}
try{
int total=0;
connect a=new connect();
ResultSet b=a.getcon().executeQuery("SELECT Item.i_title, Item.i_description,Item.i_id "+
"FROM Category INNER JOIN Item ON Category.category_id = Item.category_id "+
"WHERE (((Item.i_title) Like '"+criteria+"')  OR ((Item.i_description) Like '"+criteria+"')) AND ((Category.category_name) Like '"+category+"') AND ((Item.type) Like '"+type+"') ");
while(b.next())
{
String title=""+b.getString(1);
String descr=""+b.getString(2);

%>

<p align="left"><font color="#FFffff"><u><font size="4"><a target="_blank" href="/vf/redirect2?itemid=<%= b.getString(3) %>"><%= title %></a></font></u></font><font size="6"><br />
</font><font color="#00000" size="2"><%= descr %></font><br /></font>
</p>
<%
total++;
}
%>
<p align="left">
<br /><br /></p>
<p align="center"><font color="#FFFFFF">Total found result = <%=total %></font></p> 
<%
a.concl();
}
catch(SQLException SQLe){}
%>

    </td>
  </tr>
</table>




</body>

</html>