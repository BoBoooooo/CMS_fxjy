$(function(){
	ZDZJheight()
   if (document.documentMode<=8){}
   else
   {
	  Wows("fadedown","fadeInDown",1);
	  Wows("fadeleft","fadeInLeft",1);
	  Wows("faderight","fadeInRight",1);
	  Wows("fadeup","fadeInUp",1);
	  Wows("module_title","fadeInDown",1);
	  Wows("nav_title","zoomIn",1);
   }
	
});






function ZDZJheight()                   
{
  if($(".nav_menu").find("li").length<=1)
  {
	  $(".nav_menu").hide();
  }
}


function Wows(classname,hdclassname,cout)/*classname执行动画元素 hdclassname执行动画的方式 cout 每行排几个*/
{
  var $classname=$("."+classname);
  $classname.each(function(i){
	  if(i%cout==0){$(this).attr({"data-wow-delay":"0.2s"});}
	  else if(i%cout==1){$(this).attr({"data-wow-delay":"0.4s"});}
	  else if(i%cout==2){$(this).attr({"data-wow-delay":"0.6s"});}
	  else if(i%cout==3){$(this).attr({"data-wow-delay":"0.8s"});}
	  else if(i%cout==4){$(this).attr({"data-wow-delay":"0.9s"});}
	  else if(i%cout==5){$(this).attr({"data-wow-delay":"1s"});}
	  else if(i%cout==6){$(this).attr({"data-wow-delay":"1.1s"});}
	  else if(i%cout==7){$(this).attr({"data-wow-delay":"1.2s"});}
	  else if(i%cout==8){$(this).attr({"data-wow-delay":"1.3s"});}
	  else if(i%cout==9){$(this).attr({"data-wow-delay":"1.4s"});}
  });
  var wow = new WOW({
    boxClass:classname,
    animateClass: 'animated '+hdclassname,
    offset: 80,
    mobile: true,
    live: true
  });
  wow.init();
}






//右侧返回顶部图标
$(function(){
     var icon='<a class="gotoptop_icon" id="gotoptop_icon" href="#" title="返回顶部"></a>';
     $("body").append(icon);
     var $window=$(window);
     var $gotoptop_icon=$("#gotoptop_icon");
     var $body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body'); // opera fix
     $(window).bind('scroll resize',function(){
        if($window.scrollTop()>0)
         {
          $gotoptop_icon.show();
         }
        else
         {
          $gotoptop_icon.hide();
         }
     });
     $gotoptop_icon.bind('click',function(){
        $body.animate({scrollTop:'0px'},"fast");
         return false;
     });
});



function gotoposition(id) //页面转到指定id位置
  {
     var pos=0;
     var obj=$(id);
     if(obj.size()==0){return;}
     pos=obj.offset().top;
     pos=pos-137;
     var $body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body'); // opera fix
     $body.animate({scrollTop:pos+'px'});
 }






