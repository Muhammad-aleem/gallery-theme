<!DOCTYPE html>
<html lang="<?php echo language_attributes();?>">
<head>
    <meta charset="<?php echo get_bloginfo('charset');?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo get_bloginfo('name');?>|<?php echo get_bloginfo('description');?></title>
<!--
Fluid Gallery Template
http://www.templatemo.com/tm-500-fluid-gallery
-->
   <?php wp_head();?>                               

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->

        <!-- These two JS are loaded at the top for gray scale including the loader. -->

       <!--  <script src="js/jquery-1.11.3.min.js"></script> -->
        <!-- jQuery (https://jquery.com/download/) -->

        <script>
		
            var tm_gray_site = true;
            
            if(tm_gray_site) {
                $('html').addClass('gray');
            }
            else {
                $('html').removeClass('gray');   
            }
        </script>
</head>

    <body>
    	 <div class="cd-hero">

            <!-- Navigation -->        
            <div class="cd-slider-nav">
                <nav class="navbar">
                    <div class="tm-navbar-bg">
                        
                        <a class="navbar-brand text-uppercase" href="<?php bloginfo('url');?>"><i class="fa fa-picture-o tm-brand-icon"></i>Fluid Gallery</a>

                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                          
                            <!-- <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">1st fluid <span class="sr-only">(current)</span></a>
                                </li>                                
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="2">2nd fluid</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="3">3rd fluid</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="4">Columns</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="5">Message</a>
                                </li>
                            </ul> -->
                            <?php 
                            if (has_nav_menu("header_menu")) {
                               wp_nav_menu(array(
                                "theme_location" => "header_menu",
                                "menu_class" => "nav navbar-nav",
                                
                            ));
                            }
                            ?>
                        </div>                        
                    </div>

                </nav>
            </div> 
            <div class="container"  id="" style="background: green;width: 100%;height: 100%;" >
                
                <div class="row">
                    <div class="col-md-6">
                        <?php dynamic_sidebar('sidebar-1')?>
                    </div>
                </div>
            </div>