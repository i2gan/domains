<?php get_header(); ?>

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h5>Expensive but the best</h5>
                            <h1>Deliciousness jumping into the mouth</h1>
                            <p>Together creeping heaven upon third dominion be upon won't darkness rule land
                                behold it created good saw after she'd Our set living. Signs midst dominion
                                creepeth morning</p>
                            <div class="banner_btn">
                                <div class="banner_btn_iner">
                                    <a href="#" class="btn_2">Reservation <img src="<?php bloginfo('template_url'); ?>/img/icon/left_1.svg" alt=""></a>
                                </div>
                                <a href="https://www.youtube.com/watch?v=pBFQdxA-apI" class="popup-youtube video_popup">
                                    <span><img src="<?php bloginfo('template_url'); ?>/img/icon/play.svg" alt=""></span> Watch our story</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->



<!--::exclusive_item_part start::-->
<?php
    $id = 3;
    $exclusive = new WP_Query(array( 'cat' => $id, 'posts_per_page' => 3 ));
?>

<?php if ( $exclusive->have_posts() ) : ?>

    <section class="exclusive_item_part blog_item_section">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Popular Dishes</p>
                        <h2>Our Exclusive Items</h2>
                    </div>
                </div>
            </div>
            <div class="row">

    <?php while ( $exclusive->have_posts() ) : $exclusive->the_post(); ?>
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <!-- <img src="<?php bloginfo('template_url'); ?>/img/food_item/food_item_1.png" alt=""> -->
                            <?php the_post_thumbnail(); ?>
                        </div>
                        <div class="single_blog_text">
                            <h3><?php the_title(); ?></h3>
                            <!-- <p>Was brean shed moveth day yielding tree yielding day were female and </p> -->
                            <?php the_content(); ?>
                            <a href="<?php the_permalink(); ?>" class="btn_3">Read More <img src="<?php bloginfo('template_url'); ?>/img/icon/left_2.svg" alt=""></a>
                        </div>
                    </div>
                </div>
<?php endwhile; ?>
            </div>
        </div>
    </section>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>
<!--::exclusive_item_part end::-->

    
<?php 
    include 'template-parts/about-part.php' 
?>

    <!-- intro_video_bg start-->
    <section class="intro_video_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro_video_iner text-center">
                        <h2>Expect The Best</h2>
                        <div class="intro_video_icon">
                            <a id="play-video_1" class="video-play-button popup-youtube"
                                href="https://www.youtube.com/watch?v=pBFQdxA-apI">
                                <span class="ti-control-play"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- intro_video_bg part start-->

<?php include 'template-parts/food-menu-2.php'; ?>

<?php include 'template-parts/chefs.php' ?>

    <!--::regervation_part start::-->
    <section class="regervation_part section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Reservation</p>
                        <h2>Book A Table</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="regervation_part_iner">
                        <form>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" id="inputEmail4" placeholder="Name *">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="password" class="form-control" id="inputPassword4"
                                        placeholder="Email address *">
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="Select">
                                        <option value="1" selected>Persons *</option>
                                        <option value="2">Number of guests 1</option>
                                        <option value="3">Number of guests 2</option>
                                        <option value="4">Number of guests 3</option>
                                        <option value="5">Number of guests 4</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="pnone" placeholder="Phone number *">
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="input-group date">
                                        <input id="datepicker" type="text" class="form-control" placeholder="Date *" />
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="Select2">
                                        <option value="" selected>Time *</option>
                                        <option value="1">8 AM TO 10AM</option>
                                        <option value="1">10 AM TO 12PM</option>
                                        <option value="1">12PM TO 2PM</option>
                                        <option value="1">2PM TO 4PM</option>
                                        <option value="1">4PM TO 6PM</option>
                                        <option value="1">6PM TO 8PM</option>
                                        <option value="1">4PM TO 10PM</option>
                                        <option value="1">10PM TO 12PM</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Textarea" rows="4"
                                        placeholder="Your Note *"></textarea>
                                </div>
                            </div>


                            <div class="regerv_btn">
                                <a href="#" class="btn_4">Book A Table</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::regervation_part end::-->

<?php include 'template-parts/review.php'; ?>

    <!--::exclusive_item_part start::-->
    <section class="blog_item_section blog_section section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Recent News</p>
                        <h2>Latest From Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="<?php bloginfo('template_url'); ?>/img/blog/blog_1.png" alt="">
                        </div>
                        <div class="single_blog_text">
                            <div class="date">
                                <a href="#" class="date_item">Apr 06, 2019 </a>
                                <a href="#" class="date_item"> <span>#</span> Food News </a>
                            </div>
                            <h3><a href="blog.html">Adama kind deep gatherin first over fter his great</a></h3>
                            <a href="#" class="btn_3">Read More <img src="<?php bloginfo('template_url'); ?>/img/icon/left_1.svg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="<?php bloginfo('template_url'); ?>/img/blog/blog_2.png" alt="">
                        </div>
                        <div class="single_blog_text">
                            <div class="date">
                                <a href="#" class="date_item">Apr 06, 2019 </a>
                                <a href="#" class="date_item"> <span>#</span> Food News </a>
                            </div>
                            <h3><a href="blog.html">Adama kind deep gatherin first over fter his great</a></h3>
                            <a href="#" class="btn_3">Read More <img src="<?php bloginfo('template_url'); ?>/img/icon/left_1.svg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="<?php bloginfo('template_url'); ?>/img/blog/blog_3.png" alt="">
                        </div>
                        <div class="single_blog_text">
                            <div class="date">
                                <a href="#" class="date_item">Apr 06, 2019 </a>
                                <a href="#" class="date_item"> <span>#</span> Food News </a>
                            </div>
                            <h3><a href="blog.html">Adama kind deep gatherin first over fter his great</a></h3>
                            <a href="#" class="btn_3">Read More <img src="<?php bloginfo('template_url'); ?>/img/icon/left_1.svg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 d-none d-sm-block d-lg-none">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="<?php bloginfo('template_url'); ?>/img/blog/blog_1.png" alt="">
                        </div>
                        <div class="single_blog_text">
                            <div class="date">
                                <a href="#" class="date_item">Apr 06, 2019 </a>
                                <a href="#" class="date_item"> <span>#</span> Food News </a>
                            </div>
                            <h3><a href="blog.html">Adama kind deep gatherin first over fter his great</a></h3>
                            <a href="#" class="btn_3">Read More <img src="<?php bloginfo('template_url'); ?>/img/icon/left_1.svg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::exclusive_item_part end::-->

<?php get_footer(); ?>