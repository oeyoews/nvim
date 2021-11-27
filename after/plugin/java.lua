--vim.cmd[[

--nnoremap <A-CR> <Cmd>lua require('jdtls').code_action()<CR>
--vnoremap <A-CR> <Esc><Cmd>lua require('jdtls').code_action(true)<CR>
--nnoremap <leader>r <Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>

--nnoremap <A-o> <Cmd>lua require'jdtls'.organize_imports()<CR>
--nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
--vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
--nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
--vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
--vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>


--nnoremap <leader>df <Cmd>lua require'jdtls'.test_class()<CR>
--nnoremap <leader>dn <Cmd>lua require'jdtls'.test_nearest_method()<CR>
--]]


-----
---- java
-----
--local config = {
  ---- The command that starts the language server
  ---- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  --cmd = {

    ---- 💀
    --'java', -- or '/path/to/java11_or_newer/bin/java'
            ---- depends on if `java` is in your $PATH env variable and if it points to the right version.

    --'-Declipse.application=org.eclipse.jdt.ls.core.id1',
    --'-Dosgi.bundles.defaultStartLevel=4',
    --'-Declipse.product=org.eclipse.jdt.ls.core.product',
    --'-Dlog.protocol=true',
    --'-Dlog.level=ALL',
    --'-Xms1g',
    --'--add-modules=ALL-SYSTEM',
    --'--add-opens', 'java.base/java.util=ALL-UNNAMED',
    --'--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    ---- 💀
    ----'-jar', '/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_VERSION_NUMBER.jar',
    ----TODO
    --'-jar', '/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher.gtk.linux.*.jar',
         ---- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
         ---- Must point to the                                                     Change this to
         ---- eclipse.jdt.ls installation                                           the actual version


    ---- 💀
    --'-configuration', '/usr/share/java/jdtls/config_linux',
                    ---- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
                    ---- Must point to the                      Change to one of `linux`, `win` or `mac`
                    ---- eclipse.jdt.ls installation            Depending on your system.


    ---- 💀
    ---- See `data directory configuration` section in the README
    ---- TODO
    --'-data', '/home/oeyoews/tmp/'
  --},

  ---- 💀
  ---- This is the default if not provided, you can remove it. Or adjust as needed.
  ---- One dedicated LSP server & client will be started per unique root_dir
  --root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

  ---- Here you can configure eclipse.jdt.ls specific settings
  ---- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  ---- for a list of options
  --settings = {
    --java = {
    --}
  --}
--}

--require('jdtls').start_or_attach(config)
