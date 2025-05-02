-- Lazy package manager setup
vim.opt.compatible = false
vim.cmd "filetype off"

vim.opt.mouse = "a"
vim.opt.cp = false
vim.opt.backup = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ruler = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.breakindent = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.backspace = "eol,indent,start"
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.diffopt = "filler,iwhite"
vim.opt.showmatch = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wildignore = "*.o,*.obj,*~,*.pyc,__pycache__,*.class,**/node_modules/**,**/dist/**,**/build/**,**/target/**,.git/**,.svn/**,CVS/**,vendor/**,*.egg-info/**,*.egg/**,*.log,**/tmp/**"

vim.cmd "syntax on"
vim.cmd "filetype on"
vim.cmd "filetype plugin on"
vim.cmd "filetype plugin indent on"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 1
vim.g.netrw_list_hide = ".DS_Store"

vim.cmd "nnoremap t :NvimTreeFocus<CR>"
vim.cmd "nnoremap gm :lua vim.diagnostic.open_float()<CR>"
vim.cmd "nnoremap gca :lua vim.lsp.buf.code_action()<CR>"

-- Trim trailing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = {"*"},
  callback = function(ev)
    save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})

vim.opt.termguicolors = true
vim.cmd "colorscheme tokyonight"

-- GUI stuff
if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_short_animation_length = 0
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_scroll_animation_length = 0

  vim.g.neovide_floating_blur_amount_x = 2.5
  vim.g.neovide_floating_blur_amount_y = 2.5

  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 10
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 5
end
