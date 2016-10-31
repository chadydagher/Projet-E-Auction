<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<html>

<head>
<meta http-equiv="Content-Language" content="en-gb">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Item Description</title>


<SCRIPT>
     
     function customize(ad,he,wi) {  
     var win4=window.open("",""+(he+wi));
	 win4.close();  
        var address = ad;
        var ads=he+wi;
        var op_tool  =0;    
        var op_loc_box  =0;    
        var op_dir  =0;    
        var op_stat  =0;    
        var op_menu  =0;    
        var op_scroll  =1;    
        var op_resize  =0;    
        var op_wid  = wi;   
        var op_heigh = he;                 
        var option = "toolbar="+ op_tool +",location="+ op_loc_box +",directories="+ op_dir +",status="+ op_stat +",menubar="+ op_menu +",scrollbars="+ op_scroll +",resizeable="+ op_resize 
        +                ",width="       
        + op_wid +                ",height="      + op_heigh;
        var win3 = window.open("", ads, option);  
        var win4 = window.open(address, ads);
        
}

function clear(form){ 
        document.form1.wid.value=""; 
        document.form1.heigh.value="";
}

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

var theDay = new Date("<%=b12.getString(6) %>")  //Date must be in the form Month Day, Year
var DayTill     //The string that is going to put all numbers together and make sense.

function isold(){document.cl.dir.value = "Item sold";}
function countdown()

{
history.go(1);
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

if (CDay < 0 ) {CDay = "0"; CHour = "0"; CMinute = "0"; CSecond = "0";DayTill="Time For This Item has finished......!";} //Stop at 0
else{
DayTill =  CDay + " days, " + CHour + " hours, " + CMinute + " minutes and " + CSecond + " seconds "}

var status=<%=b12.getInt(8) %>;
if(status==1)
{
DayTill="Item Sold";
}
document.cl.dir.value = DayTill //Make the particular form chart become "Daytill"

}

//-->
   <%
      a12.concl();
}
catch(SQLException SQLe){}
%>
    </SCRIPT>
</head>

<body bgcolor="#246494" onload=countdown() link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 0" bordercolor="#111111" width="775" id="AutoNumber1" background="JPG/UpperMenu_1.jpg" height="117">
  <tr>
    <td width="1101">&nbsp;</td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 1; top: 118" bordercolor="#111111" width="774" id="AutoNumber2" height="41">
  <tr>
  
  <%
