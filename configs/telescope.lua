local options = require "plugins.configs.telescope"

options.defaults.file_ignore_patterns = { "node_modules/", "obj/", "bin/", "target/", ".git/", "dist/", "xmljs" }

options.defaults.prompt_prefix = ""
options.defaults.entry_prefix = ""
options.defaults.selection_caret = ""
options.extensions_list = { "fzf" }
options.extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
}

return options
