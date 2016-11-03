<html>
<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<% 
String sta=""+session.getAttribute("status");
if(sta.equals("1")){
%>
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Process Bid</title>
</head>
<SCRIPT>
     <!--
     
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

if (CDay < 0 ) {CDay = "0"; CHour = "0"; CMinute = "0"; CSecond = "0";DayTill="0";alert("Your Bid cant be accepted because time has finished.");window.close();} //Stop at 0
else{
DayTill =  CDay + " days, " + CHour + " hours, " + CMinute + " minutes and " + CSecond + " seconds "}


 //Make the particular form chart become "Daytill"

}

//-->
</script>

<body background="JPG/fon01.gif">
  <%
try{
connect a=new connect();
int ae = Integer.parseInt(""+session.getAttribute("i_id"));
ResultSet b=a.getcon().executeQuery("select * from Auction where Auction.i_id="+ae+"");
b.next();
double high=Double.parseDouble(b.getString(7));
double bid=Double.parseDouble(""+request.getParameter("bid"));
if(bid>high)
{
ResultSet b2=a.getcon().executeQuery("select * from Bids order by Bids.b_id");
b2.last();
int id=b2.getInt(1)+1;
String user=""+session.getAttribute("user");
int i_id=Integer.parseInt(""+session.getAttribute("i_id"));
dater aw=new dater();
String da=aw.getdate();
a.getcon().executeUpdate("insert into Bids values ("+id+",'"+user+"',"+i_id+","+bid+",'"+da+"')");
a.getcon().executeUpdate("update Auction set Auction.highest_bid="+bid+" where Auction.i_id="+i_id+"");
%>
 <table border="0" cellspacing="0" width="491" cellpadding="0" style="position: absolute; left: 0; top: 0" id="AutoNumber2" height="238">
    <tr>
      <td width="100%">
<p align="center"><b><font size="5">You have successfully bidded on the item</font></b></p>
      <form method="POST">
        <p align="center"><input onclick=window.close() type="submit" value="Close Page" name="B1"></p>
      </form>
      <p>&nbsp;</td>
    </tr>
  </table>
<%
}
else
{
%>
 <table border="0" cellspacing="0" width="491" cellpadding="0" style="position: absolute; left: 0; top: 0" id="AutoNumber1" height="238">
    <tr>
      <td width="100%">
<p align="center"><b><font size="5">There were an error while processing data</font></b></p>
<p align="center"><b><font size="5">The bid you have entered is lower then the</font></b></p>
<p align="center"><b><font size="5">Current one click back to correct it</font></b></p>
      <form method="POST" action="bid.jsp">
        <p align="center"><input type="submit" value="Back" name="B3"></p>
      </form>
      <p>&nbsp;</td>
    </tr>
  </table>
<%
}
      a.concl();
}
catch(SQLException SQLe){}
%>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
 
</body>

</html>
<%
}
else
{
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>