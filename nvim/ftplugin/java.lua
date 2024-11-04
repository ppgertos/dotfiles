
require('jdtls').start_or_attach{ 
	cmd = {'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
	'-jar', '/home/przem/opt/jdt-language-server/plugins/org.eclipse.equinox.launcher_1.6.800.v20240513-1750.jar', 
	'-configuration', '/home/przem/opt/jdt-language-server/config_linux',
	'-data', vim.env.PWD .. '/../jdtls'},
	init_options = {
	    bundles = {
--            vim.fn.glob("path/to/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar", 1)
        }
    },
    root_dir = vim.fs.root(0,{'mvnw'})
}