try{
connect a1=new connect();
int ae1 = Integer.parseInt(""+session.getAttribute("i_id"));
ResultSet b1=a1.getcon().executeQuery("select * from Item where Item.i_id="+ae1+"");
b1.next();

%>
    <td width="100%" background="JPG/fon_bot_1.gif"><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=b1.getString(2) %></font></td>
       
  </tr>
</table>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 159" bordercolor="#00B7DF" width="269" id="AutoNumber3" height="277">
  <tr>
    <td width="1156" height="247">
    <span style="position: absolute; left: 6; top: 6">
    <img border="0" src="<%=b1.getString(5) %>" width="259" height="233"></span></td>
  </tr>
  <tr>
    <td width="1156" height="30">&nbsp;<span style="position: absolute; left: 14; top: 252"><img border="0" src="JPG/iconDownArrow_20x20.gif" width="20" height="20"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <font size="4" color="#FFFFFF"><u>Click here for larger Picture</u></font></td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 275; top: 163" bordercolor="#111111" width="499" id="AutoNumber4" height="353">
  <tr>
    <td width="100%" valign="top">
    <address>
      <font color="#FFFFFF">
      <span style="font-style: normal; text-decoration: underline">Item General 
      Information</span></font></address>
    <address>
&nbsp;</address>

<%
          String type=""+b1.getString(6);
if(type.equals("2"))
{
type="Bidding";

try{
connect a=new connect();
int ae = Integer.parseInt(""+session.getAttribute("i_id"));

ResultSet b=a.getcon().executeQuery("select * from Auction where Auction.i_id="+ae+"");
ResultSet b2=a.getcon().executeQuery("select * from Item where Item.i_id="+ae+"");
ResultSet b3=a.getcon().executeQuery("select * from Bids where Bids.i_id="+ae+" order by Bids.b_amount");
b3.last();
b.next();
b2.next();
%>


    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Current Bid :</span> <%= b.getString(7) %> $</font></u>
    </address>
     
    <form name="but" method="POST">
      <p>
      <input onclick=customize("bid.jsp",238,491) type="submit" value="Place A bid &gt;&gt;&gt;" name="B3" style="position: absolute; left: 11; top: 70"></p>
    </form>
    <address>
&nbsp;</address>
    <address>
&nbsp;</address>
    <address>
	<u><font color="#FFFFFF"><span style="font-style: normal">Seller Name :</span> <%= b.getString(2) %></font></u></address>
    <address>
    <form name="cl" style="position: absolute; left: 1; top: 148">
		<u><font color="#FFFFFF"><span style="font-style: normal">Time Left :</span> <input readonly="readonly" size=40 name=dir></font></u></address>
      </form>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Start Time :</span> <%= b.getString(5) %></font></u></address>
    <address>
      &nbsp;</address>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Bids History :</span><a href=javascript:customize("viewhist.jsp",280,540)>(Click to view history)</a></font></u></address>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Highest Bidder :</span> <%= b3.getString(2) %></font></u></address>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Item Location :</span> <%= b2.getString(7) %></font></u></address>
    <address>
      <font color="#FFFFFF"><span style="font-style: normal"><u>Ships To :</u></span></font></address>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Shipping costs</span></font></u></address>
    <address>
&nbsp;</address>
    <address>
      <font color="#FFFFFF"><span style="font-style: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <u>Shipping, payment details and return policy<span style="position: absolute; left: 78; top: 285"><img border="0" src="JPG/iconDownArrow_20x20.gif" width="20" height="20"></span></u></span></font></address>
    </td>
  </tr>
   <%
      a.concl();
}
catch(SQLException SQLe){}
}
else
{

type="Bidding";
try{
connect a4=new connect();
String sold="";
int ae5 = Integer.parseInt(""+session.getAttribute("i_id"));
ResultSet b6=a4.getcon().executeQuery("select * from Item where Item.i_id="+ae5+"");
ResultSet b7=a4.getcon().executeQuery("select * from Bids where Bids.i_id="+ae5+"");
if(b7.next())
{
sold=b7.getString(2);
}
else
sold="Item is not sold yet";
ResultSet b5=a4.getcon().executeQuery("select * from Auction where Auction.i_id="+ae5+"");
b5.next();
b6.next();

%>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Item Price :</span> <%=b5.getString(4) %> $</font></u></address>

      
     
    <form method="POST">
      <p>
      <input onclick=customize("directsell.jsp",193,491) type="submit" value="Direct Sell &gt;&gt;&gt;" name="B3" style="position: absolute; left: 11; top: 70"></p>
    </form>
    <address>
&nbsp;</address>
    <address>
&nbsp;</address>
	<address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Seller Name :</span> <%=b5.getString(2) %></font></u></address>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Start Time :</span> <%=b5.getString(5) %></font></u></address>
    <form name="cl" style="position: absolute; left: 1; top: 148">
		<u><font color="#FFFFFF"><span style="font-style: normal">Time Left :</span> <input readonly="readonly" size=40 name=dir></font></u></address>
      </form>    
      <address>&nbsp;</address>	
      <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Item Location :</span> <%=b6.getString(7) %></font></u></address>
      <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Sold To :</span> <%=sold %></font></u></address>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Ships To :</span></font></u></address>
    <address>
      <u><font color="#FFFFFF"><span style="font-style: normal">Shipping costs :</span></font></u></address><address>&nbsp;</address>	
    <address>
&nbsp;</address>
    <address>
      <font color="#FFFFFF"><span style="font-style: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <u>Shipping, payment details and return policy<span style="position: absolute; left: 78; top: 283"><img border="0" src="JPG/iconDownArrow_20x20.gif" width="20" height="20"></span></u></span></font></address>
    </td>
  </tr>
   <%
      a4.concl();
}
catch(SQLException SQLe){}



            
            }
a1.concl();
}
catch(SQLException SQLe){}
%>
</table>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 1; top: 500" bordercolor="#111111" width="774" id="AutoNumber5" background="JPG/fon_bot_1.gif" height="41">
  <tr>
    <td width="100%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font size="4">&nbsp;Item Description</font></td>
  </tr>
  

</table>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 10; top: 562" bordercolor="#111111" width="731" id="AutoNumber6" height="50">
  <tr>
    <%
try{
connect a2=new connect();
int ae2 = Integer.parseInt(""+session.getAttribute("i_id"));
ResultSet b2=a2.getcon().executeQuery("select * from Item where Item.i_id="+ae2+"");
b2.next();

%>
    
    <td width="100%"><font color="#FFFFFF"><%=b2.getString(3) %></td>
            <%
      a2.concl();
}
catch(SQLException SQLe){}
%>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
</table>

</body>

</html>