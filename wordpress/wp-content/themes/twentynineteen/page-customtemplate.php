<?php 
/*
* Template Name: Page Custom Template
* Author: Aleem
* Author URI: http://http//stylothemes.com
* Description: our first learning theme
*/
get_header();?>
 <?php
     $wpb_all_query= new WP_Query(array('post_type'=>'custom_post','post_status'=>'publish'));
   ?>
   <?php if($wpb_all_query->have_posts()):?>
    <!--  -->
    <?php while($wpb_all_query->have_posts()):
        $wpb_all_query->the_post();
        ?>
        <?php the_post_thumbnail('banner-thumbnail');?>
    <div class="grid-item">
                                    
        <figure class="effect-sadie">
            <figcaption>
                <h2 class="tm-figure-title"><?php   the_title();?></h2>
                <p class="tm-figure-description"><?php the_content(); ?></p>
            </figcaption>           
        </figure>
                                       

    </div>
 <?php endwhile;?>
<?php endif;?>
<?php wp_reset_postdata(); ?>
<?php get_footer();?>