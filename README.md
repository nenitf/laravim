# template

Template template

Leia `:help template`.

## Installation

**Using Packer**

```lua
use {
    'nenitf/template',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('template').setup()
    end,
}
```

## Configuration

```lua
local default_config = {
}
```

- `#.#`: Template
