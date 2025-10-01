local M = {}

function M:setup()
  local home = os.getenv("HOME")
  local workspace_path = home .. "./cache/jdtls-workspace"
  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
  local workspace_dir = workspace_path .. project_name

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
      home .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar",

      "-configuration",
      home .. "/.local/share/nvim/mason/packages/jdtls/config_linux",

      "-data",
      workspace_dir,
    },
    root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),

    settings = {
      java = {},
    },

    init_options = {
      bundles = {},
    },
  }

  require("jdtls").start_or_attach(config)
end

return M
