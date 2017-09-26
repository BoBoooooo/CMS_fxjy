<% @ Control  Language="C#" Inherits="PageAdmin.patag"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<div class="zlm_gsdz_box">
  <div class="gsdz_left"><h2 style="text-align:center;margin-left:220px">申请加盟</h2><img src="/e/css/pic/50j3.png"/></div>
  <div class="gsdz_right">
<script type="text/javascript" src="/e/js/zdyform.js"></script>
<form name="feedback" method="post" Enctype="multipart/form-data" action="/e/aspx/post.aspx">



<ul width=95% class="yuyuebiao">

	<li>
		<span>　　姓名</span><span style="color:#ff0000">*</span><input class="wbk" type=text name="title" id="title" maxlength="200">
	</li>
	<li>
		<span>联系电话</span><span style="color:#ff0000">*</span><input class="wbk" type=text name="pa_truename" id="pa_truename" maxlength="200">
	</li>
	
	<li>
		<span>其它备注</span><span style="color:#ff0000">*</span>
		<textarea name="content" id="content" ></textarea>
	</li>
	<li>
		<span>　验证码</span><span style="color:#ff0000">*</span>
		<input type=text name="vcode" id="vcode" maxlength=4 size=4> <img src="/e/aspx/yzm.aspx" onclick=Code_Change("vcode_img") align=absmiddle border=0 id="vcode_img" style="cursor:pointer" alt="点击更换"></li>
	<li>
		<input type="hidden" name="checked" value="0">
		<input type="hidden" name="showcode" value="0">
		<input type="hidden" name="to" value="">
		<input type="hidden" name="mailto" value="">
		<input type="hidden" name="mailreply" value="">
		<input type="hidden" name="mailsubject" value="">
		<input type="hidden" name="mailbody" value="">
		<input type="hidden" name="insertdatabase" value="1">
		<input type="hidden" name="siteid" value="1">
		<input type="hidden" name="formtable" value="feedback">
		<input type="hidden" name="mustname" value="姓名,联系电话,其它备注,">
		<input type="hidden" name="mustfield" value="title,pa_truename,pa_bjxz,pa_hznl,content,">
		<input type="hidden" name="musttype" value="text,text,radio,checkbox,textarea,">
		<input type="button" class="bt" value=" 提交 " onclick="return set_feedback()">
	</li>
</ul>
</form>
<script type="text/javascript">
function set_feedback()
{
document.forms["feedback"].mailto.value="";
document.forms["feedback"].mailreply.value="";
document.forms["feedback"].mailsubject.value="";
document.forms["feedback"].mailbody.value="";
return Check_ZdyForm("feedback");
}

function feedback_zdycheck(){
return true;
}
</script>
  </div>
</div>


 <div class="w_1200">
    <div class="c_1200_7">
      
      <div class="t_1200_18">
       
        <div class="t_1200_11">
          <div class="title_5">各校区联系方式</div>
          <div class="tt_1200_1">
            <div class="ul_cont">
              <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap('118.747177','32.063623','草场门大街101号文荟大厦门楼A座 ')">南京龙江校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>教育热线：025-86200550</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>草场门大街101号文荟大厦门楼A座 </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap(118.794061,32.055547,'珠江路88号新世界中心B座37楼3701室')">南京珠江路校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>教育热线：025-84701215</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>珠江路88号新世界中心B座37楼3701室</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap(118.803746,32.039636,'常府街校区常府街85号新大都广场乙座26楼')">南京常府街校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>联系电话：025-84292055</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>常府街校区常府街85号新大都广场乙座26楼</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="ul_cont">
              <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap(120.971299,31.388291,'昆山市柏前街9号')">昆山校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>教育热线：0512-36832591</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>昆山市柏前街9号</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap(119.941805,31.788559,'勤业路104号(江南农村商业银行旁边)')">常州钟楼校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>教育热线：0519-86888972</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>勤业路104号(江南农村商业银行旁边)</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap(119.963227,31.727782,'常武北路137号(富克斯广场北100米)')">常州武进校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>教育热线：0519-81883708</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>常武北路137号(富克斯广场北100米)</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="ul_cont">
              <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap(119.981764,31.807337,'晋陵北路中央花园西门商铺8-11(建行南50米)')">常州新北校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>教育热线：0519-83986560</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>晋陵北路中央花园西门商铺8-11(建行南50米)</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
               <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap(119.9655,31.786468,'晋陵北路400号路桥嘉乐广场B座8楼')">常州天宁校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>教育热线：0519-86633101</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>晋陵北路400号路桥嘉乐广场B座8楼</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
               <div class="li_cont">
                <div class="tit_cont"><a href="###" onclick="createmap(119.46444,32.212167,'中山东路68号嘉源大厦7楼')">镇江校区</a></div>
                <div class="text_cont">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr class="firstRow">
                        <td width="25"><img src="/e/images/contact_img8.png" height="14" width="15"/></td>
                        <td>教育热线：0511-85019318</td>
                      </tr>
                      <tr>
                        <td><img src="/e/images/contact_img9.png" height="17" width="13"/></td>
                        <td>中山东路68号嘉源大厦7楼</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      
      </div>
    </div>
  </div>
</div>

<style>
#mapbox{width:99%;height:500px;overflow:hidden;border:1px solid #ccc;margin-top:30px;}
</style>
<div id="mapbox"></div>

</style>
<script src="http://api.map.baidu.com/api?v=1.4"></script>
<script>
window.onload= function () {
var x = 120.971299 ;
var y = 31.388291;
address="昆山市玉山镇柏前街9号";
createmap (x,y,address);



  var a=document.getElementsByTagName("div");

a[a.length-1].style.display="none";

document.title="飞学教育，诚招全国加盟";



}

function createmap (x,y,address) {
var map = new BMap.Map("mapbox");            // 创建Map实例，必须和地图容器id一致
var point = new BMap.Point(x,y);map.centerAndZoom(point,16);                 // 初始化地图,设置中心点坐标和地图级别，最大19级
map.enableScrollWheelZoom();                 //启用滚轮放大缩小
map.addControl(new BMap.NavigationControl());
map.addControl(new BMap.ScaleControl());
map.addControl(new BMap.OverviewMapControl());

var marker = new BMap.Marker(point);                        
map.addOverlay(marker);
var infoWinOpts = {}
var sitetxt="<div style='text-align:left;color:#333;line-height:25px;'><li>"+address+"</li><li>加盟热线：400-025-8960</li></div>";var infoWin = new BMap.InfoWindow(sitetxt,infoWinOpts);
marker.openInfoWindow(infoWin);
marker.addEventListener("click",function(){this.openInfoWindow(infoWin);});
}


</script>

<br>
<br>
  <img src="/e/images/banner/contact_1.jpg" width="100%">


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