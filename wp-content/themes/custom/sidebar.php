<div class="right_bar">
	<h4 class="mtit">Follow us</h4>
	<ul class="fllow_us clearfix">
		<li><a href="#"><img src="../../wp-includes/images/common/icon_face.png" alt="" /></a></li>
		<li><a href="#"><img src="../../wp-includes/images/common/icon_Twin.png" alt="" /></a></li>
		<li><a href="#"><img src="../../wp-includes/images/common/icon_P.png" alt="" /></a></li>
		<li><a href="#"><img src="../../wp-includes/images/common/icon_in.png" alt="" /></a></li>
		<li><a href="#"><img src="../../wp-includes/images/common/icon_g+.png" alt="" /></a></li>
	</ul>
	<?php if ( is_active_sidebar( 'sidebar-1' ) ) : ?>
		<div id="secondary" class="widget-area" role="complementary">
			<?php dynamic_sidebar( 'sidebar-1' ); ?>
		</div><!-- #secondary -->
	<?php endif; ?>
</div><!--//left bar-->