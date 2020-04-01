<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?php bloginfo( 'name' ); wp_title( $sep = '|' ) ?></title>
    <link rel="icon" href="<?php bloginfo('template_url'); ?>/img/favicon.png">
    <?php wp_head(); ?>
</head>

<body>
    <!--::header part start::-->
    <header class="main_menu <?php if (is_front_page()) echo ' home_menu'; ?> ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="/"> <img src="<?php bloginfo('template_url'); ?>/img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
<?php
    wp_nav_menu( array(
        'theme_location'  => 'header_menu',
        'menu'            => 'navbar-nav',
        'container'       => ''
    ) );
?>
                         
                        </div>
                        <div class="menu_btn">

<?php
    $cls = 'single_page_btn';
    if (is_front_page()) {
        $cls = 'btn_1';
    }
?>

                            <a href="#" class="<?php echo $cls; ?> d-none d-sm-block">book a tabel</a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->