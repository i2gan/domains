<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'dingo' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'c_Z05%)Iu=Wx)1<!0jh_j#U5!IN)=CZP*(n]~ml2JT?(^6k(R[~^./A:k=OGegiL' );
define( 'SECURE_AUTH_KEY',  'Lq *~-1,D;uAAIPihd*5/3oz;h9@(QDp1ZBeeinQ,[F]R*&=how28ZrZB}Ka<iN+' );
define( 'LOGGED_IN_KEY',    'u<r,?6palaxxzEa#&jP}/7N(&{$;45U*Fxx~FMlWxutm_#h^(d3O&T[>U]P`}c$[' );
define( 'NONCE_KEY',        '<p/H/yIuFot?XxJKfE18] g49_FxUKHlN]{;Sxy8|2+DLb3#1B92TxVN`~_8ccQ]' );
define( 'AUTH_SALT',        'N$E+Rn5U`ehJkJouPkg;+Uw&LZJ-%oOwzt<KBe/F6n>7,OlGA.3O!7-aI`fFyI/K' );
define( 'SECURE_AUTH_SALT', 'u-?B%$jIcZ8^ZtK9CkJ7FM0ChE6j*vG@jtuwm2#]ipbL=~$1+^Ud@81(fkFkg!*H' );
define( 'LOGGED_IN_SALT',   '+k&a^1F7k-?O$B[P6VZOZE=ze%huA2_lw5c2^A^MSdoM4atV3i.cy|I&(X,(No&!' );
define( 'NONCE_SALT',       'VsFkTk`@%`1{z7kjLe%WyrIF7M($+ mt{/5DyM7&vcrNKxFt|rz58nIKP6Oe$dZ_' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
