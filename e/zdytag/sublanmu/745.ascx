<% @ Control  Language="C#" Inherits="PageAdmin.patag"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<div style="clear:both;overflow:hidden;font-family:微软雅黑;font-size:14px;color:rgb(102,102,102);line-height:200%;padding:0px 15px;">
某某国际教育机构、教学团队是全省乃至全国最权威、最专业、最高学历的师资队伍，他们由近二十位拥有众多光环的年轻人组成。他们之中：80%以上来自北大清华；90%以上具有数学竞
赛经验并曾取得优异成绩；100%具有多年英语的教研教学经验。这些老师从小优秀，深知学习的快乐和作用，熟知学习的方法与技巧，和他们在一起的孩子不仅获得最专业的数学知识，还
将从这些老师的品质中获得励志与品格的教育。
</div>
<dl class="zlm_mstd_box">
  <dd>
    <span class="pic"><img src=""/></span>
    <div class="con">
      <span class="title">LISA</span>
      <div>英语老师，加拿大名校毕业，从事青少年教育3年</div>
      <div>主讲职称英语基础语法，注重孩子的兴趣和引导孩子实用结合；建立英语思维，摒弃翻译式英语学习的习惯能够围绕日常生活主题用英语进行自主交流和日常沟通被评为最受欢迎的女神教师...</div>
      <div>主讲幼儿基础班，少儿培训班，青少年英语语法班</div>
    </div>
  </dd>
  <dd>
    <span class="pic"><img src=""/></span>
    <div class="con">
      <span class="title">JACKA</span>
      <div>兴趣班老师，清华大学毕业</div>
      <div>主讲孩子兴趣类课程，培养并注重孩子的兴趣和引导孩子实用结合；建立兴趣思维，摒弃传统式教育学习的习惯尽量围绕日常生活主题，培养孩子的动力能力，思考能力...</div>
      <div>主讲幼儿兴趣班，少儿兴趣培训班，青少年兴趣班</div>
    </div>
  </dd>
  <dd>
    <span class="pic"><img src=""/></span>
    <div class="con">
      <span class="title">ANMEEI</span>
      <div>绘画老师，北大名校毕业，国际教育教授</div>
      <div>主要负责学生的绘画教学工作，承担课程辅导和答疑等工作；负责跟家长之间的沟通；负责每年的考级教学任务.了解并懂得幼儿孩子的心理变化过程，通过绘画会改变孩子的耐心。</div>
      <div>主讲幼儿基础班，少儿素描培训班，青少年色彩搭配班</div>
    </div>
  </dd>
  <dd>
    <span class="pic"><img src=""/></span>
    <div class="con">
      <span class="title">KIMI</span>
      <div>数学老师，上海复旦大学数学系主任</div>
      <div>主要开发孩子的思维空间，学习方法，培养并注重孩子的兴趣和引导孩子实用结合；在孩子教育过程中,如何对孩子进行数学思维训练?著名科学家爱因斯坦说过:“兴趣是学生最好的老师。”兴趣是幼儿学习的动力.</div>
      <div>主讲幼儿兴趣班，少儿兴趣培训班，青少年兴趣班</div>
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