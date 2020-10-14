<?php get_header();?>
<div id="faq" class="content">
    <div class="row">
        <div id="left-col" class="col-3">
            <div id="top-container">
                <img id="top-dots" src="<?php echo get_template_directory_uri('')."/images/faq/Dots_up.svg";?>"alt="">
            </div>
            <div id="middel-container">
                <img id="ellipse" src="<?php echo get_template_directory_uri('')."/images/faq/Ellipse.svg";?>"alt="">
            </div>
            <div id="bottom-container">
                <img id="bottom-dots" src="<?php echo get_template_directory_uri('')."/images/faq/Dots_up.svg";?>"alt="">
            </div>
        </div>
        <div id="center-col" class="col-xl-8 col-lg-10 col-10">
            <div class="container">
                <h1 class="title">PREGUNTAS FRECUENTES</h1>
                <ul class="acc">
                    <?php get_template_part('includes/section','faq') ?>
                </ul>
            </div>
        </div>
        <div id="right-col" class="col-3">
            <div id="top-container">
                <img id="half-top" src="<?php echo get_template_directory_uri('')."/images/faq/half-right.svg";?>"alt="">
            </div>
            <div id="bottom-container">
                <img id="hollow" src="<?php echo get_template_directory_uri('')."/images/faq/hollow-ellipse.svg";?>"alt="">
            </div>
        </div>
    </div>
</div>
<script>
    $(function() {
        $('.acc_ctrl').on('click', function(e) {
            e.preventDefault();
            if ($(this).hasClass('active')) {
                $(this).removeClass('active');
                $(this).next()
                    .stop()
                    .slideUp(300);
            } else {
                $(this).addClass('active');
                $(this).next()
                    .stop()
                    .slideDown(300);
            }
        });
    });
</script>

<?php get_footer();?>