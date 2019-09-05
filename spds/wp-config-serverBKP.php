<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'wordpress');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'wordpress');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '233a8e75c73181574e137cacbb56ac065f97447e316875fa');

/** Nome do host do MySQL */
define('DB_HOST', '159.203.181.42:3306');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'XFYfJo0*B<M[e/V:Rbc)w%D[af29JI?)fL_9:G*WhjSqb.E9R7D/#Z+j^%u+8)I<');
define('SECURE_AUTH_KEY',  'WDGOP}++EO];^!5_V2Tlz9l]s!Vkm`K?hGOoDH#hAl*!:PEa^D.8|7g_|+q250Ao');
define('LOGGED_IN_KEY',    'Xk3wDHUR)T2I+IALc~$3;Q.Bg}#lLzjr@w{m !3EEl&b2*;IA;2)=;@pV/XW?^m(');
define('NONCE_KEY',        'D^zXOJ{eC})f|(f?aZYuX.&rQF]em5-LcRGGu0GLDYIH ?hHo2mV(~hlcDhT7pzg');
define('AUTH_SALT',        'C(En]=(nMs-eQ]GM|a,FaDHF.lw>N%n5,0EtkqJ{*7k,JF(;piD(;z7S{iQ{T?yQ');
define('SECURE_AUTH_SALT', 'iJz}:XUiu7E)mc*uGw1~&hqLWghWIs]k_tmLi|60=G*&<&duEr0H2I>D+oXd_+:Q');
define('LOGGED_IN_SALT',   'n)F&*YB#*1sgFYgTtrq52Ev: uT<ope,GQrQz:5q2eq/Wxog7E#JB?#77dlIeB&]');
define('NONCE_SALT',       '`sj(Vd;]vc-8n0V&IIL4S;O?M`K:MSNK*gc4-}}0nv<B~^/zbR6,u{<(q)zq.5-2');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
//define('WP_DEBUG', true);
//define('WP_DEBUG_DISPLAY', false);
//define('WP_DEBUG_LOG', true);

define('WP_SITEURL', 'http://127.0.0.1/Workspace/active/spds');
define('WP_HOME', 'http://127.0.0.1/Workspace/active/spds');

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
