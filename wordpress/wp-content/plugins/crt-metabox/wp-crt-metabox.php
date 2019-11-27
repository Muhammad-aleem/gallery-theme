<?php
/*
Plugin Name: Custon metabox
Plugin URI: http://wordpress.org/plugins/
Description: This is not just a plugin, 
Author: Aleem
Version: 1.7.1
Author URI: http://ma.tt/
*/

function wp_crt_metabox(){
    add_meta_box(   
    	          // pages 
                  'ctr_metabox_id', // this is a id
    	     	  'New Page Metabox',  // this is a title
    	     	  'ctr_page_metabox_function', // this is a callback function 
    	     	  'page', // is the part/section to show the box
    	     	  'normal', // position to show this is a contant
    	     	  'high' // priority 
    	     	);
    	     	// post metabox
    add_meta_box( 'post_metabox_id',
    	     	  'Post Metabox',
    	     	  'ctr_post_metabox_function',
    	     	  'post',
    	     	  'side',
    	     	  'high'

                );
                  
	
 

}
      add_action("add_meta_boxes","wp_crt_metabox");

				function ctr_custom_post(){
					// custom post type
			     add_meta_box( 'custom_post_metabox_id',
					  'Custom Post Metabox',  
					  'ctr_custom_post_metabox_function',
					  'custom_post',
					  'side',
					  'high'

				);

				}
		add_action("add_meta_boxes_custom_post","ctr_custom_post");
				//  callback function
		    function ctr_page_metabox_function(){

		    }
		    function ctr_post_metabox_function(){

		    }
		     function ctr_custom_post_metabox_function($post){
		     	 
		 wp_nonce_field(basename(__FILE__),"ctr_custom_post_nonce");
		     	?>
		     	<div>
		     		<label>Publisher Name</label>
		     		<?php
		     		$Publisher_name= get_post_meta($post->ID,"Publisher_name",true);
		     		?>
		     		<input type="text" name="txtpublishername" value="<?php echo $Publisher_name?>" placeholder="Publisher name">
		     	</div>
		     	<?php

		     }
          //  save in database section
		     add_action("save_post","crt_save_data_function",10,2);
 function crt_save_data_function($post_id,$post){
		     	 // in this condition i,m fiend the nonce
		     	if (!isset($_POST['ctr_custom_post_nonce']) || !wp_verify_nonce($_POST['ctr_custom_post_nonce'],basename(__FILE__)) ) {
		     		return $post_id;
		     	}

		     	$post_slug="custom_post";
		     	//verifying the slug value
		     	if ($post_slug!=$post->post_type) {
		     		return;
		     	}
		     	// save the data in database
		     	$pub_name='';
		     	if (isset($_POST['txtpublishername'])) {
		     		$pub_name=sanitize_text_field($_POST['txtpublishername']) ;
		     	}
		     	else
		     	{
		     		$pub_name='';
		     	}
		     	update_post_meta($post_id,"Publisher_name",$pub_name);

  }
		  //  end  save in database section




               // end callback function
		     // author metabox
 function ctr_author_metabox(){
 	     add_meta_box(
 	     	"ctr_author_metabox_id",
 	     	"Author_metabox",
 	     	"author_metabox_callback_function",
 	     	"custom_post",
 	     	"side",
 	     	"high"


 	     );
		  }
		      add_action("add_meta_boxes","ctr_author_metabox");

 function author_metabox_callback_function($post){
	wp_nonce_field(basename(__FILE__),"ctr_author_nonce"); //secourity provide
	?>
	<p>
		<label for="u_author">Select Author</label>
		<select name="u_author">
			<?php
			$post_id=$post->ID;
			$author_id= get_post_meta($post->ID,"author_name",true);
           $all_author= get_users(array("role"=>"author"));
           foreach ($all_author as $index=>$author) {
           	$selected='';
           	if ($author_id==$author->data->ID) {
           		$selected='selected="selected"';
           	}

           ?>
           <option value="<?php echo $author->data->ID; ?>" <?php  echo $selected;?>>
				<?php echo $author->data->display_name?>
			</option>
           <?php
           }
			?>
			
			
			
		</select>
	</p>
	<?php

	 }
	 // data save in database
	 function crt_save_data_in_database($post_id,$post){
	 	if (!isset($_POST['ctr_author_nonce']) || !wp_verify_nonce($_POST['ctr_author_nonce'],basename(__FILE__)) ) {
		     		return $post_id;
		     	}

		  $post_slug="custom_post";

		  if ($post_slug!=$post->post_type) {
		     		return $post_id;
		     	}

		     	$author_name='';
		     	if (isset($_POST['u_author'])) {
		     		$author_name=sanitize_text_field($_POST['u_author']) ;
		     	}
		     	else
		     	{
		     		$author_name='';
		     	}
		     	update_post_meta($post_id,"author_name",$author_name);

	 }
	 add_action("save_post","crt_save_data_in_database",10,2);
	 // end save in database
	 
		     // end author metabox
		     // dashboard metabox

		     function ctr_dashboard_metabox(){

		     	  add_meta_box( 'dashboard_metabox_id',
					  'Custom dashboard Metabox',  
					  'ctr_custom_dashboard_metabox_function',
					  'dashboard',
					  'side',
					  'high'
		     	

				);


		     }
           add_action("wp_dashboard_setup","ctr_dashboard_metabox");
           //   dashboard callback function
           function ctr_custom_dashboard_metabox_function(){

           }
           // how to remove metabox in dashboard section
           // remove_meta_box( // remove_meta_box: this is predefine function 
           // 	"dashboard_quick_press", // this is a metabox id 
           // 	"dashboard",       // is the part/section to show the box
           // 	"side"//  position to show :this is a contant
           // );
           // end remove metabox

    //  generate the online metabox 
           /**
 * Generated by the WordPress Meta Box generator
 * at http://jeremyhixon.com/tool/wordpress-meta-box-generator/
 */

