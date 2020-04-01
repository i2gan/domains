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
define( 'DB_NAME', 'Evans' );

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
define( 'AUTH_KEY',         '=uaU|Q|A)Nc)6BC>I_Y|ipfh-/6D<rX3J [GW~K,vx)4-6[Tqz ]DOz33~nLevf3' );
define( 'SECURE_AUTH_KEY',  '#Ai{ttiB@c6@1=81Ur6W^~Ovqa!wU26qV9N{1D%a1`^RPVi$5z6 [tI0(:w,9b}*' );
define( 'LOGGED_IN_KEY',    'j;^6$y!f.mQ_bnZGrWsX^&ipplXQE[Etgcq0o*H|rBFIU//B$}ryvy>d6BQ:vmgJ' );
define( 'NONCE_KEY',        'k%yhN@Bra/G-n9_ !~nhz-w?LgQ{WXeVzmda<{g|Er%mtQ/K 4Uz$63> e]TNZ.B' );
define( 'AUTH_SALT',        '^QaFsm29=hqoKz`Y?A0GoX%c%:mVX!r7+UWh>[{NzqR}?3r>?@fSK#(nx zc7*!;' );
define( 'SECURE_AUTH_SALT', '|&xoe2E`])e6MBc!gC$)0TS!yPUG.iB$]NJ=b:9+$O;^piTynYeO>%r&C%|IL1/^' );
define( 'LOGGED_IN_SALT',   '!sQ.Ym2K|G%,kHY2|pVff=5oLlg.yy9BDS/gm.iYGlAl-HK3^Z#WK,X2{JPD)kY5' );
define( 'NONCE_SALT',       'aaS:](Fc!2i;Xz}I]c=4cM.P|v9nIHm$^_&K5v{W<A-IvnbR1I0@X-)c4P$R[Lqs' );

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
