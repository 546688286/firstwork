var fade=document.querySelector('.fade');
var lb=fade.querySelector('.lb');
var li=lb.querySelectorAll('li');
var LBtn=fade.querySelector('.LBtn');
var RBtn=fade.querySelector('.RBtn');
var dot=fade.querySelector('.dot');
var dotLi=dot.querySelectorAll('li');

var fadeOutTimer;//淡出定时器
var fadeInTimer;//淡入定时器
var imgNum=0;//图片计时器
var dotNum=0;//焦点按钮计数器
var flag=true;
RBtn.onclick = function (){
    if(flag){
        flag=false;
        var oldLi = li[imgNum];
        if(imgNum>=li.length-1){
            imgNum=0;
        }
        var newLi = li[imgNum + 1];
        var o1 = parseFloat(getComputedStyle(oldLi).opacity);
        var o2 = parseFloat(getComputedStyle(newLi).opacity);
        if (o1 >= 0) {
            fadeOut(oldLi)
        } else {
            fadeIn(oldLi)
        }
        if (o2 <= 0) {
            fadeIn(newLi)
        } else {
            fadeOut(newLi)
        }
        if(dotNum>=dotLi.length-1){
            dotNum=-1;
        }
        noBg();
        dotLi[dotNum+1].style.backgroundColor='black';
        imgNum++;
        dotNum++;
    }
};
LBtn.onclick = function (){
    if(flag){
        flag=false;
        var oldLi = li[imgNum];
        if(imgNum<=0){
            imgNum=li.length-1;
        }
        var newLi = li[imgNum - 1];
        var o1 = parseFloat(getComputedStyle(oldLi).opacity);
        var o2 = parseFloat(getComputedStyle(newLi).opacity);
        if (o1 >= 0) {
            fadeOut(oldLi)
        } else {
            fadeIn(oldLi)
        }
        if (o2 <= 0) {
            fadeIn(newLi)
        } else {
            fadeOut(newLi)
        }
        if(-dotNum>=0){
            dotNum=dotLi.length;
        }
        noBg();
        dotLi[dotNum-1].style.backgroundColor='black';
        imgNum--;
        dotNum--;
    }
};
//焦点按钮背景色
function noBg(){
    for(var i=0;i<dotLi.length;i++){
        dotLi[i].style.backgroundColor='transparent';
    }
}
//焦点按钮点击事件
for(var i=0;i<dotLi.length;i++){
    dotLi[i].index=i;
    dotLi[i].onclick=function(){
        noBg();
        this.style.backgroundColor='rgba(0,0,0,0.35)';
        fadeOut(li[dotNum]);
        fadeIn(li[this.index]);
        dotNum=this.index;
        imgNum=this.index;
    }
}
//淡出动画
function fadeOut(element){
    fadeOutTimer=setInterval(function(){
        var op=parseFloat(getComputedStyle(element).opacity);
        if(op<=0){
            clearInterval(fadeOutTimer);
            flag=true;
            return;
        }
        element.style.opacity=op-0.1;
    },100)
}
//淡入动画
function fadeIn(element){
    fadeInTimer=setInterval(function(){
        var op=parseFloat(getComputedStyle(element).opacity);
        if(op>=1){
            clearInterval(fadeInTimer);
            flag=true;
            return;
        }
        element.style.opacity=op+0.1;
    },100)
}
fade.onmouseover=function(){
    clearInterval(autoTimer)
};
fade.onmouseout=function(){
    autoPlay();
};
autoPlay();
function autoPlay(){
    autoTimer=setInterval(function(){
        RBtn.onclick();
    },1000);
}


var ul1=document.getElementsByTagName('ul')[0];
var ul2=document.getElementsByTagName('ul')[1];
ul1.onclick=function(){
    
    	if(ul2.style.display=="block"){
	        ul2.style.display="none"
	    }else{
	        ul2.style.display="block"
	    }
};

