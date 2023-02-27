cmp-xmake

================

## Introduction

**cmp-xmake** is a completion source for
[nvim-cmp](https://github.com/hrsh7th/nvim-cmp) that provides sources for `functions`.

## Setup
``` lua
require('cmp').setup({
    sources = {
        { name = 'xmake' }
    }
})
```