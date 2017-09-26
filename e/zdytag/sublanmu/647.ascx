<% @ Control  Language="C#" Inherits="PageAdmin.patag"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<dl class="zlm_gywm_box">
  <dd class="gywm_left">
    <span class="pic"><img src="/e/css/images/ykcq.png"/></span>
    <div class="gywm_con">
    <span class="gywm_title">创立背景</span>​
教育培训学校是XX地区最权威的 教育培训网络服务平台之一。网站创办于2005年，以XX地区丰富的教育培训资源背景为强大的依托，以“一切为了求知者”为经营理念，致力于为XX地区广 大的求知者提供全面、权威、有效、便捷的服务系统，力图为求知者排除求知路上的点滴困难，明确求知方向，让目标用户面对培训不再盲目，为求知者的美好未来 保驾护航，成为求知者心目中的导航明灯。<br/>于此同时，教育培训网还为各类教育培训机构提供了招生营销、市场策划、品牌宣传等一系列的专业化服务，在求知者与教育培训机构之间架起一座便捷之桥。</div>
  </dd>
  <dd class="gywm_right"><img src="/e/upload/s1/fck/image/2016/10/07/1648277948.jpg" alt="" /></dd>
</dl>

<ul class="zlm_gywm2">
  <li class="gywm2_left">
    <span class="pic"><img src="/e/css/images/bgzv.png"/></span>
    <span class="title">愿景</span>
    <div class="con">成为教育咨询的行业最高标准，帮助每一位心怀远志的莘莘学子，筑梦，自我实现。</div>
  </li>
  <li>
    <span class="pic"><img src="/e/css/images/bgzv1.png"/></span>
    <span class="title">使命</span>
    <div class="con">book school致力发觉有能力和潜力的未来bookschool人，并在他们逐梦的各个阶段给与针对性强且有效的支持。</div>
  </li>
  <li>
    <span class="pic"><img src="/e/css/images/bgzv2.png"/></span>
    <span class="title">承诺</span>
    <div class="con">book school一学员的利益为志高，提供且仅供最高标准，最有效，我们所有的一切资源。</div>
  </li>
  <li class="gywm2_right">
    <span class="pic"><img src="/e/css/images/bgzv3.png"/></span>
    <span class="title">品格</span>
    <div class="con">所有学术导师，语言导师以及顾问，均为TAB等一线互联网公司的优秀精英。集专业知识与优秀素养。</div>
  </li>
</ul>




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