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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'gallery' );

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
define( 'AUTH_KEY',         '0a `8Dkew={9<Tf}0c//mQc;lZYZvO`CeGO{t._d.A%rNNr6;>vtR =u]y})NLu-' );
define( 'SECURE_AUTH_KEY',  '|Ep01/:w}(x2$a#7825nwB}ISZqvyn~RxWns]/?t4tWhU,!t28?m4H[S-.m1d^qI' );
define( 'LOGGED_IN_KEY',    'dy$39m#[{<X{<p:*X7[hShw*e.0sEF$/Hz2CmS,v4yCst/M&yFa=:AaiZz3*}WQL' );
define( 'NONCE_KEY',        'yh`mK#x~OUodsVd#~`UDGVTe7FQ!Uflz%dHsVA?d6],-bj~yrIB~tU;Q U-Dv|g&' );
define( 'AUTH_SALT',        'M9 YI4_MW3sk:!A57RFBYWHoV*G_gY.2gXwhOBaDpYkXO`2Jw]:Kg%U<Y7:39aaj' );
define( 'SECURE_AUTH_SALT', 'txDi,usw{_S5K+&,Ea[Ga8<?E8Lg>Ps|+=4(F<xVnN2!ES/$VZ`tfM7b7k/mD03,' );
define( 'LOGGED_IN_SALT',   'Ba(j;~laFZPqW+NQ~Nesx2H1kp%.h91pQD!CV)S8;*MHjMh$4jnXdwg8_;0HT}7Z' );
define( 'NONCE_SALT',       'ju4gD3}ex?<8`3{SXd~EW_.d{{JdLZMk2 p(]2BzFtTC^6/j5cL-2AbX-z70!EKB' );

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
