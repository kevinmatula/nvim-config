-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- Add filetype detection for .tmpl.hpp and .tmpl.cpp files
vim.filetype.add({
  extension = {
    ["tmpl"] = function(path, bufnr)
      if path:match("%.tmpl%.hpp$") then
        return "cpp"
      elseif path:match("%.tmpl%.cpp$") then
        return "cpp"
      end
    end,
  },
  pattern = {
    [".*%.tmpl%.hpp"] = "cpp",
    [".*%.tmpl%.cpp"] = "cpp",
  },
})
