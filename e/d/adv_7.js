
var Adv_range_7="1";
var EndDate_7="2018/08/15";
var Dt_7=new Date();
var NowDate_7=Dt_7.getFullYear()+"/"+(Dt_7.getMonth()+1)+"/"+Dt_7.getDate();
if(Date.parse(EndDate_7)-Date.parse(NowDate_7)<0) 
{
 Adv_range_7="0";
} 
else if(Adv_range_7=="1" && IsPageHome!="1")
{
 Adv_range_7="0";
}
else if(location.href.indexOf("/e/")>0) 
 {
 Adv_range_7="0";
 }

function newwindow_7()
 {
  window.open("/e/aspx/adv_new.aspx?id=7","newwindow7","height=100, width=400,top=50%,left=50%,scrollbars=no");
 }
 if(Adv_range_7!="0"){newwindow_7();}
