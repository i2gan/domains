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
define( 'DB_NAME', 'ideal' );

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
define( 'AUTH_KEY',         'B-VVQ^i;eG)kHHa)2ugLcUYS?Dan#`S[m62}Y-W=nFq1+!]I6dJh&qzfy-sl$nDr' );
define( 'SECURE_AUTH_KEY',  '>t|.o1WLJoRAiKp{ALqd+Db!:nYw6o:SJL|Ywi*+!e%O7E3K}wLXjPgDE>!Ff|Xv' );
define( 'LOGGED_IN_KEY',    '>kAA4egKB>1:h^@/io],^osb=a{Zbon)dpGf+Z4khu|dir59Z_NGa6#mFW0V[OMN' );
define( 'NONCE_KEY',        'kFc4}h.nacgMg%T0wt@_QJbWcom_`s}|?C[?[]^`7-h7Ejz5+m;}m>[2R,-kYRbx' );
define( 'AUTH_SALT',        'Kv7Evd<bB1=ahblfu=-/FCK1s= Z|%=S*-&)p#$zzPd;5Y_K#ac2*a2TWK![N+F[' );
define( 'SECURE_AUTH_SALT', 'LMNR+DNPjST=+]1*;I9pa(H 4oB.lWWf{#0ZTu^IL1mch[1?t`/ a|LBlTVh^vt^' );
define( 'LOGGED_IN_SALT',   '|Lmzi~#VZH^3ziQE_fAaUTIRuOrnoXv[YX8]7|ki</pV&/XVOM9Od*lNTTm&GUsV' );
define( 'NONCE_SALT',       'F(G5ks9.IFb7[!z>kAW1DrQsc$Xl5Jh=4cjWUqTGcX0H[^dFO%q[LY%j,t@A3H9~' );

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
