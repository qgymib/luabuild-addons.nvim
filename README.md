# luabuild-addons.nvim

Addons for [luabuild.nvim](https://github.com/qgymib/luabuild.nvim).

Only support [packer.nvim](https://github.com/wbthomason/packer.nvim).

## Install

Use [packer.nvim](https://github.com/wbthomason/packer.nvim) to install.

```
use {
    "qgymib/luabuild-addons.nvim",
    requires = {
        {
            "qgymib/luabuild.nvim",
            requires = "nvim-lua/plenary.nvim",
        }
    },
}
```

Note:
1. `luabuild-addons.nvim` cannot be set as `opt`, but `luabuild.nvim` could.
2. During the first install, `packer.nvim` will ask you to remove some of your plugins. Choose **NO**.

## Usage

### [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)

```
use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = require("luabuild-addons").make.telescope_fzf_native
}
```
