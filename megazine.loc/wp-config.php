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
define( 'DB_NAME', 'megazine' );

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
define( 'AUTH_KEY',         '@m/-Xe>UJ;xfWL!fk~yZH?9=}Pr+}bt)orb+n@y58,<[d_NiX2xTW:/0:O4$n71]' );
define( 'SECURE_AUTH_KEY',  'XCMf*O*3UH>GiS0`.]7YlGyJFk.YZL*al$,%[*znRLZJPEv:TC.)EQc}/-WL6Fj)' );
define( 'LOGGED_IN_KEY',    '.q|YfvxXr60F@aqx1Rci5ORywZ?BFRC:d6*ptZ2Hs[as$%O9~rcIA`V0:9_Wf^t$' );
define( 'NONCE_KEY',        'vQF:w&vOXHDla|h`6j24Re~IR}M5iyHI>dr6A=&gF::TeMa.UyvsUE.@7Dx7Tq7p' );
define( 'AUTH_SALT',        'O@L{rr$i_&bfR(UfK#X~,)nt{ph8V _V:@?oH(1y55i[UMc= 3%bq!C2vC3N3T?u' );
define( 'SECURE_AUTH_SALT', '5zP&sA9l1wUo+vsK:GL:DUTmZd9yZbK8D:uv+2+^0Lz2E0OwMsT9?[!NwXr}&^<k' );
define( 'LOGGED_IN_SALT',   'ayJO9-O%qLaO#jii C?ohr4=LCWK{YJcA~j_D$TC#8u_xBMKAgH6gc:$O3$-#aH ' );
define( 'NONCE_SALT',       '+4Hn9%1@ .d2S/)UK,3)+[+A~*s]7XL?Ou/sAB2`e9,-UbZ{P@9`7>Ud!Yx.e `(' );

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
