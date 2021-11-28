-- 加载插件
local cmp = require("cmp")
local luasnip = require("luasnip")
local lspconfig = require("lspconfig")
local lsp_colors = require("lsp-colors")
--local saga = require("lspsaga")

local symbol_map = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

-- lsp cmp 配置
cmp.setup {
  preselect = cmp.PreselectMode.None,
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  documentation = {
    --border = { "", "", "", " ", "", "", "", " " },
    --winhighlight = "NormalFloat:CmpDocumentation,FloatBorder:CmpDocumentationBorder",
    --maxwidth = math.floor((WIDE_HEIGHT * 2) * (vim.o.columns / (WIDE_HEIGHT * 2 * 16 / 9))),
    --maxheight = math.floor(WIDE_HEIGHT * (WIDE_HEIGHT / vim.o.lines)),
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    winhighlight = "Normal:#51A266,NormalNC:#0C0C0C",
    maxwidth = 80,
    maxheight = 20,
  },
  formatting = {
    format = function(entry, vim_item)
      --lspkind.cmp_format({with_text = false, maxwidth = 50})
      vim_item.kind = string.format(
        "%s %s",
        --"%s ",
        symbol_map[vim_item.kind],
        vim_item.kind
      )
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        luasnip  = "[SPT]",
        nvim_lua = "[LUA]",
        buffer   = "[BUF]",
        path     = "[PTH]",
        cmdline  = "[CMD]",
        look     = "[LOK]",
        --spell    = "[SPL]",
        emoji    = "[EMJ]",
        calc     = "[CLC]",
      })[entry.source.name]
      vim_item.abbr = string.sub(vim_item.abbr, 1, 80)

      return vim_item
    end,
  },
  mapping = {
    --['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      else
        cmp.complete()
      end
    end, { 'i', 'c' }),
    --['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item()
      else
        cmp.complete()
      end
    end, { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-j>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      --select = true,
      i = cmp.mapping.confirm({ select = true }),
      c = cmp.mapping.confirm({ select = false }),
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      --elseif luasnip.expand_or_jumpable() then
      --  luasnip.expand_or_jump()
      elseif luasnip.expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      --elseif luasnip.jumpable(-1) then
      --  luasnip.jump(-1)
      elseif luasnip.jumpable(-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'nvim_lua' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'cmdline' },
    { name = 'look' },
    --{ name = 'spell' },
    { name = 'emoji' },
    { name = 'calc' },
  },
  experimental = {
    native_menu = false,
    ghost_text = true,
  },
  --sorting = {
  --  comparators = {
  --    cmp.config.compare.offset,
  --    cmp.config.compare.exact,
  --    cmp.config.compare.score,
  --    require("cmp-under-comparator").under,
  --    cmp.config.compare.kind,
  --    cmp.config.compare.sort_text,
  --    cmp.config.compare.length,
  --    cmp.config.compare.order,
  --  },
  --},
}

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local sul = "sumneko_lua"
local servers = { 'clangd', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
  if lsp == sul then
    local sumneko_root_path = "/usr/share/lua-language-server"
    local sumneko_binary = "/usr/bin/lua-language-server"
    local runtime_path = vim.split(package.path, ";")
    table.insert(runtime_path, "lua/?.lua")
    table.insert(runtime_path, "lua/?/init.lua")
    lspconfig.sumneko_lua.setup {
      cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua", "--locale=zh-cn"},
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
            -- Setup your lua path
            path = runtime_path
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {"vim"}
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false
          }
        }
      },
      capabilities = capabilities,
    }
  else
    lspconfig[lsp].setup {
      -- on_attach = my_custom_on_attach,
      capabilities = capabilities,
  }
  end
end

-- 自动显示光标处的文档
--vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.lsp.buf.hover()]]
-- 保存那些文件类型时自动格式化
--vim.cmd [[autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 1000)]]

