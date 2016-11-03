<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<meta http-equiv="Content-Language" content="en-us">
<link rel="File-List" href="viewport_files/filelist.xml">
<!--[if !mso]>
<style>
v\:*         { behavior: url(#default#VML) }
o\:*         { behavior: url(#default#VML) }
.shape       { behavior: url(#default#VML) }
</style>
<![endif]-->


<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<% 
String sta=""+session.getAttribute("status");
if(sta.equals("1")){
%> <!--[if gte mso 9]>
<xml><o:shapedefaults v:ext="edit" spidmax="1027"/>
</xml><![endif]-->






<body>







<p align="center">&nbsp;</p>
<table border="0" cellspacing="1" style="border-collapse: collapse; position: absolute; left: -2; top: -4" bordercolor="#111111" width="911" id="AutoNumber1" height="121" background="JPG/fon01.gif">
  <tr>
    <td width="100%">
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
</v:shapetype><v:shape id="_x0000_s1026" type="#_x0000_t161" alt="Portfolio Items"
 style='width:260.25pt;height:60pt' adj="5665">
 <v:shadow color="#868686"/>
 <v:textpath style='font-family:"Impact";v-text-kern:t' trim="t" fitpath="t"
  xscale="f" string="Portfolio Items"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=349 height=82
src="viewport_files/image001.gif" alt="Portfolio Items" v:shapes="_x0000_s1026"><![endif]></td>
  </tr>
</table>
<table border="2" cellspacing="1" style="border-collapse: collapse; position: absolute; left: 12; top: 120; border-style: inset" width="878" id="AutoNumber2" height="31">
  <tr>
    <td width="87" align="center">Item Id</td>
    <td width="88" align="center">Item Name</td>
    <td width="88" align="center">Item Category</td>
    <td width="88" align="center">Item Current Price</td>
    <td width="88" align="center">Item Type</td>
    <td width="88" align="center">Start Time</td>
    <td width="88" align="center">End Time</td>
    <td width="88" align="center">Status</td>
  </tr>
  
  
  <% 
  try{
  connect a=new connect();
  ResultSet b=a.getcon().executeQuery("SELECT Item.i_id, Item.i_title, Item.category_id, Auction.highest_bid, Item.type, "+
  									  "Auction.start_time, Auction.end_time, Auction.a_status FROM Customer,Auction,watchlist,Item "+
									  "WHERE (((Customer.c_loginname)='najilo') AND (Customer.c_loginname = Auction.c_loginname) AND "+
									  "(Customer.c_loginname = watchlist.c_loginname) AND (Auction.i_id = Item.i_id) AND (watchlist.i_id = Item.i_id)))");
  session.setAttribute("result",b);
	while(b.next())
  {
  %>
  <tr>
    <td width="87" align="center"><%= b.getString(1) %>&nbsp;</td>
    <td width="88" align="center"><%= b.getString(2) %>&nbsp;</td>
    <td width="88" align="center"><%= b.getString(3) %>&nbsp;</td>
    <td width="88" align="center"><%= b.getString(4) %>&nbsp;</td>
    <% String as=b.getString(5); if(as.equals("1")){as="Direct Sell";} else as="Bid Item"; %>
    <td width="88" align="center"><%=  as%>&nbsp;</td>
    <td width="88" align="center"><%= b.getString(6) %>&nbsp;</td>
    <td width="88" align="center"><%= b.getString(7) %>&nbsp;</td>
    <% String as1=b.getString(8); if(as.equals("1")){as="Item Sold";} else as="Not Sold yet"; %>
    <td width="88" align="center"><%= b.getString(8) %>&nbsp;</td>
  </tr>
  
  <%
  }
  a.concl();
	}
	catch(SQLException SQLe){}
  %>
</table>








<%
}
else
{
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>