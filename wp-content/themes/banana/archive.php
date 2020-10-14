<?php get_header();?>

<div class="content">
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <h1><?php the_title();?></h1>
            <?php if( have_posts() ): while( have_posts()): the_post();?>
            <?php the_content();?>
            <?php   endwhile; else: endif;?>
        </div>
        <div class="col-2"></div>
    </div>
</div>

<?php get_footer();?>