local M = {}

function M:setup()
  local home = os.getenv("HOME")
  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
  local workspace_dir = home .. "/.cache/jdtls-workspace/" .. project_name
  local os_name = vim.loop.os_uname().sysname

  local config = {
    cmd = {
      "java",

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
      vim.fn.stdpath("data")
        .. package.config:sub(1, 1)
        .. "mason"
        .. package.config:sub(1, 1)
        .. "packages"
        .. package.config:sub(1, 1)
        .. "jdtls"
        .. package.config:sub(1, 1)
        .. "plugins"
        .. package.config:sub(1, 1)
        .. "org.eclipse.equinox.launcher_1.7.0.v20250519-0528.jar",

      "-configuration",
      vim.fn.stdpath("data")
        .. package.config:sub(1, 1)
        .. "mason"
        .. package.config:sub(1, 1)
        .. "packages"
        .. package.config:sub(1, 1)
        .. "jdtls"
        .. package.config:sub(1, 1)
        .. "config_"
        .. (os_name == "Windows_NT" and "win" or os_name == "Linux" and "linux" or "mac"),

      "-data",
      workspace_dir,
    },

    root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
    settings = {
      java = {
        signatureHelp = {
          enabled = true,
        },
        inlayHints = {
          parameterNames = {
            enabled = "none",
          },
        },
        maven = {
          downloadSources = true,
        },
        referencesCodeLens = {
          enabled = true,
        },
        codeGeneration = {
          toString = {
            template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
          },
          hashCodeEquals = {
            useJava7Objects = true,
          },
          useBlocks = true,
        },
      },
    },

    init_options = {
      bundles = {},
    },
  }
  require("jdtls").start_or_attach(config)
end

return M
