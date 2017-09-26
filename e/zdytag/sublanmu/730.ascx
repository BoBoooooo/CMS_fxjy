<% @ Control  Language="C#" Inherits="PageAdmin.patag"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<dl class="sy_szll_box">
  <dd class="szll_dd left">
    <span class="pic"><img src="/e/upload/s1/fck/image/2016/10/07/1020020438.png"/></span>
    <div class="szll_jj">
      <span class="title"><strong>潘老师</strong> <i>资深设计师讲师</i></span>
      <div class="con">2007年从事教学以及教学管理工作,拥有丰富的项目实战经验、授课经验以及学员管理、教学管理经验，经历过ACCP4.0到7.0的多个版本。​​</div>
    </div>
  </dd>
  <dd class="szll_dd right">
    <span class="pic"><img src="/e/upload/s1/fck/image/2016/10/07/1020022768.png"/></span>
    <div class="szll_jj">
      <span class="title"><strong>欧阳老师</strong> <i>资深网页设计师</i></span>
      <div class="con">在ERP、dmis cmis等领域有多年的开发经验;曾负责社保、电力、电信、人事、劳动等行业的系统集成及项目设计与编写工作。</div>
    </div>
  </dd>
  <dd class="szll_dd left">
    <span class="pic"><img src="/e/upload/s1/fck/image/2016/10/07/1020023788.png"/></span>
    <div class="szll_jj">
      <span class="title"><strong>黄老师</strong> <i>高级讲师</i></span>
      <div class="con">认证高级讲师，曾担任重庆中商集团数据库工程师，负责商务系统的开发。教学严格，认真负责，学员就业率高达99%。</div>
    </div>
  </dd>
  <dd class="szll_dd right">
    <span class="pic"><img src="/e/upload/s1/fck/image/2016/10/07/1020024758.png"/></span>
    <div class="szll_jj">
      <span class="title"><strong>曾老师</strong> <i>资深插画师</i></span>
      <div class="con">拥有丰富的项目实战经验、授课经验，曾在太原思诺博、东莞开普互联从事Web开发工作，担任J2EE研发中心高级软件工程师。</div>
    </div>
  </dd>
  <dd class="szll_dd left">
    <span class="pic"><img src="/e/upload/s1/fck/image/2016/10/07/1757174470.png"/></span>
    <div class="szll_jj">
      <span class="title"><strong>张老师</strong> <i>高级讲师</i></span>
      <div class="con">认证高级讲师，曾担任重庆中商集团数据库工程师，负责商务系统的开发。教学严格，认真负责，学员就业率高达99%。</div>
    </div>
  </dd>
  <dd class="szll_dd right">
    <span class="pic"><img src="/e/upload/s1/fck/image/2016/10/07/1757176610.png"/></span>
    <div class="szll_jj">
      <span class="title"><strong>胡老师</strong> <i>资深插画师</i></span>
      <div class="con">拥有丰富的项目实战经验、授课经验，曾在太原思诺博、东莞开普互联从事Web开发工作，担任J2EE研发中心高级软件工程师。</div>
    </div>
  </dd>
</dl>








<%End();
if(PageCount>1)
{
string PageHtml="<div id=\"sublanmu_page\" class=\"sublanmu_page\">";
if(CurrentPage==1)
{
if(APage_LinkText[0]!=""){PageHtml+="<span class=\"firstpage\">"+APage_LinkText[0]+"</span>";} //首页
}
else if(CurrentPage>1)
{
 if(APage_LinkText[0]!=""){PageHtml+="<a href=\""+GoPage(1)+"\" class=\"firstpage\">"+APage_LinkText[0]+"</a>";} //首页
 if(APage_LinkText[1]!=""){PageHtml+=" <a href=\""+GoPage(CurrentPage-1)+"\" class=\"prevpage\">"+APage_LinkText[1]+"</a>";} //上一页
}
 int p=8; //表示开始时显示的页码总数
 int M=4; //超过p页后左右两边显示页码数
 int LastPage=1;
 if(CurrentPage<p)
  {
    LastPage=p;
    if(LastPage>PageCount)
     {
       LastPage=PageCount;
     }
    for(int i=1;i<=LastPage;i++)
    {
     if(CurrentPage==i)
      {
        PageHtml+=" <span class=\"c\">"+i.ToString()+"</span>";
      }
    else
      {
       PageHtml+=" <a href=\""+GoPage(i)+"\">"+i.ToString()+"</a>";
      }
    }
  }
 else
  {
    //PageHtml+=" <a href=\""+GoPage(CurrentPage-1)+"\">1...</a>";
    LastPage=CurrentPage+M;
    if(LastPage>PageCount)
     {
       LastPage=PageCount;
     }
    for(int i=(CurrentPage-M);i<=LastPage;i++)
    {
     if(CurrentPage==i)
      {
        PageHtml+=" <span class=\"c\">"+i.ToString()+"</span>";
      }
    else
      {
       PageHtml+=" <a href=\""+GoPage(i)+"\">"+i.ToString()+"</a>";
      }
    }

  }

if(CurrentPage<PageCount)
{
  if(LastPage<PageCount)
   {
     PageHtml+=" <a href=\""+GoPage(LastPage+1)+"\">...</a>";
   }
  if(APage_LinkText[2]!=""){PageHtml+=" <a href=\""+GoPage(CurrentPage+1)+"\" class=\"nextpage\">"+APage_LinkText[2]+"</a>";}  //下一页
  if(APage_LinkText[3]!=""){PageHtml+=" <a href=\""+GoPage(PageCount)+"\" class=\"lastpage\">"+APage_LinkText[3]+"</a>";}     //尾页
}
else if(CurrentPage==PageCount)
{
if(APage_LinkText[3]!=""){PageHtml+=" <span class=\"lastpage\">"+APage_LinkText[3]+"</span>";}     //尾页
}
if(Page_LinkInfo!=""){PageHtml+=" <span class=\"pageinfo\">"+String.Format(Page_LinkInfo,CurrentPage,PageCount,RecordCount)+"</span>";} //记录页次
PageHtml+="</div>";
Response.Write(PageHtml);
}%>