<?php
function chiled_theme_style_scrpits()
{
    wp_enqueue_style('parent-style', get_template_directory_uri() . 'style.css');
    // wp_enqueue_script('ajax_functoin',get_stylesheet_directory_uri.'/js/ajaxfunction.js',array('jquery'),'1,0',true);

    wp_enqueue_script('ajax_function', get_bloginfo('stylesheet_directory') . '/js/ajaxfunction.js', array('jquery'), '1.0.0');

    // register 
    wp_register_script('ajax_function', get_bloginfo('stylesheet_directory') . '/js/ajaxfunction.js', array('jquery'), '1,0', true);

    wp_register_script('script_registering', get_bloginfo('stylesheet_directory') . '/js/ajaxfunction.js');
    wp_localize_script('script_registering', 'my_ajax_object', array(
        'ajaxurl' => admin_url('admin-ajax.php'),
        'form_security' => wp_create_nonce('from_security')
    ));
    wp_enqueue_script('script_registering');
}
add_action('wp_enqueue_scripts', 'chiled_theme_style_scrpits');
// ajax function
function My_ajax_action_function()
{
    $data = $_POST['data'];
    // var_dump($data); chacking
    // security check
    if (!check_ajax_referer('from_security', 'security')) {
        wp_send_json_error('Error');
        return;
    }
    // end security check
    $post_id = wp_insert_post(
        array(
            'post_type' => 'post',
            'post_status' => 'draft',
            'post_content' => $data['content'],
            'post_title' => $data['name'],

        ),

        true
    );
    if ($post_id) {
        update_post_meta($post_id, '_user_metabox_post', $data['email']);
        wp_set_object_terms($post_id, $data['option'], 'category');
    }

    die();
}
add_action("wp_ajax_My_ajax_action_function", "My_ajax_action_function");
add_action(" wp_ajax_nopriv_My_ajax_action_function", "My_ajax_action_function");
