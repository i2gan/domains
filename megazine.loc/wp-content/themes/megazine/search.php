<?php printf( __( 'Результаты поиска: %s', 'twentyten' ), '' . get_search_query() . '' ); // Динамический заголовок поиска?>
                        <?php if ( have_posts() ) while ( have_posts() ) : the_post(); // Начало цикла ?>
			
			<div class="category-text">
                         <h3 class="entry-header"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                         <div class="date"><?php the_time('F j, Y'); // Дата создания поста ?></div>
<?php if ( has_post_thumbnail() ) { the_post_thumbnail(); } // Проверяем наличие миниатюры, если есть показываем ?>
				<?php the_content(); // Содержимое страницы ?>
			</div>
                                <?php endwhile; // Конец цикла ?> 
<div class="pagination"><?php // Пагинация
global $wp_query;
$big = 999999999;
echo paginate_links( array(
	'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
	'format' => '?paged=%#%',
	'current' => max( 1, get_query_var('paged') ),
	'type' => 'list',
	'prev_text'    => __('« Назад'), 
    'next_text'    => __('Вперед »'),
	'total' => $wp_query->max_num_pages
) );
?></div>    