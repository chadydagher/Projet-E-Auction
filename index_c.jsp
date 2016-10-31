<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>
<meta http-equiv="Content-Language" content="en-gb">
<base target="_self">

<body bgcolor="#246494" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<SCRIPT LANGUAGE="JAVASCRIPT"><!--  hide        

function customize(ad) {    
var win4=window.open("", "what_I_want");
win4.close();
        var address = ad;   
        var op_tool  =0;    
        var op_loc_box  =0;    
        var op_dir  =0;    
        var op_stat  =0;    
        var op_menu  =0;    
        var op_scroll  =1;    
        var op_resize  =0;    
        var op_wid  = 800;   
        var op_heigh = 500;                 
        var option = "toolbar="+ op_tool +",location="+ op_loc_box +",directories="+ op_dir +",status="+ op_stat +",menubar="+ op_menu +",scrollbars="+ op_scroll +",resizeable="+ op_resize 
        +                ",width="       
        + op_wid +                ",height="      + op_heigh;
        var win3 = window.open("", "what_I_want", option); 
         
        var win4 = window.open(address, "what_I_want");
}
function clear(form){ 
        document.form1.wid.value=""; 
        document.form1.heigh.value="";
        window.close();
}
// done hiding -->
</SCRIPT>

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
    <area href="register.jsp" shape="rect" coords="97, 139, 155, 154">
    <area href="index.jsp" shape="rect" coords="19, 140, 64, 154">
    <area href="search.jsp" shape="rect" coords="189, 140, 238, 154">
    <area href="complaint.jsp" shape="rect" coords="445, 140, 533, 153">
    <area href="postcomp.jsp" shape="rect" coords="542, 138, 638, 155">
    <area href="index.jsp" shape="rect" coords="625, 97, 658, 107">
    <area href="faq.jsp" shape="rect" coords="285, 140, 328, 154">
    <area href="contact.jsp" shape="rect" coords="363, 141, 432, 152">
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
      <p>
      <input type="password" name="T2" size="14" style="position: absolute; left:71; top:279">
      <input type="text" name="T1" size="14" style="position: absolute; left: 72; top: 257"></p>
    </form>

    <p><span style="position: absolute; left: 0; top: 209; z-index:-1">
    <img border="0" src="JPG/LeftMenu.jpg" width="188" height="175"></span></p>
    
     <% 
    
  try{
  connect a1=new connect();
  int ae = Integer.parseInt(""+session.getAttribute("cat"));
  ResultSet b1=a1.getcon().executeQuery("SELECT * FROM Category WHERE Category.category_id="+ ae +"");
  b1.next();
	String cat=b1.getString(2);
	%>

     <table border="0" cellspacing="0" width="593" cellpadding="0" style="position: absolute; left: 187; top: 176" id="AutoNumber9" height="32">
      <tr>
        <td width="100%">
        <p align="center"><b><span lang="en-us"><font size="4">Category Name : <%=cat %></font></span></b></td>
      </tr>
    </table>
    
   <%
   a1.concl();
   }
    catch(SQLException SQLe){}
    %>
     
    
    <% 
    
  try{
  int io=0,top=300,count=0;
  connect a1=new connect();
  int ae = Integer.parseInt(""+session.getAttribute("cat"));
  ResultSet b1=a1.getcon().executeQuery("SELECT Count (*) FROM Category, Item WHERE Category.category_id=Item.category_id And (((Category.category_id)="+ ae +"))");
  b1.next();
  int rcount = b1.getInt(1);
  b1.close();
  ResultSet b=a1.getcon().executeQuery("SELECT Item.i_title, Item.i_id, Item.img FROM Category, Item WHERE Category.category_id=Item.category_id And (((Category.category_id)="+ ae +")) order by Item.i_id");
  	
  int nbpage=(int) Math.ceil((double) rcount/3);

  
  session.setAttribute("result",b);
  session.setAttribute("pgnb",""+nbpage);
  
  int st=Integer.parseInt(""+session.getAttribute("st"));
  if(st==0){
  String cou=""+(count+1);
  session.setAttribute("st",""+cou);
  }
  else
  {
  int stp=Integer.parseInt(""+session.getAttribute("stp"));
  b.absolute(((stp-1)*3)+1);
  b.previous();
  }
  
  String link="";
	while(b.next() && count<3 )
	{
	String i_id=b.getString(2);
	link="/vf/redirect2?itemid="+i_id;
	if((io+1)%4==0)
	{
	io=0;top+=175;
	
	%>
    <table border="1" cellspacing="1" style="border-collapse: collapse; position: absolute; left= '<%= (io*190)+209 %> px' ; top='<%= top %> px'"; bordercolor="#30A1DB" width="170" id="<%= io+top %>" height="157">
      <tr>
        <td width="100%" height="74">
        <p align="center">
        <img src="<%= b.getString(3) %>" width="150" height="100" alt="<%= b.getString(1) %>"></a></td>
      </tr>
      <tr>
        <td width="100%" height="35"><font color="#FFFFFF">Item
        <font face="Times New Roman"># : <%= i_id %><span style="position: absolute; left: 85; top: 124"><a href=javascript:customize("<%= link %>")><img border="0" src="JPG/button_1.gif" width="75" height="23"></a></span></font></font></td>
      </tr>
    </table>
    
    
    <%
    }
else
{
	%>
    <table border="1" cellspacing="1" style="border-collapse: collapse; position: absolute; left= '<%= (io*190)+209 %> px' ; top='<%= top %> px'"; bordercolor="#30A1DB" width="170" id="<%= io+top %>" height="157">
      <tr>
        <td width="100%" height="74">
        <p align="center">
        <img src="<%= b.getString(3) %>" width="150" height="100" alt="<%= b.getString(1) %>"></a></td>
      </tr>
      <tr>
        <td width="100%" height="35"><font color="#FFFFFF">Item
        <font face="Times New Roman"># : <%= i_id %><span style="position: absolute; left: 85; top: 124"><a href=javascript:customize("<%=link %>")><img border="0" src="JPG/button_1.gif" width="75" height="23"></a></span></font></font></td>
      </tr>
    </table>
    
    
    <%
    }
    io++;count++;}    a1.concl();
  }
  
				
				
				catch(SQLException SQLe){}
	%>
    
    
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
  ResultSet b=a.getcon().executeQuery("select * from Category");
  session.setAttribute("result",b);
  for(int i=0;i<5;i++)
  {
  b.next();
  %>
    <tr>
    <td width="186" height="44" bgcolor="#246494" background="JPG/cell_left.jpg" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </font><b><a href="/vf/redirect?page=<%= b.getString(3) %>&cat=<%= b.getString(1) %>" style= "text-decoration: none" >
    <font color="#FFFFFF" style="font-size: 11pt"><%= b.getString(2) %></font></a></b></td>
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
    <font color="#FFFFFF" style="font-size: 11pt">View all categories</font></a></b></td>
  </tr>
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 190; top: 820" width="591" id="AutoNumber8" height="19">
       <tr>
         <td width="589" valign="top">&nbsp;&nbsp; <b><font color="#FFFFFF">Page 
         # :&nbsp;&nbsp;&nbsp;
         <% 
         int pgnb=Integer.parseInt(""+session.getAttribute("pgnb"));
         if(pgnb==0)
         {
         %>
         0
         <%
         }
         else
         {
         for (int i=0 ;i<pgnb;i++ )
         
         {
         %>
        <a href="/vf/redirect1?page=<%= ""+session.getAttribute("loc") %>&cat=<%= ""+session.getAttribute("cat") %>&stp=<%= (i+1) %>" style= "text-decoration: none" ><%= i+1 %>&nbsp;&nbsp;</a>
         <%
         }
         }
         %>
         </font></b></td>
       </tr>
    </table>			
</table>
 
    </td>
  </tr>
</table>
<p>&nbsp;</p>