--  --------------------------------------------------------------------------
-- lspconfig 按键绑定
local leader_plug_lspconfig_n = {
  l = {
    name = "+lspconfig",
  }
}
local leader_plug_lspconfig_n_buf = {
  b = {
    name = "+buf",
    q = {"<cmd>lua vim.lsp.buf.hover()<CR>", "hover"},
    w = {"<cmd>lua vim.lsp.buf.rename()<CR>", "rename"},
    e = {"<cmd>lua vim.lsp.buf.definition()<CR>", "definition"},
    r = {"<cmd>lua vim.lsp.buf.formatting()<CR>", "formatting"},
    t = {"<cmd>lua vim.lsp.buf.references()<CR>", "references"},
    y = {"<cmd>lua vim.lsp.buf.code_action()<CR>", "code_action"},
    u = {"<cmd>lua vim.lsp.buf.declaration()<CR>", "declaration"},
    i = {"<cmd>lua vim.lsp.buf.server_ready()<CR>", "server_ready"},
    o = {"<cmd>lua vim.lsp.buf.implementation()<CR>", "implementation"},
    p = {"<cmd>lua vim.lsp.buf.incoming_calls()<CR>", "incoming_calls"},
    a = {"<cmd>lua vim.lsp.buf.outgoing_calls()<CR>", "outgoing_calls"},
    s = {"<cmd>lua vim.lsp.buf.signature_help()<CR>", "signature_help"},
    d = {"<cmd>lua vim.lsp.buf.document_symbol()<CR>", "document_symbol"},
    f = {"<cmd>lua vim.lsp.buf.execute_command()<CR>", "execute_command"},
    g = {"<cmd>lua vim.lsp.buf.formatting_sync()<CR>", "formatting_sync"},
    h = {"<cmd>lua vim.lsp.buf.type_definition()<CR>", "type_definition"},
    j = {"<cmd>lua vim.lsp.buf.clear_references()<CR>", "clear_references"},
    k = {"<cmd>lua vim.lsp.buf.range_formatting()<CR>", "range_formatting"},
    l = {"<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", "workspace_symbol"},
    z = {"<cmd>lua vim.lsp.buf.range_code_action()<CR>", "range_code_action"},
    x = {"<cmd>lua vim.lsp.buf.document_highlight()<CR>", "document_highlight"},
    c = {"<cmd>lua vim.lsp.buf.formatting_seq_sync()<CR>", "formatting_seq_sync"},
    v = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add_workspace_folder"},
    b = {"<cmd>lua vim.lsp.buf.list_workspace_folders()<CR>", "list_workspace_folders"},
    n = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove_workspace_folder"},
  }
}
local leader_plug_lspconfig_n_diagnostic = {
  d = {
    name = "+diagnostic",
    q = {"<cmd>lua vim.lsp.diagnostic.get()<CR>", "get"},
    w = {"<cmd>lua vim.lsp.diagnostic.save()<CR>", "save"},
    e = {"<cmd>lua vim.lsp.diagnostic.clear()<CR>", "clear"},
    r = {"<cmd>lua vim.lsp.diagnostic.reset()<CR>", "reset"},
    t = {"<cmd>lua vim.lsp.diagnostic.get_all()<CR>", "get_all"},
    y = {"<cmd>lua vim.lsp.diagnostic.get_next()<CR>", "get_next"},
    u = {"<cmd>lua vim.lsp.diagnostic.get_prev()<CR>", "get_prev"},
    i = {"<cmd>lua vim.lsp.diagnostic.get_count()<CR>", "get_count"},
    o = {"<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "goto_next"},
    p = {"<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", "goto_prev"},
    a = {"<cmd>lua vim.lsp.diagnostic.set_signs()<CR>", "set_signs"},
    s = {"<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "set_loclist"},
    d = {"<cmd>lua vim.lsp.diagnostic.get_next_pos()<CR>", "get_next_pos"},
    f = {"<cmd>lua vim.lsp.diagnostic.get_prev_pos()<CR>", "get_prev_pos"},
    g = {"<cmd>lua vim.lsp.diagnostic.set_underline()<CR>", "set_underline"},
    h = {"<cmd>lua vim.lsp.diagnostic.set_virtual_text()<CR>", "set_virtual_text"},
    j = {"<cmd>lua vim.lsp.diagnostic.get_line_diagnostics()<CR>", "get_line_diagnostics"},
    k = {"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", "show_line_diagnostics"},
    l = {"<cmd>lua vim.lsp.diagnostic.on_publish_diagnostics()<CR>", "on_publish_diagnostics"},
    z = {"<cmd>lua vim.lsp.diagnostic.get_virtual_text_chunks_for_line()<CR>", "get_virtual_text_chunks_for_line"},
  }
}
WK.register(leader_plug_lspconfig_n_buf, {
  mode = "n",
  prefix = "  l",
})
WK.register(leader_plug_lspconfig_n_diagnostic, {
  mode = "n",
  prefix = "  l",
})
WK.register(leader_plug_lspconfig_n, {
  mode = "n",
  prefix = "  ",
})

-- ---------------------------------------------------------------------------
-- lsp_colors 配置
lsp_colors.setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
-- ---------------------------------------------------------------------------
-- lspsaga 配置
--saga.init_lsp_saga()
--saga.init_lsp_saga {
--  error_sign = ' ',
--  warn_sign = ' ',
--  hint_sign = '',
--  infor_sign = ' ',
--  --border_style = "round",
--}
