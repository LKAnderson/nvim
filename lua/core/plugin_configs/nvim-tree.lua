require("nvim-tree").setup {
  sort = {
    sorter = "name",
    folders_first = true,
  },
  renderer = {
    group_empty = true,
    highlight_git = all,
    highlight_opened_files = all,
    indent_markers = {
      enable = true,
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
}
