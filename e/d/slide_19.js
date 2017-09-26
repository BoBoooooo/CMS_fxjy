var Show_Style=3;
var Image_19=new Array();
var Pics="/e/images/banner/5.jpg";
var Links="";
var Titles="";
var Alts="";
var Apic19=Pics.split('|');
var ALink19=Links.split('|');
var ATitle19=Titles.split('|');
var AAlts19=Alts.split('|');
var Show_Text=0;
for(i=0;i<Apic19.length;i++)
  {
   Image_19.src = Apic19[i]; 
  }



  var FHTML='<div id="js_slide_focus_19" class="slide_focus focus_style3" style="height:310px"><a class="prev"></a><a class="next"></a>';
  
  FHTML+='<ul class="inner">';
  for(var i=0;i<Apic19.length;i++)
   {
     if(ALink19.length<(i+1) || ALink19[i]=="")
      {
       ALink19[i]="javascript:void(0)";
      }
     if(AAlts19.length<(i+1))
      {
       AAlts19[i]="";
      }
     if(ATitle19.length<(i+1))
      {
       ATitle19[i]="";
      }
    FHTML+='<li><a href="'+ALink19[i]+'" target="_self" title="'+AAlts19[i]+'"><img src="'+Apic19[i]+'">';
    FHTML+='<em>'+ATitle19[i]+'</em>';
    FHTML+='</a></li>';
   }
 FHTML+='</ul>';
 FHTML+='</div>';
 document.write(FHTML);
$(function(){Slide_Focus("js_slide_focus_19",0,5,1920,310,true);});