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
define( 'DB_NAME', 'travello2' );

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
define( 'AUTH_KEY',         '^G%JGHZkPa{7Gi}7eMNh<&DQ:8QcZMMs hsfgJ;#s`/fm>[pY-p=.vZmdKRpW*8r' );
define( 'SECURE_AUTH_KEY',  'EIY00Uaj/wp!eAu?P /~-NK2?q:QDqcynY/fhJX}WsY0TB.Dyq%7iy?emdP@a:3<' );
define( 'LOGGED_IN_KEY',    'K_]jL5bu@`W$68a25hE2ht738ET064nhs[OFI;z]twduh)P>R([?VfyIPL?Fp2k3' );
define( 'NONCE_KEY',        'SNM}.cgI[5WRQaVQgOjl]:?cVWq3XnTy.`w#xnp~*<!9+{@2`lZzBzN7B*?9sL}J' );
define( 'AUTH_SALT',        '8Kr.)Csziok9Z_9^5%J~,+$QkLF>>VRXf[s]WxteFlWOb*~fo(}`3[wK3pCC3I[s' );
define( 'SECURE_AUTH_SALT', '*)V^HS8= h C3(+%7x;NvXO%]1:iEjs_6onmg2FI0|}#NNzo!R3`CCFRzZA6 JT0' );
define( 'LOGGED_IN_SALT',   'oi`DSB r3i8D8RHR)h?lHnK&O+C+nMdahJxK[ld]*#Ri~Eo@)HjKl_WNrwh239o^' );
define( 'NONCE_SALT',       'z,DMA3XZe{P)oE?SmktOEvNubD#1-K|Ts=NAe$nh&jah[lHAEv~]k_2&;:]t(Hu2' );

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
