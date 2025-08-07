-- Ensure Lazy is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Tell Lazy to do stuff
require("lazy").setup({
  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {"neovim/nvim-lspconfig"},
  {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
  {"nvimtools/none-ls.nvim", dependencies = { "nvim-lua/plenary.nvim", }},
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/nvim-cmp"},
  {"L3MON4D3/LuaSnip"},
  {"folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},},
  {"tpope/vim-fugitive"},
  {"lewis6991/gitsigns.nvim"},
  {"github/copilot.vim"},
  {"mfussenegger/nvim-dap"},
  {"rcarriga/nvim-dap-ui"},
  {"nvim-lualine/lualine.nvim"},
  {"nvim-treesitter/nvim-treesitter"},
  {"nvim-telescope/telescope.nvim"},
  {"normen/vim-pio"},
  {"coddingtonbear/neomake-platformio"},
  {"rest-nvim/rest.nvim"},
  {"nvim-tree/nvim-tree.lua", lazy = false, dependencies = { "nvim-web-devicons", }},
  {"numToStr/Comment.nvim"},
  {"pocco81/auto-save.nvim"},
  {"vimlab/split-term.vim"},
  {"nvim-zh/colorful-winsep.nvim"},
  {"HiPhish/rainbow-delimiters.nvim"},
})

require("core.plugin_configs")

