$(document).ready(function() {
    $('.assortDepth .dep01').click(function(){
        $(".assortList>li").hide();
        $('.assortList .depC01').css('display','flex');
        $('.assortDepth>li').removeClass('active');
        $('.assortDepth .dep01').addClass('active');
    });
    $('.assortDepth .dep02').click(function(){
        $(".assortList li").hide();
        $('.assortList .depC02').css('display','flex');
        $('.assortDepth>li').removeClass('active');
        $('.assortDepth .dep02').addClass('active');
    });
    $('.assortDepth .dep03').click(function(){
        $(".assortList li").hide();
        $('.assortList .depC03').css('display','flex');
        $('.assortDepth>li').removeClass('active');
        $('.assortDepth .dep03').addClass('active');
    });
    $('.assortDepth .dep04').click(function(){
        $(".assortList li").hide();
        $('.assortList .depC04').css('display','flex');
        $('.assortDepth>li').removeClass('active');
        $('.assortDepth .dep04').addClass('active');
    });
    
});

$(document).ready(function() {
    $('.prodSlide').slick({
        centerMode: true,
        slidesToShow:4,
        slidesToScroll: 1,
        autoplay: false,
        autoplaySpeed:3000,
    });
});

/*수량버튼*/
function count(type)  {
    // 결과를 표시할 element
    const resultElement = document.getElementById('volumeTotal');
    
    // 현재 화면에 표시된 값
    let number = resultElement.innerText;
    
    // 더하기/빼기
    if(type === 'plus') {
      number = parseInt(number) + 1;
    }else if(type === 'minus')  {
      number = parseInt(number) - 1;
    }
    
    // 결과 출력
    resultElement.innerText = number;
  }