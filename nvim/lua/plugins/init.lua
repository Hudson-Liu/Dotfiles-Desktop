return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "python"
  		},
  	},
  },

  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_view_method = "zathura"
    end,
  },

  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    config = true,
    opts = function()
      local conf = require "neorg"
      conf.load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/Documents/Notes/"
            },
          },
        },
        ["core.concealer"] = {}
      }
      return conf
    end,
  },

  {
    "jpalardy/vim-slime",
    lazy = false,
    init = function()
      vim.g.slime_target = "kitty"
      vim.g.slime_no_mappings = 1
      vim.g.slime_bracketed_paste = 1
    end
  },

  {
    "mistricky/codesnap.nvim",
    lazy = false,
    build = "make",
    keys = {
      { "<leader>cc", "<cmd> CodeSnap <cr>", mode = "x"}
    },
    opts = {
      save_path = "~/Pictures",
      has_breadcrumbs = true,
      bg_theme = "bamboo",
      bg_x_padding = 60,
      bg_y_padding = 40,
      watermark = ""
    }
  }
}