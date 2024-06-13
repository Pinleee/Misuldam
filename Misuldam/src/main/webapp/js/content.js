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