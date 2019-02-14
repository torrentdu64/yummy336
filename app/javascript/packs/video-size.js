$(function(){
    console.log('before: '+$('#v1').attr('src'));
    if ($(window).width() < 580) {
        var videoFile = 'https://res.cloudinary.com/pinky-girls/video/upload/c_scale,g_center,h_430,q_auto:best,so_15,w_475,y_114/v1549765593/Club_Pinky-Girls-3w-7yZ8pAD4.mp4';
        $('#v1').attr('src',videoFile);
    }
    else if ($(window).width() > 600) {
        var videoFile = 'https://res.cloudinary.com/pinky-girls/video/upload/br_5811k,c_crop,dl_21,h_614,so_15,w_1280/v1549765593/Club_Pinky-Girls-3w-7yZ8pAD4.mp4';
        $('#v1').attr('src',videoFile);
    }
    console.log('after: '+$('#v1').attr('src'));
});
