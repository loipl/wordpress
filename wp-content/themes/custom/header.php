<!DOCTYPE html>
<html lang="ja" dir="ltr">
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	var d= document;
	if(navigator.userAgent.indexOf('iPhone') > -1) d.write('<meta name="viewport" content="width=device-width, initial-scale=1.0" />');
	else if(navigator.userAgent.indexOf('iPad') > -1) d.write('<meta name="viewport"  content="width=1024, maximum-scale=1, user-scalable=0">');
	else d.write('<meta name="viewport" content="width=device-width, target-densitydpi=device-dpi, initial-scale=1.0" />');
	</script>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />

<link href="../../../wp-includes/css/style_old.css" type="text/css" rel="stylesheet" />
<script src="../../../wp-includes/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="../../../wp-includes/js/common.js" type="text/javascript"></script>
<script src="../../../wp-includes/js/menu.js" type="text/javascript"></script>
<!--[if lt IE 10]>
    <script type="text/javascript" src="htc/PIE.js"></script>
<![endif]-->
<!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
<!--[if IE]>
    <script type="text/javascript">
        document.createElement('header');
        document.createElement('section');
        document.createElement('nav');
        document.createElement('aside');
        document.createElement('footer');
        document.createElement('article');
    </script>
<![endif]-->
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    <!--wrapper-->
    <div id="wrapper">
    	<div id="header">
        	<h1 class="logo"><a href="<?php bloginfo('url');?>"><img src="../../../wp-includes/images/common/logo.jpg" alt="" /></a></h1>
                
            <div class="navi">
            	<ul class="sub_navi clearfix">
                	<li><a href="<?php bloginfo('url');?>"><span><img src="../../../wp-includes/images/common/icon_home.png" alt="home" /></span>Home</a></li>
                    <li><a href="/contact/"><span><img src="../../../wp-includes/images/common/icon_contact.png" alt="mesage" /></span>Contact</a></li>
                    <li><a href="/faq/"><span><img src="../../../wp-includes/images/common/icon_faq.png" alt="faq" /></span>FAQ</a></li>
                </ul>
                <nav id="site-navigation" class="main-navigation" role="navigation">
			<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_class' => 'main_navi', 'menu' => 'main_menu' ) ); ?>
		</nav><!-- #site-navigation -->
<!--                <ul class="main_navi clearfix">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">The Experts</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li><a href="#">Service</a></li>
                    <li><a href="#">Blog</a></li>
                </ul>-->
                <p id="SpMain_navi">
                	<span class="icon_bar">line</span>
                    <span class="icon_bar">line</span>
                    <span class="icon_bar">line</span>
                </p>
                <!--hd_shop_menu -->
                <ul id="Sp_navi">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">The Experts</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li><a href="#">Service</a></li>
                    <li><a href="#">Blog</a></li>
                </ul><!-- /hd_shop_menu -->
            </div>
        </div>
		<?php if (!is_page()) :?>
        <h2 class="tit"><img src="../../../wp-includes/images/data/blog_tit.jpg" alt="The  Beautiful You Makeup &amp; Hair Blog" /></h2>
		<?php endif;?>
        <div id="content" class="blog clearfix">
<!--        <div id="content" class="sub_layout clearfix">-->