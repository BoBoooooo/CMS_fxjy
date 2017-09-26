<% @ Control  Language="C#" Inherits="PageAdmin.paform"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<tr id='tr_feedback_title'><td class='tdhead'>家长姓名<span style='color:#ff0000'>*</span></td><td><input type=text name='title' id='title' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("title"));}%>" style='width:300px'   maxlength="200"><span id="title_tip"></span></td></tr>
<tr id='tr_feedback_pa_truename'><td class='tdhead'>联系电话<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_truename' id='pa_truename' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_truename"));}%>" style='width:200px'   maxlength="200"><span id="pa_truename_tip"></span></td></tr>
<tr id='tr_feedback_pa_bjxz'><td class='tdhead'>班级选择<span style='color:#ff0000'>*</span></td><td> <input type=radio value="1"  name='pa_bjxz' id='pa_bjxz' <%if(post=="add"){Response.Write(""=="1"?"checked":"");}else{Response.Write(r("pa_bjxz")=="1"?"checked":"");}%>>英语班  <input type=radio value="2"  name='pa_bjxz' id='pa_bjxz' <%if(post=="add"){Response.Write(""=="2"?"checked":"");}else{Response.Write(r("pa_bjxz")=="2"?"checked":"");}%>>数学班  <input type=radio value="3"  name='pa_bjxz' id='pa_bjxz' <%if(post=="add"){Response.Write(""=="3"?"checked":"");}else{Response.Write(r("pa_bjxz")=="3"?"checked":"");}%>>绘画班  <input type=radio value="4"  name='pa_bjxz' id='pa_bjxz' <%if(post=="add"){Response.Write(""=="4"?"checked":"");}else{Response.Write(r("pa_bjxz")=="4"?"checked":"");}%>>舞蹈班  <input type=radio value="5"  name='pa_bjxz' id='pa_bjxz' <%if(post=="add"){Response.Write(""=="5"?"checked":"");}else{Response.Write(r("pa_bjxz")=="5"?"checked":"");}%>>兴趣班<span id="pa_bjxz_tip"></span></td></tr><tr id='tr_feedback_pa_hznl'><td class='tdhead'>孩子年龄<span style='color:#ff0000'>*</span></td><td> <input type=checkbox  value="1" name='pa_hznl' id='pa_hznl'>3-5岁  <input type=checkbox  value="2" name='pa_hznl' id='pa_hznl'>5-8岁  <input type=checkbox  value="3" name='pa_hznl' id='pa_hznl'>8-12岁<span id="pa_hznl_tip"></span><%if(post=="add"){%><script type="text/javascript">Set_Checked("","pa_hznl")</script><%}else{%><script type="text/javascript">Set_Checked("<%=r("pa_hznl")%>","pa_hznl")</script><%}%></td></tr><tr id='tr_feedback_thedate'><td class='tdhead'>发布日期<span style='color:#ff0000'>*</span></td><td><input type=text name='thedate' id='thedate' value="<%if(post=="add"){Response.Write(""==""?DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"):"");}else{Response.Write(DateTime.Parse(r("thedate")).ToString("yyyy-MM-dd HH:mm:ss"));}%>"  maxlength="200"><a href="javascript:open_calendar('thedate',1)"><img src=/e/images/icon/date.gif border=0 height=20 hspace=2 align=absbottom></a><span id="thedate_tip"></span></td></tr>
<tr id='tr_feedback_content'><td class='tdhead' id='tr_feedback_content'>其它备注<span style='color:#ff0000'>*</span></td><td><textarea name='content' id='content'  ><%if(post=="add"){Response.Write("");}else{Response.Write(r("content"));}%></textarea><span id="content_tip"></span></td></tr>

<input type='hidden' name='mustname' value='家长姓名,联系电话,班级选择,孩子年龄,发布日期,其它备注,'><input type='hidden' name='mustfield' value='title,pa_truename,pa_bjxz,pa_hznl,thedate,content,'><input type='hidden' name='musttype' value='text,text,radio,checkbox,text,textarea,'>
<script  type='text/javascript'>
function feedback_zdycheck(){
return true;
}
</script>
<%End();%>






