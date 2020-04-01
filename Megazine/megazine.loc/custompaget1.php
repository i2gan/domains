<?php /* Template Name: CustomPageT1 */ ?>

<?php get_header(); ?>

    <section class="content-main">
      <div class="container content-main-container">
          <div class="col-md-8">
            <div class="all-articles">

              <div class="row">
                <div class="col-md-12">
                  <div class="article borderbottom">
                    <!-- <div class="article-img">
                      <img src="<?php bloginfo(template_url); ?>/img/article-img-1.jpg" alt="">
                    </div> -->
                    <!-- <div class="article-path">
                      <p>Branding / Print / Project</p>
                    </div> -->
                    <div class="article-heading">
                      <h3><?php wp_title("", true); ?></h3>
                    </div>
                    <!-- <div class="article-date">
                      <p>September 15, 2017 / Lucid Themes</p>
                    </div> -->
                    <div class="article-content">

	<?php
		// Подключаемся к базе данных
		$link = mysqli_connect('localhost', 'u636301773_court', 'thtveirfAEU03', 'u636301773_morn');
		if (mysqli_connect_errno())
		{
			echo "Ошибка в подключении к базе данных (".mysqli_connect_errno()."): ".mysqli_connect_error().".";
			exit();
		}

		// Функция получения массива данных из базы
		function get_quiz_data()
		{
			global $link;
			$sql = "SELECT * FROM php_quiz";
			$result = mysqli_query($link, $sql);
			$quiz = mysqli_fetch_all($result, 1);
			return $quiz;
		}

		// Получаем ответ из массива
		$quiz = get_quiz_data();
		$rnd = rand(0, count($quiz) - 1);
    echo "<p class='quiz'>";
		echo ($rnd + 1).". ".$quiz[$rnd]['answer'];
    echo "</p>";
	?>

                    </div>
                    <div>
                    <h4>To Do List</h4>
                    <p>
                      Найти все названия листингов главы 8, переобозвать отработынные листинги.
                    </p>
                    <p>
                      PHP 7 в подлиннике: страница 178
                    </p>
                    <p>
                      NOEMI - 5-й урок Кудлая. Данные вывел, нужно подкорректировать стили.
                    </p>
                    </div>
                    <div class="article-readmore">
                      <!-- <button type="button" class="btn read-more">Read more</button> -->
                    </div>
                  </div>
                </div>
              </div>
              

            </div>
          </div>

<?php get_sidebar(); ?>

<?php get_footer(); ?>
