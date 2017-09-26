<% @ Control Language="C#" Inherits="PageAdmin.module_zdymodel"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%=Module_StartHtml%><%if(Zdy_Tag==0 && CleanContainer<2){%>
<div id="module_<%=Module_Id%>" <%=Module_box_style%>class="module_box<%=Layout%><%=Module_ClassName%>">
 <div <%=Module_box_inner%>class="module_box_inner">
   <%if(CleanContainer==0){%><div <%=Module_titlebox_style%>class="module_title"><span <%=Module_title_style%>class="module_sign"><%=Module_Title%></span><span <%=Module_more_style%>class="module_more"><%=More_Url%></span></div>
   <%}if(Module_Header!=""){%><%=Module_Header%><%}%><div id="module_content_<%=Module_Id%>" <%=Module_content_style%>class="module_content">
<%}%><%conn.Open();%><ul class="mkmx_xyzp_box">
<%
string url="";
DataTable dt=Get_Data();
DataRow dr;
for(int i=0;i<dt.Rows.Count;i++)
 {
dr=dt.Rows[i];
url=Detail_Url(dr);
if(i%4==0){
%>
<li class="xyzp_left xyzp_li" title="<%=Server.HtmlEncode(dr["title"].ToString())%>">
  <a href="<%=url%>" target="<%=Target%>">
    <span class="pic"><img src="<%=dr["titlepic"]%>" border="0"></span>
    <span class="title"><%=dr["title"].ToString()%></span>
  </a>
</li>
<%}else if(i%4==3){%>
<li class="xyzp_right xyzp_li" title="<%=Server.HtmlEncode(dr["title"].ToString())%>">
  <a href="<%=url%>" target="<%=Target%>">
    <span class="pic"><img src="<%=dr["titlepic"]%>" border="0"></span>
    <span class="title"><%=dr["title"].ToString()%></span>
  </a>
</li>
<%}else{%>
<li class="xyzp_li" title="<%=Server.HtmlEncode(dr["title"].ToString())%>">
  <a href="<%=url%>" target="<%=Target%>">
    <span class="pic"><img src="<%=dr["titlepic"]%>" border="0"></span>
    <span class="title"><%=dr["title"].ToString()%></span>
  </a>
</li>
<%
}
 }
%>
</ul><%conn.Close();%>
   <%if(Zdy_Tag==0 && CleanContainer<2){%></div>
   <div class="module_footer"><span class="l"></span><span class="r"></span></div>
 </div>
</div><%}%><%=Module_EndHtml%>