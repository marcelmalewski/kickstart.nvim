--[[
 Little Docs

`:help`
  This will open up a help window with some basic information
  about reading, navigating and searching the builtin help documentation.

`:help lua-guide` as a
reference for how Neovim integrates Lua.
  - :help lua-guide
  - (or HTML version): https://neovim.io/doc/user/lua-guide.html

`<space>sh` to [s]earch the [h]elp documentation,
which is very useful when you're not exactly sure of what you're looking for.

`:checkheatlh` to check health of configuration

In folder `pluins` you can search with grep and find usefull NOTES

TODO
  1. stworzyć lua/plugins.lua dać return {}.
  2. Użyje wtedy require("lazy").setup("plugins"), typecraft ep 2
  3. stworzyć folder lua/plugins, tam wrzucić wszystkie pluginy. Teraz te plugin będą się automatycznie ładować.
  4. sprobować usunąć lua/plugins.lua, ale chyba jest konieczne
  k
--]]

-- [[ Global editor variables ]]
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Basic Autocommands ]]
require 'autocommands'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
