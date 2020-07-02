"use strict";

var liStr = document.querySelector('.today-new-ul');
var mySwiper = new Swiper('.swiper-container', {
  //自动播放
  autoplay: {
    delay: 3000,
    //1秒切换一次
    disableOnInteraction: true
  },
  loop: true,
  effect: 'fade',
  //   分页器
  pagination: {
    clickable: true,
    el: '.swiper-pagination',
    bulletElement: 'li',
    type: 'bullets'
  },
  // 如果需要前进后退按钮
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev'
  },
  // 如果需要滚动条
  scrollbar: {
    el: '.swiper-scrollbar'
  }
});
ajax({
  url: '../imgs/list.php',
  type: 'get',
  success: function success(data) {
    var json = JSON.parse(data);
    console.log(json);
    liStr.innerHTML = "";

    for (var i = 0; i < json.length; i++) {
      liStr.innerHTML += "\n             <li class=\"newdeal-box\" data=\"".concat(json[i].id, "\" id=\"goods\">\n             <a href=\"javascript:;\" id=\"forbid\">\n                 <div class=\"imgs\">\n                     <span href=\"javascript:;\" class=\"addcart\">\u52A0\u5165\u8D2D\u7269\u8F66</span>\n                     <img src=\"").concat(json[i].deal_img, "\" alt=\"\">\n                     <div class=\"commit-new\">\u65B0\u54C1\u4E0A\u7EBF\uFF0C\u5FEB\u6765\u8BD5\u8BD5\u5427\uFF01</div>\n                 </div>\n                 <div class=\"today-detail\">\n                     <p class=\"title\"><span class=\"pink\">\u3010\u5B98\u65B9\u6388\u6743\u3011</span>").concat(json[i].deal_tit, "</p>\n                     <div class=\"intro_box\">\n                         <div class=\"price_box\"><em>\xA5</em><span class=\"pnum\">").concat(json[i].price_dis, "</span><span class=\"mnum\">").concat(json[i].price_org, "</span></div>\n                     </div>\n                 </div>\n             </a>\n         </li>\n             ");
    }

    (function () {
      var lis = document.querySelectorAll('#goods');
      console.log(lis);
      lis.forEach(function (val, i) {
        lis[i].onclick = function () {
          var data = lis[i].getAttribute('data');
          localStorage.setItem('id', data);
          location.href = './details.html';
        };
      });
    })();
  }
}); //  window.onload = function () {
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