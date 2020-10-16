<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'banana' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'L%4V?=1S~fxo/sM,[#CZcHt+ly,s7kUF9{N~$^Sn^aCY-o@kd/%fh:1r?-YSZPD|' );
define( 'SECURE_AUTH_KEY',  'o=P8|creD}WVd;Eb#CkHOHg%Nq6LlPy7}$2GAN@VU8yK FFz<?4u`sf47aSv=$qd' );
define( 'LOGGED_IN_KEY',    'V?HJ6CZ#dTN].P}O2^Vpk$~*(7#eYKYs-CSyH~2?aL^+^x{|X}~gm|~+TAl$Cn$Q' );
define( 'NONCE_KEY',        'u}X_%m7SxHw$E%XNC^)7t/x!5_LmHGN<n7%S2}Z4NKqc`[o;WQ>64FBdQ TmR<)*' );
define( 'AUTH_SALT',        '0ZHDa$I]cPViPN_/0SP~G(L#B/._=*qj$7q0loyhLfM:^J$DrS<9CaW2[E+0y* K' );
define( 'SECURE_AUTH_SALT', 'le+Mb<[z5c_lH]Cw p$1gauEsH!*!$|dvOIOFguI$AH4jP+=aDK:#-]eNa9G^BBU' );
define( 'LOGGED_IN_SALT',   '@+N|S|6xUo>>1JA3$$)S(?5}rkYL~eBe#o;VPL9#}A*hjf-`@td$[W`:$sQ}(<w{' );
define( 'NONCE_SALT',       '2oOxxr).sL?|g4V:yw;RHvIdHsXpui]#7H1qGROe[>wS2Jh)QUn_`X[q1-e4#CD#' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
