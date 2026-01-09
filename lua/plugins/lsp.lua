return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          -- Ensure clangd handles .tmpl.hpp and .tmpl.cpp files
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
        },
      },
    },
  },
}
