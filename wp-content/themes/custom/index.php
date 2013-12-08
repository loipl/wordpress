<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * For example, it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Twelve
 * @since Twenty Twelve 1.0
 */

get_header(); ?>

	<!--container-->
            <div class="container">
                
                <?php if ( have_posts() ) : ?>

			<?php /* Start the Loop */ ?>
			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', get_post_format() ); ?>
			<?php endwhile; ?>

			<?php twentytwelve_content_nav( 'nav-below' ); ?>

		<?php else : ?>

			<article id="post-0" class="post no-results not-found">

			<?php if ( current_user_can( 'edit_posts' ) ) :
				// Show a different message to a logged-in user who can add posts.
			?>
				<header class="entry-header">
					<h1 class="entry-title"><?php _e( 'No posts to display', 'twentytwelve' ); ?></h1>
				</header>

				<div class="entry-content">
					<p><?php printf( __( 'Ready to publish your first post? <a href="%s">Get started here</a>.', 'twentytwelve' ), admin_url( 'post-new.php' ) ); ?></p>
				</div><!-- .entry-content -->

			<?php else :
				// Show the default message to everyone else.
			?>
				<header class="entry-header">
					<h1 class="entry-title"><?php _e( 'Nothing Found', 'twentytwelve' ); ?></h1>
				</header>

				<div class="entry-content">
					<p><?php _e( 'Apologies, but no results were found. Perhaps searching will help find a related post.', 'twentytwelve' ); ?></p>
					<?php get_search_form(); ?>
				</div><!-- .entry-content -->
			<?php endif; // end current_user_can() check ?>

			</article><!-- #post-0 -->

		<?php endif; // end have_posts() check ?>
                        
                 <br/><br/><br/>
            	<h3 class="mtit"><a href="#">FEATURED TRIAL SESSION | Christina D.</a></h3>
                <div class="cont">
                	<div class="collapsed_comments">
                    	2013 FEBRUARY 27 | BY <span class="red">JASON MUSCAT</span> | COMMENT<span class="red">(4)</span>
                    </div>
                    <ul class="social_item clearfix">
                        <li class="tweet"><a href="#"><img src="wp-includes/images/data/info_tweet.jpg" alt="" /></a></li>
                        <li class="face"><a href="#"><img src="wp-includes/images/data/info_face.jpg" alt="" /></a></li>
                        <li class="google"><a href="#"><img src="wp-includes/images/data/info_g+.jpg" alt="" /></a></li>
                        <li class="bi"><a href="#"><img src="wp-includes/images/data/info_bi.jpg" alt="" /></a></li>
                    </ul>
                    <p class="img"><img src="wp-includes/images/data/blog_img_01.jpg" alt="" /></p>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    <a class="read_more" href="#">Read more »</a>
                </div>
               
<!--                <div class="PageNav">
                	<a class="current" href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">...</a>
                    <a href="#">40</a>
                    <a href="#">41</a>
                    <a href="#">Next</a>
                </div>-->
            </div><!--//container-->

<?php get_sidebar(); ?>
<?php get_footer(); ?>