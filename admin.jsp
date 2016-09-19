<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<meta http-equiv="Content-Language" content="en-us">
<link rel="File-List" href="admin_files/filelist.xml">
<!--[if !mso]>
<style>
v\:*         { behavior: url(#default#VML) }
o\:*         { behavior: url(#default#VML) }
.shape       { behavior: url(#default#VML) }
</style>
<![endif]-->



<%@ page language= "java" import = "javax.swing.*, com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<% 

String query=""+request.getParameter("query");

String sta=""+session.getAttribute("sta");


if(sta.equals("1")){
if(query.equals("null"))
{
%>
<SCRIPT LANGUAGE="JAVASCRIPT"><!--  hide        

function customize(ad,hg,gh,fg) {    
var win4=window.open("", ""+hg);
win4.close();
        var address = ad;   
        var op_tool  =0;    
        var op_loc_box  =0;    
        var op_dir  =0;    
        var op_stat  =0;    
        var op_menu  =0;    
        var op_scroll  =1;    
        var op_resize  =0;    
        var op_wid  = gh;   
        var op_heigh = fg;                 
        var option = "toolbar="+ op_tool +",location="+ op_loc_box +",directories="+ op_dir +",status="+ op_stat +",menubar="+ op_menu +",scrollbars="+ op_scroll +",resizeable="+ op_resize 
        +                ",width="       
        + op_wid +                ",height="      + op_heigh;
        var win3 = window.open("", ""+hg, option); 
         
        var win4 = window.open(address, ""+hg);
}


function clear(form){ 
        document.form1.wid.value=""; 
        document.form1.heigh.value="";
        window.close();
}
// done hiding -->

 
</SCRIPT>



<!--[if gte mso 9]>
<xml><o:shapedefaults v:ext="edit" spidmax="1027"/>
</xml><![endif]-->



















<body bgcolor="#246494">

<p align="center">&nbsp;</p>
<table border="0" cellspacing="1" style="border-collapse: collapse; position: absolute; left: 1; top: 1" bordercolor="#111111" width="1263" id="AutoNumber1" height="42" background="JPG/fon_bot_1.gif">
  <tr>
    <td width="1174">
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
 style='width:359.25pt;height:21.75pt' adj="0">
 <v:shadow color="#868686"/>
 <v:textpath style='font-family:"Impact";v-text-kern:t' trim="t" fitpath="t"
  xscale="f" string="Managing Database Records"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=481 height=31
src="admin_files/image001.gif" alt="Portfolio Items" v:shapes="_x0000_s1026"><![endif]></td>
</tr>
</table>
<table border="0" cellspacing="0" style="border-color:#246494; position: absolute; left: 351; top: 46; border-collapse: collapse; border-style: ridge" bordercolor="#FFFFFF" width="436" id="AutoNumber2" height="242" cellpadding="0">
  <form method="POST" action="exequer.jsp">
  <tr>
    <td width="433" style="border:1px ridge #000000; " height="203" valign="top" bgcolor="#246494">
    
      <p align="center">
      <textarea rows="9" name="query" cols="50" style="position: absolute; left: 4; top: 43"></textarea></p>
    
      <div align="center">
        <center>
        <p><font color="#FFFFFF"><u><b>Enter a Query to execute it :</b></u></font></p>
        </center>
      </div>
    </td>
  </tr>
  <tr>
    <td width="433" style="border:2px ridge #246494; " height="30" bordercolor="#FFFFFF" bgcolor="#246494">
    <p align="center"><input type="Submit" /></a></td>
  </tr></form>
</table>

<%
}
}
if(sta.equals("0") || sta.equals("") || sta.equals("null"))
{
%>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 0" bordercolor="#111111" width="1264" id="AutoNumber3" height="543">

  <tr>
    <td width="100%" background="JPG/fon_bot_1.gif" height="41">
    <p align="center"><!--[if gte vml 1]><v:shapetype
 id="_x0000_t136" coordsize="21600,21600" o:spt="136" adj="10800" path="m@7,l@8,m@5,21600l@6,21600e">
 <v:formulas>
  <v:f eqn="sum #0 0 10800"/>
  <v:f eqn="prod #0 2 1"/>
  <v:f eqn="sum 21600 0 @1"/>
  <v:f eqn="sum 0 0 @2"/>
  <v:f eqn="sum 21600 0 @3"/>
  <v:f eqn="if @0 @3 0"/>
  <v:f eqn="if @0 21600 @1"/>
  <v:f eqn="if @0 0 @2"/>
  <v:f eqn="if @0 @4 21600"/>
  <v:f eqn="mid @5 @6"/>
  <v:f eqn="mid @8 @5"/>
  <v:f eqn="mid @7 @8"/>
  <v:f eqn="mid @6 @7"/>
  <v:f eqn="sum @6 0 @5"/>
 </v:formulas>
 <v:path textpathok="t" o:connecttype="custom" o:connectlocs="@9,0;@10,10800;@11,21600;@12,10800"
  o:connectangles="270,180,90,0"/>
 <v:textpath on="t" fitshape="t"/>
 <v:handles>
  <v:h position="#0,bottomRight" xrange="6629,14971"/>
 </v:handles>
 <o:lock v:ext="edit" text="t" shapetype="t"/>
</v:shapetype><v:shape id="_x0000_s1028" type="#_x0000_t136" style='width:494.25pt;
 height:21pt'>
 <v:shadow color="#868686"/>
 <v:textpath style='font-family:"Arial Black";v-text-kern:t' trim="t"
  fitpath="t" string="Administrator Members Area"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=663 height=31
src="admin_files/image002.gif" alt="Administrator Members Area" v:shapes="_x0000_s1028"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" height="107" background="JPG/fon01.gif">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="19" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="19" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="19" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="42" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
        <form method="POST" action="admin.jsp">
          <tr>
    <td width="100%" height="19" align="center" bgcolor="#FFFFFF"><b>
    <font face="Shruti">User Nam<applet width="237" height="70" code="com.senior.logina.class" codebase="./" style="position: absolute; left: 560; top: 252">
    </applet>e :&nbsp; &nbsp;&nbsp; </font>
    </b></td>
  </tr>
  <tr>
    <td width="100%" height="19" align="center" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="250" bgcolor="#FFFFFF" valign="top">

<p align="center">
      &nbsp;</p>
</form>
&nbsp;</td>
  </tr>
      
</table>


<%
}
%>