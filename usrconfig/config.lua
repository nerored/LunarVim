--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
-- vim options
vim.cmd [[
    vnoremap p "_dP
]]

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.relativenumber = false

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = ","
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
-- lvim.colorscheme = "lunar"
--lvim.colorscheme = "catppuccin-latte"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.dap.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

lvim.keys.normal_mode["<C-tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-tab>"] = ":BufferLineCyclePrev<CR>"

lvim.builtin.which_key.mappings["q"] = {
  "<cmd>wqa<cr>",
  "force quit",
}

lvim.builtin.which_key.mappings["d"] = {
  name = "+lsp_definitions",
  d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go Definitions" },
}

lvim.builtin.which_key.mappings["r"] = {
  name = "+lsp_references",
  r = { "<cmd>lua vim.lsp.buf.references()<cr>", "Find References" },
}

lvim.builtin.which_key.mappings["o"] = {
  "<cmd>SymbolsOutline<cr>",
  "Symbols",
}

lvim.builtin.which_key.mappings["ai"] = {
  "<cmd>Copilot<cr>",
  "CopilotStart",
}

lvim.builtin.which_key.mappings["as"] = {
  "<cmd>Copilot panel<cr>",
  "CopilotPanel",
}

lvim.builtin.which_key.mappings["ac"] = {
  '<cmd>lua require("copilot.panel").accept()<cr>',
  "CopilotAccept",
}

lvim.keys.normal_mode["<leader>ss"] = "<cmd>lua require('spectre').open()<cr>"
lvim.keys.normal_mode["<leader>sw"] = "<cmd>lua require('spectre').open_visual({select_word=true})<cr>"
lvim.keys.normal_mode["<leader>sn"] = "viw:lua require('spectre').open_file_search()<cr>"

vim.g.symbols_outline = {
  highlight_hovered_item = true,
  show_guides = true,
  auto_preview = true,
  position = "right",
  relative_width = true,
  width = 20,
  auto_close = false,
  show_numbers = false,
  show_relative_numbers = false,
  show_symbol_details = true,
  preview_bg_highlight = "Pmenu",
  keymaps = {
    -- These keymaps can be a string or a table for multiple keys
    close = { "<Esc>", "q" },
    goto_location = "<Cr>",
    focus_location = "o",
    hover_symbol = "<C-space>",
    toggle_preview = "K",
    rename_symbol = "r",
    code_actions = "a",
  },
  lsp_blacklist = {},
  symbol_blacklist = {},
  symbols = {
    File = { icon = "", hl = "TSURI" },
    Module = { icon = "", hl = "TSNamespace" },
    Namespace = { icon = "", hl = "TSNamespace" },
    Package = { icon = "", hl = "TSNamespace" },
    Class = { icon = "𝓒", hl = "TSType" },
    Method = { icon = "ƒ", hl = "TSMethod" },
    Property = { icon = "", hl = "TSMethod" },
    Field = { icon = "", hl = "TSField" },
    Constructor = { icon = "", hl = "TSConstructor" },
    Enum = { icon = "ℰ", hl = "TSType" },
    Interface = { icon = "ﰮ", hl = "TSType" },
    Function = { icon = "", hl = "TSFunction" },
    Variable = { icon = "", hl = "TSConstant" },
    Constant = { icon = "", hl = "TSConstant" },
    String = { icon = "𝓐", hl = "TSString" },
    Number = { icon = "#", hl = "TSNumber" },
    Boolean = { icon = "⊨", hl = "TSBoolean" },
    Array = { icon = "", hl = "TSConstant" },
    Object = { icon = "⦿", hl = "TSType" },
    Key = { icon = "🔐", hl = "TSType" },
    Null = { icon = "NULL", hl = "TSType" },
    EnumMember = { icon = "", hl = "TSField" },
    Struct = { icon = "𝓢", hl = "TSType" },
    Event = { icon = "🗲", hl = "TSType" },
    Operator = { icon = "+", hl = "TSOperator" },
    TypeParameter = { icon = "𝙏", hl = "TSParameter" },
  },
}

--vim.api.nvim_create_autocmd("VimEnter", {
-- command = "hi Normal guibg=NONE ctermbg=NONE",
--})

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- always installed on startup, useful for parsers without a strict filetype
-- lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-width", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "gofmt", filetypes = { "go" } },
  { command = "goimports", filetypes = { "go" } },
  { command = "gofumpt", filetypes = { "go" } },
  { command = "clang_format", filetypes = { "cs" } },
  { command = "fixjson", filetypes = { "json" } },
  { command = "stylua", filetypes = { "lua" } },
  { command = "shfmt", filetypes = { "sh" } },
  { command = "pyink", filetypes = { "python" } },
  { command = "buf", filetypes = { "proto" } },
  { command = "prettier", filetypes = { "yaml" } },
}

-- -- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "golangci-lint", filetypes = { "go" } },
  { command = "semgrep", filetypes = { "cs" } },
  { command = "cfn_lint", filetypes = { "json" } },
  { command = "luacheck", filetypes = { "lua" } },
  { command = "shellcheck", filetypes = { "sh" } },
  --    { command = "easy-coding-standard", filetypes = { "php" } },
}

local lspconfig = require "lspconfig"

lspconfig.bufls.setup {
  cmd = { "bufls", "serve" },
  filetypes = { "proto" },
  root_dir = lspconfig.util.root_pattern("buf.work.yaml", ".git"),
  single_file_support = true,
}

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopWord<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopLine<cr>", { silent = true })
    end,
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 1
    end,
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function()
      require("symbols-outline").setup()
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
  },
  {
    "nvim-telescope/telescope-dap.nvim",
  },
  {
    "projekt0n/github-nvim-theme",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").on_attach()
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          suggestion = { enabled = false },
          panel = { enabled = false },
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
    opts = {
      -- add any opts here
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
    config = function()
      require("avante").setup {
        provider = "openai",
        auto_suggestions_provider = "openai",
        openai = {
          endpoint = "https://ark.cn-beijing.volces.com/api/v3",
          model = "ep-20250209105155-dcd4l", -- your desired model (or use gpt-4o, etc.)
          timeout = 30000, -- timeout in milliseconds
          temperature = 0, -- adjust if needed
          max_tokens = 4096,
        },
        behaviour = {
          auto_focus_sidebar = true,
          auto_suggestions = true, -- Experimental stage
          auto_suggestions_respect_ignore = false,
          auto_set_highlight_group = true,
          auto_set_keymaps = true,
          auto_apply_diff_after_generation = false,
          jump_result_buffer_on_finish = false,
          support_paste_from_clipboard = false,
          minimize_diff = true,
          enable_token_counting = true,
        },
        windows = {
          width = 50,
        },
      }
    end,
  },
}

--vim.cmd [[
--    let g:clipboard = {
--                \   'name': 'WslClipboard',
--                \   'copy': {
--                \      '+': 'clip.exe',
--                \      '*': 'clip.exe',
--                \    },
--                \   'paste': {
--                \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--                \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--                \   },
--                \   'cache_enabled': 0,
--                \ }
--]]

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
--
--
--
