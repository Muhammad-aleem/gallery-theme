<?php

/**
 *  template Name: form
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Nineteen
 * @since 1.0.0
 */

get_header();
?>

<section id="primary" class="content-area">
	<main id="main" class="site-main">
		<h1>User Form </h1>
		<div class="msg"></div>
		<form class="usernmae" style="margin-left:20em;margin-bottom:2em;margin-top:2em">
			<p>Username</p>
			<input type="text" id="username" placeholder="Enter Name">
			<p>UserEmail</p>
			<input type="email" id="useremail" placeholder="Enter Email">
			<p>option</p>
			<select id="useroption">
				<option value="option One">option_One </option>
				<option value="option two">option_two </option>
				<option value="option three">option_three </option>
			</select>
			<p>Content</p>
			<textarea id="usertextarea" class="textclass">

			</textarea>
			<br>
			<input type="submit" value="Submit" class="btn" id="submitidbtn">
			

		</form>

	</main><!-- #main -->
</section><!-- #primary -->

<?php
get_footer();
