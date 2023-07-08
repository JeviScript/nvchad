local options = require "plugins.configs.telescope"

options.defaults.file_ignore_patterns = { "node_modules", "obj", "bin", "target", ".git" }

return options
