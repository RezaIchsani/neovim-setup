local status, neotree = pcall(require, 'neo-tree')
if (not status) then return end

require('neo-tree').setup({
  default_component_configs = {
    container = {
      enable_character_fade = true
    },
    indent = {
      indent_size = 2,
      padding = 1, --extra padding on left hand side
      -- indent guides
      with_markers = true,
      indent_marker = '│',
      last_indent_marker = '└',
      highlight = 'NeoTreeIndentMarker',
      -- expander config, needed for nesting file
      with_expanders = 1,
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "ﰊ",
      default = "*",
      highlight = "NeoTreeFileIcon"
    },
    modified = {
      symbol = "[+]",
      highlight = "NeoTreeModified",
    },
    name = {
      trailing_slash = false,
      use_git_status_colors = true,
      highlight = "NeoTreeFileName",
    },
    git_status = {
      symbols = {
        -- Change type
        added     = '✚',
        modified  = '',
        deleted   = '✖',
        renamed   = '',
        -- Status type
        untracked = '',
        ignored   = '',
        unstaged  = '',
        staged    = '',
        conflict  = '',
      }
    },
  },
  window = {
    position = 'left',
    width = 25,
    mapping_options = {
      noremap = true,
      nowait = true,
    },
    mappings = {
          ["<space>"] = {
        "toggle_node",
        nowait = false,
      },
          ["<2-LeftMouse>"] = "open",
          ["<cr>"] = "open",
          ["<esc>"] = "revert_preview",
          ["P"] = { "toggle_preview", config = { use_float = true } },
          ["l"] = "focus_preview",
          ["S"] = "open_split",
          ["s"] = "open_vsplit",
          ["t"] = "open_tabnew",
          ["w"] = "open_with_window_picker",
          ["C"] = "close_node",
          ["z"] = "close_all_nodes",
          ["a"] = {
        "add",
        config = {
          show_path = "none"
        }
      },
          ["A"] = "add_directory",
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["c"] = "copy",
    }
  },
  nesting_rules = {},
  filesystem = {
    visible = false,
    hide_dotfiles = true,
    hide_gitignored = true,
    hide_hidden = true,
    hide_by_name = {
      --"node_modules"
    },
    hide_by_pattern = {
      --"*.meta",
      --"*src/*/tsconfig.json",
    },
    always_show = {
      --".gitignored",
    },
    never_show = {
      --".DS_Store",
      --"thumbs.db",
    },
    never_show_by_pattern = {
      --".null_ls_*",
    },
  },
  follow_current_file = false,
  group_empty_dirs = false,
  hijack_netrw_behavior = "open_default", -- "open_current", "disabled",
  use_libuv_file_watcher = false,
  buffers = {
    follow_current_file = true,
    group_empty_dirs = true,
    show_unloaded = true,
    window = {
      mappings = {
            ["bd"] = "buffer_delete",
            ["<bs>"] = "navigate_up",
            ["."] = "set_root",
      }
    },
  },
  git_status = {
    window = {
      position = "float",
      mappings = {
            ["A"] = "git_add_all",
            ["gu"] = "git_unstage_file",
            ["ga"] = "git_add_file",
            ["gr"] = "git_revert_file",
            ["gc"] = "git_commit",
            ["gp"] = "git_push",
            ["gg"] = "git_commit_and_push",
      }
    }
  }
})

vim.cmd([[noremap \ :Neotree reveal<cr>]])
