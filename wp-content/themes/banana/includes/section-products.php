<?php if(have_posts()): while(have_posts() ):the_post() ?>
    <a href="<?php the_permalink(); ?>">
        <p><?php the_title();?></p>
        <img src="<?php the_field('imagen'); ?>" alt="">
    </a>
<?php endwhile; else: endif;?>