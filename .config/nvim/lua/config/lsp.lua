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

vim.lsp.config("biome", {
  {
    cmd = function(dispatchers, config)
      local cmd = "biome"
      local local_cmd = (config or {}).root_dir and config.root_dir .. "/node_modules/.bin/biome"
      if local_cmd and vim.fn.executable(local_cmd) == 1 then
        cmd = local_cmd
      end
      return vim.lsp.rpc.start({ cmd, "lsp-proxy" }, dispatchers)
    end,
    filetypes = {
      "css",
      "graphql",
      "html",
      "javascript",
      "javascriptreact",
      "json",
      "jsonc",
      "svelte",
      "typescript",
      "typescript.tsx",
      "typescriptreact",
      "vue",
    },
    workspace_required = true,
    root_dir = function(bufnr, on_dir)
      local root_markers = { "package-lock.json", "yarn.lock", "pnpm-lock.yaml", "bun.lockb", "bun.lock" }
      root_markers = vim.fn.has("nvim-0.11.3") == 1 and { root_markers, { ".git" } }
        or vim.list_extend(root_markers, { ".git" })
      local project_root = vim.fs.root(bufnr, root_markers) or vim.fn.getcwd()

      local filename = vim.api.nvim_buf_get_name(bufnr)
      local biome_config_files = { "biome.json", "biome.jsonc" }

      biome_config_files = util.insert_package_json(biome_config_files, "biome", filename)

      local is_buffer_using_biome = vim.fs.find(biome_config_files, {
        path = filename,
        type = "file",
        limit = 1,
        upward = true,
        stop = vim.fs.dirname(project_root),
      })[1]
      if not is_buffer_using_biome then
        return
      end

      on_dir(project_root)
    end,
  },
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("docker_ls")
vim.lsp.enable("css")
vim.lsp.enable("emmet_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("biome")
