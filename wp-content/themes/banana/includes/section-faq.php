<?php if(have_posts()): while(have_posts() ):the_post() ?>
    <li>
        <button class="acc_ctrl"><h2><?php the_title();?></h2></button>
        <div class="acc_panel">
            <p><?php the_content(); ?></p>
        </div>
    </li>
<?php endwhile; else: endif;?>