<%@ page language= "java" import = "com.senior.* , java.sql.*" session= "true" %>
<% 
String sta=""+session.getAttribute("status");
if(sta.equals("1")){
%>
<meta http-equiv="Content-Language" content="en-gb">
<head>
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

 <SCRIPT LANGUAGE="JavaScript">

var hexcase = 0;  /* hex output format. 0 - lowercase; 1 - uppercase        */
var b64pad  = ""; /* base-64 pad character. "=" for strict RFC compliance   */
var chrsz   = 8;  /* bits per input character. 8 - ASCII; 16 - Unicode      */


function hex_md5(s){ return binl2hex(core_md5(str2binl(s), s.length * chrsz));}
function b64_md5(s){ return binl2b64(core_md5(str2binl(s), s.length * chrsz));}
function str_md5(s){ return binl2str(core_md5(str2binl(s), s.length * chrsz));}
function hex_hmac_md5(key, data) { return binl2hex(core_hmac_md5(key, data)); }
function b64_hmac_md5(key, data) { return binl2b64(core_hmac_md5(key, data)); }
function str_hmac_md5(key, data) { return binl2str(core_hmac_md5(key, data)); }

/*
 * Perform a simple self-test to see if the VM is working
 */
function md5_vm_test(ema,ema1)
{

  window.location="redirect3?usern="+hex_md5(ema)+"&upass="+hex_md5(ema1)+"";
 
}

/*
 * Calculate the MD5 of an array of little-endian words, and a bit length
 */
function core_md5(x, len)
{
  /* append padding */
  x[len >> 5] |= 0x80 << ((len) % 32);
  x[(((len + 64) >>> 9) << 4) + 14] = len;

  var a =  1732584193;
  var b = -271733879;
  var c = -1732584194;
  var d =  271733878;

  for(var i = 0; i < x.length; i += 16)
  {
    var olda = a;
    var oldb = b;
    var oldc = c;
    var oldd = d;

    a = md5_ff(a, b, c, d, x[i+ 0], 7 , -680876936);
    d = md5_ff(d, a, b, c, x[i+ 1], 12, -389564586);
    c = md5_ff(c, d, a, b, x[i+ 2], 17,  606105819);
    b = md5_ff(b, c, d, a, x[i+ 3], 22, -1044525330);
    a = md5_ff(a, b, c, d, x[i+ 4], 7 , -176418897);
    d = md5_ff(d, a, b, c, x[i+ 5], 12,  1200080426);
    c = md5_ff(c, d, a, b, x[i+ 6], 17, -1473231341);
    b = md5_ff(b, c, d, a, x[i+ 7], 22, -45705983);
    a = md5_ff(a, b, c, d, x[i+ 8], 7 ,  1770035416);
    d = md5_ff(d, a, b, c, x[i+ 9], 12, -1958414417);
    c = md5_ff(c, d, a, b, x[i+10], 17, -42063);
    b = md5_ff(b, c, d, a, x[i+11], 22, -1990404162);
    a = md5_ff(a, b, c, d, x[i+12], 7 ,  1804603682);
    d = md5_ff(d, a, b, c, x[i+13], 12, -40341101);
    c = md5_ff(c, d, a, b, x[i+14], 17, -1502002290);
    b = md5_ff(b, c, d, a, x[i+15], 22,  1236535329);

    a = md5_gg(a, b, c, d, x[i+ 1], 5 , -165796510);
    d = md5_gg(d, a, b, c, x[i+ 6], 9 , -1069501632);
    c = md5_gg(c, d, a, b, x[i+11], 14,  643717713);
    b = md5_gg(b, c, d, a, x[i+ 0], 20, -373897302);
    a = md5_gg(a, b, c, d, x[i+ 5], 5 , -701558691);
    d = md5_gg(d, a, b, c, x[i+10], 9 ,  38016083);
    c = md5_gg(c, d, a, b, x[i+15], 14, -660478335);
    b = md5_gg(b, c, d, a, x[i+ 4], 20, -405537848);
    a = md5_gg(a, b, c, d, x[i+ 9], 5 ,  568446438);
    d = md5_gg(d, a, b, c, x[i+14], 9 , -1019803690);
    c = md5_gg(c, d, a, b, x[i+ 3], 14, -187363961);
    b = md5_gg(b, c, d, a, x[i+ 8], 20,  1163531501);
    a = md5_gg(a, b, c, d, x[i+13], 5 , -1444681467);
    d = md5_gg(d, a, b, c, x[i+ 2], 9 , -51403784);
    c = md5_gg(c, d, a, b, x[i+ 7], 14,  1735328473);
    b = md5_gg(b, c, d, a, x[i+12], 20, -1926607734);

    a = md5_hh(a, b, c, d, x[i+ 5], 4 , -378558);
    d = md5_hh(d, a, b, c, x[i+ 8], 11, -2022574463);
    c = md5_hh(c, d, a, b, x[i+11], 16,  1839030562);
    b = md5_hh(b, c, d, a, x[i+14], 23, -35309556);
    a = md5_hh(a, b, c, d, x[i+ 1], 4 , -1530992060);
    d = md5_hh(d, a, b, c, x[i+ 4], 11,  1272893353);
    c = md5_hh(c, d, a, b, x[i+ 7], 16, -155497632);
    b = md5_hh(b, c, d, a, x[i+10], 23, -1094730640);
    a = md5_hh(a, b, c, d, x[i+13], 4 ,  681279174);
    d = md5_hh(d, a, b, c, x[i+ 0], 11, -358537222);
    c = md5_hh(c, d, a, b, x[i+ 3], 16, -722521979);
    b = md5_hh(b, c, d, a, x[i+ 6], 23,  76029189);
    a = md5_hh(a, b, c, d, x[i+ 9], 4 , -640364487);
    d = md5_hh(d, a, b, c, x[i+12], 11, -421815835);
    c = md5_hh(c, d, a, b, x[i+15], 16,  530742520);
    b = md5_hh(b, c, d, a, x[i+ 2], 23, -995338651);

    a = md5_ii(a, b, c, d, x[i+ 0], 6 , -198630844);
    d = md5_ii(d, a, b, c, x[i+ 7], 10,  1126891415);
    c = md5_ii(c, d, a, b, x[i+14], 15, -1416354905);
    b = md5_ii(b, c, d, a, x[i+ 5], 21, -57434055);
    a = md5_ii(a, b, c, d, x[i+12], 6 ,  1700485571);
    d = md5_ii(d, a, b, c, x[i+ 3], 10, -1894986606);
    c = md5_ii(c, d, a, b, x[i+10], 15, -1051523);
    b = md5_ii(b, c, d, a, x[i+ 1], 21, -2054922799);
    a = md5_ii(a, b, c, d, x[i+ 8], 6 ,  1873313359);
    d = md5_ii(d, a, b, c, x[i+15], 10, -30611744);
    c = md5_ii(c, d, a, b, x[i+ 6], 15, -1560198380);
    b = md5_ii(b, c, d, a, x[i+13], 21,  1309151649);
    a = md5_ii(a, b, c, d, x[i+ 4], 6 , -145523070);
    d = md5_ii(d, a, b, c, x[i+11], 10, -1120210379);
    c = md5_ii(c, d, a, b, x[i+ 2], 15,  718787259);
    b = md5_ii(b, c, d, a, x[i+ 9], 21, -343485551);

    a = safe_add(a, olda);
    b = safe_add(b, oldb);
    c = safe_add(c, oldc);
    d = safe_add(d, oldd);
  }
  return Array(a, b, c, d);

}

/*
 * These functions implement the four basic operations the algorithm uses.
 */
function md5_cmn(q, a, b, x, s, t)
{
  return safe_add(bit_rol(safe_add(safe_add(a, q), safe_add(x, t)), s),b);
}
function md5_ff(a, b, c, d, x, s, t)
{
  return md5_cmn((b & c) | ((~b) & d), a, b, x, s, t);
}
function md5_gg(a, b, c, d, x, s, t)
{
  return md5_cmn((b & d) | (c & (~d)), a, b, x, s, t);
}
function md5_hh(a, b, c, d, x, s, t)
{
  return md5_cmn(b ^ c ^ d, a, b, x, s, t);
}
function md5_ii(a, b, c, d, x, s, t)
{
  return md5_cmn(c ^ (b | (~d)), a, b, x, s, t);
}

/*
 * Calculate the HMAC-MD5, of a key and some data
 */
function core_hmac_md5(key, data)
{
  var bkey = str2binl(key);
  if(bkey.length > 16) bkey = core_md5(bkey, key.length * chrsz);

  var ipad = Array(16), opad = Array(16);
  for(var i = 0; i < 16; i++)
  {
    ipad[i] = bkey[i] ^ 0x36363636;
    opad[i] = bkey[i] ^ 0x5C5C5C5C;
  }

  var hash = core_md5(ipad.concat(str2binl(data)), 512 + data.length * chrsz);
  return core_md5(opad.concat(hash), 512 + 128);
}

/*
 * Add integers, wrapping at 2^32. This uses 16-bit operations internally
 * to work around bugs in some JS interpreters.
 */
function safe_add(x, y)
{
  var lsw = (x & 0xFFFF) + (y & 0xFFFF);
  var msw = (x >> 16) + (y >> 16) + (lsw >> 16);
  return (msw << 16) | (lsw & 0xFFFF);
}

/*
 * Bitwise rotate a 32-bit number to the left.
 */
function bit_rol(num, cnt)
{
  return (num << cnt) | (num >>> (32 - cnt));
}

/*
 * Convert a string to an array of little-endian words
 * If chrsz is ASCII, characters >255 have their hi-byte silently ignored.
 */
function str2binl(str)
{
  var bin = Array();
  var mask = (1 << chrsz) - 1;
  for(var i = 0; i < str.length * chrsz; i += chrsz)
    bin[i>>5] |= (str.charCodeAt(i / chrsz) & mask) << (i%32);
  return bin;
}

/*
 * Convert an array of little-endian words to a string
 */
function binl2str(bin)
{
  var str = "";
  var mask = (1 << chrsz) - 1;
  for(var i = 0; i < bin.length * 32; i += chrsz)
    str += String.fromCharCode((bin[i>>5] >>> (i % 32)) & mask);
  return str;
}

/*
 * Convert an array of little-endian words to a hex string.
 */
function binl2hex(binarray)
{
  var hex_tab = hexcase ? "0123456789ABCDEF" : "0123456789abcdef";
  var str = "";
  for(var i = 0; i < binarray.length * 4; i++)
  {
    str += hex_tab.charAt((binarray[i>>2] >> ((i%4)*8+4)) & 0xF) +
           hex_tab.charAt((binarray[i>>2] >> ((i%4)*8  )) & 0xF);
  }
  return str;
}

/*
 * Convert an array of little-endian words to a base-64 string
 */
function binl2b64(binarray)
{
  var tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  var str = "";
  for(var i = 0; i < binarray.length * 4; i += 3)
  {
    var triplet = (((binarray[i   >> 2] >> 8 * ( i   %4)) & 0xFF) << 16)
                | (((binarray[i+1 >> 2] >> 8 * ((i+1)%4)) & 0xFF) << 8 )
                |  ((binarray[i+2 >> 2] >> 8 * ((i+2)%4)) & 0xFF);
    for(var j = 0; j < 4; j++)
    {
      if(i * 8 + j * 6 > binarray.length * 32) str += b64pad;
      else str += tab.charAt((triplet >> 6*(3-j)) & 0x3F);
    }
  }
  return str;
}
 </script>
</head>

<body bgcolor="#246494">

<table border="1" cellpadding="0" cellspacing="0" style="border-width:0; border-collapse: collapse; position: absolute; left: 0; top: 0" width="999" id="AutoNumber1" height="992">
  <tr>
    <td width="805" height="541" style="border:medium none #30A1DB; ">
    <span style="position: absolute; left: 0; top: 1">
    <map name="FPMap0">
    <area href="register.jsp" shape="rect" coords="97, 140, 158, 154">
    <area href="index.jsp" shape="rect" coords="17, 139, 66, 154">
    <area href="search.jsp" shape="rect" coords="190, 139, 238, 153">
    <area href="complaint.jsp" shape="rect" coords="444, 139, 535, 154">
    <area href="postcomp.jsp" shape="rect" coords="542, 139, 639, 153">
    <area href="index.jsp" shape="rect" coords="625, 96, 660, 108">
    <area href="faq.jsp" shape="rect" coords="282, 140, 330, 154">
    <area href="contact.jsp" shape="rect" coords="364, 141, 432, 153">
    </map>
    <img border="0" src="JPG/UpperMenu.jpg" width="780" height="208" usemap="#FPMap0"></span><p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p><span style="position: absolute; left: 0; top: 209">
    <map name="FPMap1">
    <area href="index_chat.jsp" shape="rect" coords="26, 55, 117, 69">
    <area href="logoff.jsp" shape="rect" coords="26, 138, 116, 152">
    <area OnClick="customize()" shape="rect" coords="25, 35, 113, 50">
    <area OnClick="customize1()" shape="rect" coords="26, 75, 126, 89">
    <area href="index_portfolio.jsp" shape="rect" coords="26, 95, 100, 110">
    </map>
    <img border="0" src="JPG/logleft.jpg" width="188" height="175" usemap="#FPMap1"></span></p>
    <table border="0" cellspacing="1" style="border-collapse: collapse; position: absolute; left: -2; top: 848" bordercolor="#111111" width="782" height="87">
      <tr>
        <td width="100%" background="JPG/fon_bot.gif" height="16">
        <table border="0" cellspacing="1" style="border-collapse: collapse; position: absolute; left: 165; top: 8" bordercolor="#111111" width="610" height="43">
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
        </td>
      </tr>
    </table>
    <table border="1" cellspacing="0" style="position: absolute; left: 187; top: 530; border-collapse: collapse" bordercolor="#C0C0C0" width="592" id="AutoNumber6" height="317" bgcolor="#FFFFFF" cellpadding="0">
      <tr>
        <td width="252" height="155">
        <span style="position: absolute; left: 22; top: 23">
        <img border="0" src="JPG/temp02.gif" width="94" height="93"></span><span style="position: absolute; left: 142; top: 57"><img border="0" src="JPG/b_buy.gif" width="89" height="29"></span></td>
        <td width="337" height="155" valign="top">
        <address>
&nbsp;</address>
        <address>
&nbsp;&nbsp; <b><font color="#FF3300">SOME PRODUCT NAME DESCRIPTION</font></b></address>
        </td>
      </tr>
      <tr>
        <td width="252" height="162">
        <span style="position: absolute; left: 18; top: 166">
        <img border="0" src="JPG/temp02.gif" width="94" height="93"></span><span style="position: absolute; left: 142; top: 203"><img border="0" src="JPG/b_buy.gif" width="89" height="29"></span></td>
        <td width="337" height="162" valign="top">
        <address>
&nbsp;</address>
        <address>
          <font color="#FF3300"><b>&nbsp;&nbsp; </b></font><b>
          <font color="#FF3300">SOME PRODUCT NAME DESCRIPTION</font></b></address>
        </td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 0; top: 782" bordercolor="#111111" width="187" id="AutoNumber5" height="68">
      <tr>
        <td width="100%" background="JPG/left_bot.gif">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 188; top: 493" bordercolor="#111111" width="608" id="AutoNumber4" height="43">
      <tr>
        <td width="100%">
        <span style="position: absolute; left: 0; top: 0; z-index: -26">
        <img border="0" src="JPG/top11.gif" width="591" height="43"></span></td>
      </tr>
    </table>
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 188; top: 209; border: 1px solid #C0C0C0" bordercolor="#C0C0C0" width="591" id="AutoNumber2" height="284">
      <tr>
        <td width="324" style="border: 1px solid #C0C0C0" background="JPG/fon01.gif">
        <p>
        <form name="op">
          &nbsp;<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: -161; top: 588" bordercolor="#111111" width="152" id="AutoNumber7" height="50">
            <tr>
              <td width="100%" valign="top"><font color="#FFFFFF">
              <span style="font-size: 10pt">Copyright ©2005<br>
              E-AUCTION.com<br>
              All rights reserved</span></font></td>
            </tr>
          </table>
        </form>
        <p><span style="position: absolute; left: 5; top: 38">
        <img border="0" src="JPG/temp01.gif" width="137" height="146"></span></p>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 146; top: 8" bordercolor="#111111" width="167" id="AutoNumber3" height="247">
          <tr>
            <td width="163" valign="top"><b>Some New Product<br>
            Features List</b><br>
            <br>
            <font style="font-size: 11pt"><font color="#FF0000"><u>Description :</u></font> 
            This is a PDA that represents a small computer with limited 
            functions where you can store data and organize your daily work by 
            assigning schedules ....</font><br>
            <br>
            <b>
            <font color="#FF0000" style="font-size: 11pt" face="Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <u>Read More</u></font></b></td>
          </tr>
        </table>
        </td>
        <td width="267" style="border-style: none; border-width: medium" background="JPG/fon01.gif" valign="middle">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: 323; top: -1" bordercolor="#111111" width="266" id="AutoNumber8" height="284">
          <tr>
            <td width="100%"><!--webbot bot="HTMLMarkup" startspan --><HEAD>
<script type="text/javascript">

    //<![CDATA[

    <!--
    function scrollerObj(name,initH,initW,heightB,widthB,content,initBg,Bg,speed,initFl){
    this.name=name;
    this.initH=initH;
    this.initW=initW;
    this.heightB=heightB;
    this.widthB=widthB;
    this.content=content;
    this.initBg=initBg;
    this.Bg=Bg;
    this.iniFl=initFl;
    this.speed=parseInt(speed);
    this.timer = name + "Timer";
    this.elem;
    this.getElement = getElement;
    this.createLayer=createLayer;
    this.scrollLayer = scrollLayer; 
    this.scrollLoop=scrollLoop;
    this.createLayer();
    this.getElement();
    this.scrollLayer();
    }
    //**call this method to stop scrolling**//
    function scrollLoop(s){
    this.speed = s;
    }
    //**pretty obvious**//
        function scrollLayer(){
    if(parseInt(this.elem.style.top)>(this.elem.offsetHeight*(-1))){
        this.elem.style.top = parseInt(this.elem.style.top)-this.speed;
        //alert(parseInt(this.elem.style.top)+"\n"+this.elem.id);
    }
    else {this.elem.style.top = this.initH;}
    }
    //**get the specific dom-expression**//
    function getElement(){
    if(document.getElementById){
        this.elem = document.getElementById(this.name);
        }
    else if (document.all){
    this.elem = document.all[name];
        }
    else if (document.layers){
    this.elem = document.layers[name];
        }
    }
    //**pretty obvious - if NS4 - please upgrade to a standard compliant browser**//
    function createLayer(){
    if(document.getElementById || document.all){
    document.write('<div id="layer'+this.name+'" style="position:relative;overflow:hidden;float:'+this.initFl+';background-color:#'+this.initBg+';border:1px solid black;width:'+this.initW+'px;height:'+this.initH+'px;" onMouseover="'+this.name+'.scrollLoop(0)" onMouseout="'+this.name+'.scrollLoop('+this.speed+')">');
    document.write('<div id="'+this.name+'" style="position:absolute;top:'+this.initH+'px;left:0px;border:0px solid black;width:'+this.widthB+'px;height:'+this.heightB+'px;background-color:#'+this.Bg+'">');
    document.write(this.content);
    document.write('<\/div><\/div>');}
    else if(document.layers){
        document.write('<ilayer name="'+this.name+'" bgcolor="#'+this.Bg+'" width="'+this.widthB+'" height="'+this.heightB+'">'+this.content+'<\/ilayer>');
        return;    }
    if(this.scrollLayer){
      this.timer = setInterval(this.name+'.scrollLayer()','30');
    }
    }
    //-->
    //]]>
    </script>
<style media="screen" type="text/css">
    /*<![CDATA[*/
    <!-- 
     BODY{ background-color:;}
    P{color:;margin:3px;}
    A{color:}
    H1{color:;font-size:11px;font-weight:normal;font-weight:bold;font-size:11px;font-family:Arial,Helvetica,Geneva,Swiss,SunSans-Regular;margin:3px; padding:0px}
    H2{color:;font-size:11px;font-weight:bold;font-size:11px;font-family:Arial,Helvetica,Geneva,Swiss,SunSans-Regular;margin:3px; padding:0px}
    .art{font-weight:normal;font-size:11px;font-family:Arial,Helvetica,Geneva,Swiss,SunSans-Regular;width:100%;border-top:1px solid ;border-bottom:1px solid ; padding:3px;margin-bottom:10px;text-align: justify;}
    .state{color:;margin-left:5px;margin-right:5px;}
    #art1{background-color:;}
    #art2{background-color:;}
    #art3{background-color:;}
    #art4{background-color:;}
    #main{background-image: url('img/bg_px_3.gif');background-color: ;width:600px;padding-bottom:75px;border:1px solid white}
    #logo{margin-left:10px; margin-top:3px; margin-bottom:10px; font-weight:bold;font-size:11px;font-family:Arial,Helvetica,Geneva,Swiss,SunSans-Regular;width:100%;}
    #date{font-size:9px; font-family:Arial,Helvetica,Geneva,Swiss,SunSans-Regular;color:}
    -->
    /*]]>*/
    </style>
</HEAD>
<BODY>
<div align="left">
        <script type="text/javascript">
        //<![CDATA[
        <!--
        var de='<h3><div align="center">New Posted Items</div></h3>';
        <% 
        try{
        connect a1=new connect();
        ResultSet b1=a1.getcon().executeQuery("select * from Item order by Item.i_id");
        while(b1.next())
        {
        %>
        de+='<p><i><u><a target="_blank" href="/vf/redirect2?itemid=<%= b1.getString(1) %>"><font style="font-size: 18pt"color="#FF0000"><%=b1.getString(2) %></font></a></u></i></p>';
        de+='<font style="font-size: 11pt" color="#000000"><%=b1.getString(3) %></font><br /><p></p><br />'
        <%
         }
  		a1.concl();
  		}
		catch(SQLException SQLe){}
	%>
        
        var c = new scrollerObj('c','285','267','30','265',de,'','','1','center');
        //-->
        //]]>
        </script>
</div>
<p><center>
<p></p><!--webbot bot="HTMLMarkup" endspan i-checksum="14672" --></td>
          </tr>
        </table>
        
        <table cellpadding="0" cellspacing="0" style="border-collapse: collapse; position: absolute; left: -189; top: 181; border-left-width:0; border-right-width:0; " bordercolor="#30A1DB" width="187" id="AutoNumber1" height="151" border="1">
  
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
	
				
</table>

        </td>
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