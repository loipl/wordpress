<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package WordPress
 * @subpackage Twenty_Twelve
 * @since Twenty Twelve 1.0
 */
?>

<!--	<article id="post-<?php // the_ID(); ?>" <?php // post_class(); ?>>
		<?php // if (!is_front_page()) : ?>
		<header class="entry-header">
			<?php // if ( ! is_page_template( 'page-templates/front-page.php' ) ) : ?>
			<?php // the_post_thumbnail(); ?>
			<?php // endif; ?>
			<?php // if ( ! is_home()) :?>
				<h1 class="entry-title"><?php // the_title(); ?></h1>
			<?php // endif;?>
		</header>
		<?php // endif;?>
		
		<div class="entry-content">
			<?php // the_content(); ?>
			<?php // wp_link_pages( array( 'before' => '<div class="page-links">' . __( 'Pages:', 'twentytwelve' ), 'after' => '</div>' ) ); ?>
		</div> .entry-content 
		<footer class="entry-meta">
			<?php // edit_post_link( __( 'Edit', 'twentytwelve' ), '<span class="edit-link">', '</span>' ); ?>
		</footer> .entry-meta 
	</article> #post -->
	
	<?php $page_title = get_the_title();
        if (strpos($page_title,'Wedding') !== false || strpos($page_title,'Fashion') !== false || strpos($page_title,'Before and After') !== false) : ?>
            <div class="portfolio" id="post-<?php the_ID(); ?>">
	<?php elseif (is_front_page()) : ?>
			<div class="homepage" id="post-<?php the_ID(); ?>">
	<?php else :?>
            <div class="container" id="post-<?php the_ID(); ?>">
                <header class="entry-header">
                        <?php if ( ! is_page_template( 'page-templates/front-page.php' ) ) : ?>
                        <?php the_post_thumbnail(); ?>
                        <?php endif; ?>
                        <?php if ( ! is_home()) :?>
                                <h1 class="entry-title"><?php the_title(); ?></h1>
                        <?php endif;?>
                </header>
	<?php endif;?>
	
		<div class="cont">
			<?php the_content(); ?>
			<?php wp_link_pages( array( 'before' => '<div class="page-links">' . __( 'Pages:', 'twentytwelve' ), 'after' => '</div>' ) ); ?>
		</div>
		<footer class="entry-meta">
			<?php edit_post_link( __( 'Edit', 'twentytwelve' ), '<span class="edit-link">', '</span>' ); ?>
		</footer>
	</div>
