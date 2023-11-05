require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
    docker = {
      -- These are the default values
      theme = "ivy",
      binary = "docker", -- in case you want to use podman or something
      compose_binary = "docker compose",
      buildx_binary = "docker buildx",
      machine_binary = "docker-machine",
      log_level = vim.log.levels.INFO,
      init_term = "tabnew", -- "vsplit new", "split new", ...
      -- NOTE: init_term may also be a function that receives
      -- a command, a table of env. variables and cwd as input.
      -- This is intended only for advanced use, in case you want
      -- to send the env. and command to a tmux terminal or floaterm
      --
    },
  }
}

require("telescope").load_extension "file_browser"
require("telescope").load_extension "docker"
