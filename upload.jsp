<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<%@ page language= "java" import = "com.senior.* , java.sql.* , javax.swing.* , java.util.*"  session= "true" %>

<meta http-equiv="Content-Language" content="en-gb">
 <link rel="File-List" href="upload_files/filelist.xml">

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
function der(ed){alert(ed);}
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
    </map>
    <img border="0" src="JPG/UpperMenu.jpg" width="780" height="208" usemap="#FPMap0"></span><form>
      </form>
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
  xscale="f" string="E-AUCTION Upload Item"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=520 height=73
src="upload_files/image001.gif" alt="E-AUCTION Search Engine" v:shapes="_x0000_s1028"><![endif]></td>
            </tr>
          </table>
          <p>&nbsp;</td>
        </tr>
        <tr>
          <td width="100%" height="318" bgcolor="#FFFFFF">&nbsp;<p>&nbsp;</p>
          </td>
        </tr>
      </table>
     
    </form>

    <p><span style="position: absolute; left: 0; top: 209; z-index:-1">
    <map name="FPMap1">
    <area onclick="return md5_vm_test(op.login.value,op.password.value)" shape="rect" coords="147, 100, 160, 115">
    </map>
    <img border="0" src="JPG/LeftMenu.jpg" width="188" height="175" usemap="#FPMap1"></span></p>
    
    
      
    
    <form name="op" style="position: absolute; left: 359; top: 470">
      <p>
      <input type="text" name="login" size="15" style="position: absolute; left: -288; top: -215"><input type="password" name="password" size="15" style="position: absolute; left: -289; top: -193"></p>
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
    </font><b><a href="<%= b1.getString(3) %>" style= "text-decoration: none" >
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