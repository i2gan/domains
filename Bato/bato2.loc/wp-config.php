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
define('DB_NAME', 'bato_er');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Vogir|F|x$1yvl[{9yu(VcQ9 5)r+=77`y7hi40x9^Z]gtG*r?WXcLo?1Kl:lc,G');
define('SECURE_AUTH_KEY',  'ZXdJz5y[`WWOJ6{=-ijl 37U.[m~V2a=l5Ol#t^h%gz+ih@oQtkjR,j_~uwPP#tO');
define('LOGGED_IN_KEY',    '4.^gY.fx&#-&uB,e2jiF<6O5rUr133BM:LI$8hW1KVYL2?pgc(?oy`b7P{}Zk^c ');
define('NONCE_KEY',        '-:]M*5u&_wO*Mm^H|;0JOW-1E[k!`(Q.JOV|3XHJv~;h!Y-IvvP4}pHJoe{GzjjH');
define('AUTH_SALT',        '}Av$MIOt]+>j9Fv8<HSac]Xw`9#uZ?WlR3h?1aTKcav8I$Mje|go]R0eY=-|+Cgd');
define('SECURE_AUTH_SALT', 'V+klW5`9.I=Y>%SC:5`!zi?7Wv@o%?<cV^=2ez=VQH2vGpyfcEH[]EMLfI2)$[y1');
define('LOGGED_IN_SALT',   'Tv$-Fmw3fCbVm;^O<^A@IyU18CeQ5Zq]&5Js+<:euJA%Pj0~,Z6&%vC3s%t%v8x9');
define('NONCE_SALT',       'RjjKrdWoq<pK&uGv5%2+/$$<A~Ks~$5t)f3_RsJF-BYeL6][-RC&Jn~%2!Hj-+8h');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
