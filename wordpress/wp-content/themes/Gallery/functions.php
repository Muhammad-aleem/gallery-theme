<?php
add_theme_support("post-thumbnails");
function eblog_scripts()
{
	// wp_deregister_script('jquery');

	// wp_enqueue_script( 'jquery', get_template_directory_uri() . '/js/jquery.min.js',array(), '1.90', true  );

	wp_enqueue_style('Gallery-style', get_stylesheet_uri());

	// bootstrap files



	wp_enqueue_style('Gallery_Awesome_file ', get_template_directory_uri() . '/Font-Awesome-4.7/css/font-awesome.min.css');
	wp_enqueue_style('Gallery_bootstrap_file ', get_template_directory_uri() . '/css/bootstrap.min.css');


	wp_enqueue_style('Gallery_slider_file ', get_template_directory_uri() . '/css/hero-slider-style.css');
	wp_enqueue_style('Gallery_popup_file ', get_template_directory_uri() . '/css/magnific-popup.css');
	wp_enqueue_style('Gallery_temp_file ', get_template_directory_uri() . '/css/templatemo-style.css');





	wp_enqueue_script('bootstrap/js file', get_template_directory_uri() . '/js/jquery-1.11.3.min.js', array(), '1.1', true);


	wp_enqueue_script('tether/js file', get_template_directory_uri() . '/js/tether.min.js', array(), '1.1', true);

	wp_enqueue_script('tether/js file', get_template_directory_uri() . '/js/bootstrap.min.js', array(), '1.1', true);
	wp_enqueue_script('tether/js file', get_template_directory_uri() . '/js/hero-slider-main.js', array(), '1.1', true);

	wp_enqueue_script('tether/js file', get_template_directory_uri() . '/js/jquery.magnific-popup.min.js', array(), '1.1', true);
}
add_action('wp_enqueue_scripts', 'eblog_scripts');

function Gallerymenu()
{
	register_nav_menus(
		array(
			'header_menu' => "header_menu",


		)
	);
}
add_action('after_setup_theme', 'Gallerymenu');


add_filter('nav_menu_css_class', 'gallery_menu_li_class', 10, 4);

function gallery_menu_li_class($classes, $item, $args, $dept)
{
	$classes[] = "nav-item";
	return $classes;
}
add_filter('nav_menu_link_attributes', 'gallery_menu_attributes');
function gallery_menu_attributes($attr)
{
	$attr['class'] = 'nav-link';
	return $attr;
}


function  featured_image()
{

	add_theme_support("post-thumbnails");
	// image size
	add_image_size('small-thumbnail', 120, 90, true);
	add_image_size('banner-thumbnail', 700, 350, true);
}

add_action('after_setup_theme', 'featured_image');
//  custom post

function custom_post()
{
	register_post_type(
		'custom_post',
		array(
			"labels" => array(
				"name" => _('custom_post '),
				"singular_name" => _('custom_post')
			),
			"public" => true,
			"shoe_in_nav_menus" => true,
			'has_archive' => false,
			"supports" => array('thumbnail', 'title', 'editor')
		)

	);
}
add_action("init", "custom_post");


//  custom taxonomy
// add_action('init', 'wpshout_register_taxonomy');
// function wpshout_register_taxonomy() {
//     $args = array( 
//         'hierarchical' => true,
//         'label' => 'book Taxonomy',
//     );
//     register_taxonomy( 'awesome_taxonomy', array( 'post', 'page', 'awesome' ), $args );
// } 
// // end  custom taxonomy


function create_book_taxonomies()
{
	// Add new taxonomy, make it hierarchical (like categories)
	$labels = array(
		'name'              => _x('Genres', 'Book', 'textdomain'),
		'singular_name'     => _x('Genre', 'Book', 'textdomain'),
		'search_items'      => __('Search Book', 'textdomain'),
		'all_items'         => __('All Genres', 'textdomain'),
		'parent_item'       => __('Parent Book', 'textdomain'),
		'parent_item_colon' => __('Parent Book:', 'textdomain'),
		'edit_item'         => __('Edit book', 'textdomain'),
		'update_item'       => __('Update book', 'textdomain'),
		'add_new_item'      => __('Add New Book', 'textdomain'),
		'new_item_name'     => __('New Genre book', 'textdomain'),
		'menu_name'         => __('Book', 'textdomain'),
	);

	$args = array(
		'hierarchical'      => true,
		'labels'            => $labels,
		'show_ui'           => true,
		'show_admin_column' => true,
		'query_var'         => true,
		'rewrite'           => array('slug' => 'book'),
	);

	register_taxonomy('book', array('post', 'book'), $args);
}
add_action('init', 'create_book_taxonomies');

// sidebar
function crt_sidebar_init()
{
	register_sidebar(array(
		'name'          => esc_html__('right_Sidebar', 'ctr'),
		'id'            => 'sidebar-1',
		'description'   => esc_html__('Add widgets here.', 'ctr'),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	));
	register_sidebar(array(
		'name'          => esc_html__('footer_Sidebar', 'ctr'),
		'id'            => 'footer_1',
		'description'   => esc_html__('Add widgets here.', 'ctr'),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	));
	register_sidebar(array(
		'name'          => esc_html__('footer_Sidebar_2', 'ctr'),
		'id'            => 'footer_2',
		'description'   => esc_html__('Add widgets here.', 'ctr'),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	));
	register_sidebar(array(
		'name'          => esc_html__('footer_Sidebar_3', 'ctr'),
		'id'            => 'footer_3',
		'description'   => esc_html__('Add widgets here.', 'ctr'),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	));
}
add_action('widgets_init', 'crt_sidebar_init');
// end sidebar


// custom  theme customize options setting

function custom_theme_panel_setting($wp_customize)
{
	// this is a title area
	$wp_customize->add_section('customize_theme_section_area', array(
		"title" => "crt_custom_theme_setting"
	));

	$wp_customize->add_setting('custom_theme_title_setting', array(
		"default" => "current year",

	));

	$wp_customize->add_control('custom_theme_title_control', array(
		"label" => "Enter Title",
		"section" => "customize_theme_section_area",
		"settings" => "custom_theme_title_setting"
	));

	// textarea
	$wp_customize->add_setting('custom_theme_description_setting', array(
		"default" => "This is my dummy description"
	));

	$wp_customize->add_control('custom_theme_description_control', array(
		"label" => "Put Your Description ",
		"section" => "customize_theme_section_area",
		"settings" => "custom_theme_description_setting",
		"type" => "textarea"
	));
}
add_action('customize_register', 'custom_theme_panel_setting');

 // end custom  theme customize options setting
