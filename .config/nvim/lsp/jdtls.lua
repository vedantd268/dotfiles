local home = os.getenv("HOME")
local workspace_path = home .. "/.cache/jdtls-workspace/"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = workspace_path .. project_name

return {
  cmd = {
    "/usr/lib/jvm/java-21-openjdk/bin/java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xmx1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",
    "-javaagent:" .. home .. "/.local/share/nvim/mason/packages/jdtls/lombok.jar",

    "-jar",
    vim.fn.glob(home .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),

    "-configuration",
    home .. "/.local/share/nvim/mason/packages/jdtls/config_linux",

    "-data",
    workspace_dir,
  },

  filetypes = { "java" },
  root_markers = {
    ".git",
    "build.gradle",
    "build.gradle.kts",
    "build.xml",
    "pom.xml",
    "settings.gradle",
    "settings.gradle.kts",
  },

  settings = {
    java = {
      signatureHelp = {
        enabled = true,
      },
      maven = {
        downloadSources = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      references = {
        includeDecompiledSources = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = "all", -- literals, all, none
        },
      },
      format = {
        enabled = true,
      },
    },
  },

  init_options = {
    bundles = {},
  },
}
