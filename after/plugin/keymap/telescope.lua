local Remap = require("henit.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<Leader>f", function()
  require('telescope.builtin').find_files()
end)

nnoremap("<Leader>g", function()
  require('telescope.builtin').live_grep()
end)

nnoremap("<Leader>m", function()
  require('telescope.builtin').buffers()
end)

-- telescope settings
local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
            ["<esc>"] = actions.close,
      },
    },
    file_ignore_patterns = {
      "vendor/*",
      "%.lock",
      "__pycache__/*",
      "%.sqlite3",
      "%.ipynb",
      "node_modules/*",
      "%.jpg",
      "%.jpeg",
      "%.png",
      "%.svg",
      "%.otf",
      "%.ttf",
      ".git/",
      "%.webp",
      ".dart_tool/",
      ".github/",
      ".gradle/",
      ".idea/",
      ".settings/",
      ".vscode/",
      "__pycache__/",
      "build/",
      "env/",
      "gradle/",
      "node_modules/",
      "target/",
      "%.pdb",
      "%.dll",
      "%.class",
      "%.exe",
      "%.cache",
      "%.ico",
      "%.pdf",
      "%.dylib",
      "%.jar",
      "%.docx",
      "%.met",
      "smalljre_*/*",
      ".vale/",
    }
  },
})

require('telescope').load_extension('fzf')
