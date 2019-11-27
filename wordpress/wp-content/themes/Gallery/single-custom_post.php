 <?php get_header();?>
 <ul class="cd-hero-slider">


                <!-- Page 1 Gallery One -->
                <li class="selected">                    
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="1" data-page-type="gallery">
                            <div class="tm-img-gallery-container">
                                <div class="tm-img-gallery gallery-one">
                                	 <div class="grid-item">
                                	 	<?php
     $wpb_all_query= new WP_Query(array('post_type'=>'custom_post','post_status'=>'publish')); ?>
  											

  	<?php if($wpb_all_query->have_posts()):?>
  		<?php while($wpb_all_query->have_posts()):
        $wpb_all_query->the_post();
        ?>
  <figure class="effect-sadie">
       <?php the_post_thumbnail('banner-thumbnail');?>
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