function crt_online_metabox_get_meta( $value ) {
	global $post;

	$field = get_post_meta( $post->ID, $value, true );
	if ( ! empty( $field ) ) {
		return is_array( $field ) ? stripslashes_deep( $field ) : stripslashes( wp_kses_decode_entities( $field ) );
	} else {
		return false;
	}
}

function crt_online_metabox_add_meta_box() {
	add_meta_box(
		'crt_online_metabox-crt-online-metabox',
		__( 'crt_online_metabox', 'crt_online_metabox' ),
		'crt_online_metabox_html',
		'custom_post',
		'side',
		'high'
	);
}
add_action( 'add_meta_boxes', 'crt_online_metabox_add_meta_box' );

function crt_online_metabox_html( $post) {
	wp_nonce_field( '_crt_online_metabox_nonce', 'crt_online_metabox_nonce' ); ?>

	<p>this is a section of metabox</p>

	<p>
		<label for="crt_online_metabox_enter_name"><?php _e( 'Enter name', 'crt_online_metabox' ); ?></label><br>
		<input type="text" name="crt_online_metabox_enter_name" id="crt_online_metabox_enter_name" value="<?php echo crt_online_metabox_get_meta( 'crt_online_metabox_enter_name' ); ?>">
	</p><?php
}

function crt_online_metabox_save( $post_id ) {
	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
	if ( ! isset( $_POST['crt_online_metabox_nonce'] ) || ! wp_verify_nonce( $_POST['crt_online_metabox_nonce'], '_crt_online_metabox_nonce' ) ) return;
	if ( ! current_user_can( 'edit_post', $post_id ) ) return;

	if ( isset( $_POST['crt_online_metabox_enter_name'] ) )
		update_post_meta( $post_id, 'crt_online_metabox_enter_name', esc_attr( $_POST['crt_online_metabox_enter_name'] ) );
}
add_action( 'save_post', 'crt_online_metabox_save' );

/*
	Usage: crt_online_metabox_get_meta( 'crt_online_metabox_enter_name' )
*/

    // end generate the online metabox       