<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">
<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<% 
String sta=""+session.getAttribute("status");
if(sta.equals("1")){
%>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="directsell_files/filelist.xml">

<title>Add new Bid</title>
<!--[if !mso]>
<style>
v\:*         { behavior: url(#default#VML) }
o\:*         { behavior: url(#default#VML) }
.shape       { behavior: url(#default#VML) }
</style>
<![endif]-->
<!--[if gte mso 9]>
<xml><o:shapedefaults v:ext="edit" spidmax="1027"/>
</xml><![endif]-->
</head>
<SCRIPT>
     <!--
//    Browser Compatible for this script: IE 2.0 or Higher
//                                        Netscape 2.0 or Higher
<% dater av=new dater();
String date=av.getdate();
try{
connect a12=new connect();
int ae12 = Integer.parseInt(""+session.getAttribute("i_id"));
ResultSet b12=a12.getcon().executeQuery("select * from Auction where Auction.i_id="+ae12+"");
b12.next();
%>
var status=<%=b12.getInt(8) %>;
if(status==1)
{
alert("This item has been Sold");
window.close();
}
var theDay = new Date("<%=b12.getString(6) %>")  //Date must be in the form Month Day, Year
var DayTill     //The string that is going to put all numbers together and make sense.
   <%
      a12.concl();
}
catch(SQLException SQLe){}
%>

function countdown()

{

var today = new Date("<%=date %>")    //Create a variable with today's date
var second = Math.floor((theDay.getTime() - today.getTime())/1000)  //Find the seconds
//alert(today);
var minute = Math.floor(second/60)  //Devide "second" into 60 to get the minutes
var hour = Math.floor(minute/60)  //Devide "minute" into 60 to get the hours
var day = Math.floor(hour/24)   //Devide "hour" into 60 to get the days

CDay= day     //Correct day
CHour= hour % 24    //Correct hour, after devide into 24, the remainder deposits here.
CMinute= minute % 60    //Correct minute, after devide into 60, the remainder deposits here.
CSecond= second % 60    //Correct second, after devide into 60, the remainder deposits here.

if (CDay < 0 ) {CDay = "0"; CHour = "0"; CMinute = "0"; CSecond = "0";DayTill="0";alert("this window will close because The Item has been sold.");window.close();} //Stop at 0
else{
DayTill =  CDay + " days, " + CHour + " hours, " + CMinute + " minutes and " + CSecond + " seconds "}
var counter = setTimeout("countdown()", 1000)
 //Make the particular form chart become "Daytill"

}

//-->
</script>
<body onload=countdown()>

<table border="0" cellspacing="0" width="491" cellpadding="0" style="position: absolute; left: 0; top: 0" id="AutoNumber1" background="JPG/fon01.gif" height="193">
  <tr>
    <td width="491" valign="top">
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
</v:shapetype><v:shape id="_x0000_s1025" type="#_x0000_t161" alt="Add new Bid"
 style='width:240pt;height:51.75pt' adj="5665">
 <v:shadow color="#868686"/>
 <v:textpath style='font-family:"Impact";v-text-kern:t' trim="t" fitpath="t"
  xscale="f" string="Direct Sell Item"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=322 height=69
src="directsell_files/image001.gif" alt="Add new Bid" v:shapes="_x0000_s1025"><![endif]>
<form method="POST" action="prosell.jsp">
     <p align="center">&nbsp;</p>
      <p align="center"><input type="submit" value="Submit Buy" name="B1"></p>
    </form>
    </td>
  </tr>
</table>

</body>
<%
}
else
{
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%></html>