$(document).ready(function() {
    if (document.documentElement.clientWidth > 768) {
        $(function() {
            $('.directions').matchHeight({
                target: $('.diceroll')
            });
        });
    }
});