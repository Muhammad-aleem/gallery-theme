<?php get_header();?>


<?php 
if (is_home()) {
    echo "This is a our home page";
}
?>
    
         <!-- Content -->
       

            <ul class="cd-hero-slider">


                <!-- Page 1 Gallery One -->
                <li class="selected">                    
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="1" data-page-type="gallery">
                            <div class="tm-img-gallery-container">
                                <div class="tm-img-gallery gallery-one">
                                <!-- Gallery One pop up connected with JS code below -->
                                	   <?php
                                             if (have_posts()):
                                                while (have_posts()):
                                                    the_post();
                                            ?>
                                    <div class="grid-item">
                                    


                                        <figure class="effect-sadie">

                                            <?php the_post_thumbnail('banner-thumbnail');?>
                                            <figcaption>

                                             <h2 class="tm-figure-title"><a href=" <?php the_permalink();?>"><?php the_title();
                                             echo get_post_meta(get_the_ID(), 'myfiled',true);
                                             ?></a></h2>
                                                <p class="tm-figure-description"><?php the_content(); ?></p>
                                                
                                               
                                            </figcaption>           
                                        </figure>
                                       

                                    </div>
                                     <?php
                                        endwhile;    
                                    endif;
                                        ?>
<!--  -->



                                                                                                      
                                </div>                                 
                            </div>
                        </div>                                                    
                    </div>                    
                </li>

              
            </ul>
            
            <?php get_footer();?>
