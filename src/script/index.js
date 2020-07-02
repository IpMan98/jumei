 var liStr = document.querySelector('.today-new-ul')
 var mySwiper = new Swiper ('.swiper-container', {
    //自动播放
    autoplay: {
        delay: 3000,//1秒切换一次
        disableOnInteraction: true,
      },
      loop:true,
      effect : 'fade',
    //   分页器
      pagination:{
        clickable:true,
        el: '.swiper-pagination',
        bulletElement : 'li',
        type: 'bullets',
      },
    // 如果需要前进后退按钮
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    
    // 如果需要滚动条
    scrollbar: {
      el: '.swiper-scrollbar',
    },
  })        
 ajax({
     url: '../imgs/list.php',
     type: 'get',
     success: function (data) {
         var json = JSON.parse(data);
         console.log(json);
         liStr.innerHTML = ``;
         for (var i = 0; i < json.length; i++) {
             liStr.innerHTML += `
             <li class="newdeal-box" data="${json[i].id}" id="goods">
             <a href="javascript:;" id="forbid">
                 <div class="imgs">
                     <span href="javascript:;" class="addcart">加入购物车</span>
                     <img src="${json[i].deal_img}" alt="">
                     <div class="commit-new">新品上线，快来试试吧！</div>
                 </div>
                 <div class="today-detail">
                     <p class="title"><span class="pink">【官方授权】</span>${json[i].deal_tit}</p>
                     <div class="intro_box">
                         <div class="price_box"><em>¥</em><span class="pnum">${json[i].price_dis}</span><span class="mnum">${json[i].price_org}</span></div>
                     </div>
                 </div>
             </a>
         </li>
             `
         }
         (function () {
             var lis = document.querySelectorAll('#goods');
             console.log(lis)
             lis.forEach(function(val,i){
                lis[i].onclick = function () {
                    var data = lis[i].getAttribute('data');
                    localStorage.setItem('id', data);
                    location.href = './details.html';
                 }
             })            
         })()
     },
 })
//  window.onload = function () {
//      var lis = document.querySelector("#goods");
//      var forbid = document.querySelector("#forbid");

//      // lis.addEventListener("click",function(){       
//      // })
//      liStr.onclick = function (ev) {
//          var e = ev || event;
//          var target = e.target || e.srcElement;
//          if (target.id = 'goods') {
//              console.log(e.target)
             
//              console.log(data)
            
//              //  
//          }
//      }
//  }