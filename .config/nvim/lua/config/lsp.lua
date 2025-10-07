vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
    "stylua.toml",
    "selene.toml",
    "selene.yml",
    ".git",
  },
  settings = {
    Lua = {
      diagnostics = {
        disable = {
          "undefined-global",
          "undefined-field",
        },
      },
    },
  },
})

vim.lsp.config("docker_ls", {
  cmd = { "docker-language-server", "start", "--stdio" },
  filetypes = { "dockerfile", "yaml.docker-compose" },
  get_language_id = function(_, ftype)
    if ftype == "yaml.docker-compose" or ftype:lower():find("ya?ml") then
      return "dockercompose"
    else
      return ftype
    end
  end,
  root_markers = {
    "Dockerfile",
    "docker-compose.yaml",
    "docker-compose.yml",
    "compose.yaml",
    "compose.yml",
    "docker-bake.json",
    "docker-bake.hcl",
    "docker-bake.override.json",
    "docker-bake.override.hcl",
  },
})

-- vim.lsp.config("html", {
--   cmd = { "vscode-html-language-server", "--stdio" },
--   filetypes = { "html", "templ" },
--   root_markers = { "package.json", ".git" },
--   settings = {},
--   init_options = {
--     provideFormatter = false,
--     embeddedLanguages = { css = true, javascript = true },
--     configurationSection = { "html", "css", "javascript" },
--   },
-- })

vim.lsp.config("css", {
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = { "css", "scss", "less" },
  init_options = { provideFormatter = false },
  root_markers = { "package.json", ".git" },
  settings = {
    css = { validate = true },
    scss = { validate = true },
    less = { validate = true },
  },
})

vim.lsp.config("emmet_ls", {
  cmd = { "emmet-ls", "--stdio" },
  filetypes = {
    "html",
    "htmlangular",
    "htmldjango",
    "javascriptreact",
    "typescriptreact",
  },
  root_markers = { ".git" },
})

vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
  root_markers = {
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git",
  },
  capabilities = {
    textDocument = {
      completion = {
        editsNearCursor = true,
      },
    },
    offsetEncoding = { "utf-8", "utf-16" },
  },
})

local servers = { "lua_ls", "docker_ls", "css", "emmet_ls", "clangd" }
vim.lsp.enable(servers)
