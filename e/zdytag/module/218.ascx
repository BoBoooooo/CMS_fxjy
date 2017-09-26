<% @ Control  Language="C#" Inherits="PageAdmin.patag"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<dl class="sy_xwdt_box">
  <dd class="xwdt_left"><% @ Register TagPrefix="ascx" TagName="M_0" src="/e/zdymodel/article/module/151.ascx"%><ascx:M_0 runat="server" TagSiteId=1 SiteId=1 ZdyTag=1 ModuleId="218_0" TagTable="article" TagSortId=645 SqlOrder="order by " SqlCondition="and istop=1" ShowNum=1 TagZtId=0 TitleNum=50 TitlePicWidth=150 TitlePicHeight=150 TheTarget="_self"/></dd><!--图文混排 选择置顶-->
  <dd class="xwdt_right"><% @ Register TagPrefix="ascx" TagName="M_1" src="/e/zdymodel/article/module/43.ascx"%><ascx:M_1 runat="server" TagSiteId=1 SiteId=1 ZdyTag=1 ModuleId="218_1" TagTable="article" TagSortId=645 SqlOrder="order by " SqlCondition="and istop=0" ShowNum=8 TagZtId=0 TitleNum=50 TitlePicWidth=150 TitlePicHeight=150 TheTarget="_self"/></dd><!--文章列表 排除置顶-->
</dl>
<%End();%>