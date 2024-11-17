document.addEventListener('DOMContentLoaded', function () {
    var commentButton = document.querySelector('.btn-outline-light.btn-lg.px-4');
    var footer = document.querySelector('footer');

    commentButton.addEventListener('click', function () {
        var scrollStep = -window.scrollY / (1000 / 15);
        var scrollInterval = setInterval(function () {
            if (window.scrollY !== 0) {
                window.scrollBy(0, scrollStep);
            } else {
                clearInterval(scrollInterval);
            }
        }, 15);
        footer.scrollIntoView();
    });
});
