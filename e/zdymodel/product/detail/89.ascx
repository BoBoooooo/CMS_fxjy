<% @ Control Language="C#" Inherits="PageAdmin.detail_zdymodel"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%=Zdy_Location%>
<div class="sublanmu_box sublanmu_box_<%=Sublanmu_Id%>" id="sublanmu_box">
<div class="sublanmu_content" id="sublanmu_content">
<%conn.Open();%><script type="text/javascript" src="/e/js/zoom.js"></script>
<link href="/e/css/zoom.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="/e/js/product.js"></script>
<% 
int i,Id,P_SortId;
string Price,Point;
DataTable dt,dt1;
dt=Get_Data();
string Related_Ids="";
DataRow dr,dr1; 
if(dt.Rows.Count>0)
 {
  dr=dt.Rows[0]; 
  Id=int.Parse(dr["id"].ToString());
  P_SortId=int.Parse(dr["sort_id"].ToString());
  Price=dr["price"].ToString();
  Point=dr["point"].ToString();
%>
<div class="product_pic_infor">
<ul>
<li class="left">
<div class="view" id="view" style="position:relative">
<%
dt1=Get_File("product","pa_images",Id);
for(i=0;i<dt1.Rows.Count;i++)
 {
  dr1=dt1.Rows[i];
%><img class="zoom" src="<%=dr1["thumbnail"]%>" big="<%=dr1["url"]%>" border="0" id="picture" name="picture" style="display:<%=i==0?"":"none"%>">
<%}%></div>
<div class="clear"></div>
<!--缩略图区域--->
<%if(int.Parse(dr["pa_images"].ToString())>1){%>
<a class="leftbar" onclick="roll('left')"></a>
<div class="thumbnails" id="thumbnails"><ul>
<%
dt1=Get_File("product","pa_images",Id);
for(i=0;i<dt1.Rows.Count;i++)
 {
  dr1=dt1.Rows[i];
%>
<li onclick="LoadImg(<%=i%>)"><img src="<%=dr1["thumbnail"]%>" id="thumbnail" name="thumbnail"></li>
<%}%></ul></div>
<a class="rightbar" onclick="roll('right')"></a>
<%}%>
<!--缩略图区域--->
</li>
<li class="right">
<span class="title"><%=dr["title"]%></span>
<%if(Price!="" && Price!="0"){%><span style="display:block;font-size:16px;line-height:40px;">价格：￥<%=Price%>.00 &nbsp;<a href="javascript:ordercart('<%=Site_Id%>','product',<%=Id%>)" style="color:#ff0000">[在线订购]</a></span><%}%>
<%if(Point!="" && Point!="0"){%>所需积分：<%=Point%>点 &nbsp;<a href="javascript:exchange('<%=Site_Id%>','product',<%=Id%>)" style="color:#ff0000">[积分兑换]</a><br><%}%>
<%=Ubb(dr["pa_introduction"].ToString())%>
<div style="margin:10px 0px;" class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"24"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
<!--
<div class="lj-box"><input type="hidden" id="currentimage"><a class="pro-ckdt" href=javascript:ShowImage()>查看大图</a><a class="pro-xsyd" target="_blank" href="/index.aspx?lanmuid=67&sublanmuid=696&prod=<%=Server.UrlEncode(dr["title"].ToString())%>">线上预定</a></div>
-->
</li>
<li class="clear"></li>
</ul>
</div>
<div class="prodinfotab">
<div class="tabheaderes">详情</div>
<div class="tabcontentes"><%=dr["content"]%></div>
</div>
<script type="text/javascript">
tabs("tab_t","tab_c","onclick")
window.onload=function(){zoom({width:300,height:300});}
</script>
<%
}
%><%conn.Close();%>
<script type="text/javascript">Get_Info("<%=Thetable%>","<%=Detail_Id%>")</script>
<asp:PlaceHolder id="P_Comment" runat="server"/></div></div>