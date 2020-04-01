<?php
/*
Template Name: Contact Page
*/
?>

<?php get_header(); ?>


<div id="colorlib-contact">
    <div class="container">
        <div class="row text-center">
            <h2 class="bold">Contact</h2>
        </div>
        <div class="row">
            <div class="col-md-12 col-md-offset-0">
                <div class="row">
                    <div class="col-md-4 animate-box">
                        <h3>My Address</h3>
                        <ul class="contact-info">
                            <li><span><i class="icon-map5"></i></span>88 West 21th Street, Suite 721 New York NY 10016</li>
                            <li><span><i class="icon-phone4"></i></span>+ 1235 2355 98</li>
                            <li><span><i class="icon-envelope2"></i></span><a href="#">info@yoursite.com</a></li>
                            <li><span><i class="icon-globe3"></i></span><a href="#">www.yoursite.com</a></li>
                        </ul>
                    </div>
                    <div class="col-md-7 col-md-push-1 animate-box">
                        <div class="row">

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <?php the_content(); ?>
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php include('bato-footer.php'); ?>

</div>

<?php include('link_js.php'); ?>