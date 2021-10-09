local M = {}

M.make = {}

--- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
M.make.telescope_fzf_native = function(plugin)
    require("luabuild").make(
        {
            name = "libfzf",
            mode = "shared",
            source = { "src/fzf.c" },
            install = "build",
            standard = { c = "c99" },
        },
        {
            cwd = plugin.install_path,
        }
    )
end

return M
