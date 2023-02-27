local source = {}

function source.new()
  return setmetatable({}, { __index = source })
end

source.is_available = function()
  return vim.bo.filetype == 'lua'
end

source.complete = function(_, _, callback)
  local funcs = require('cmp-xmake.complete')
  local kinds = require('cmp').lsp.CompletionItemKind

  local T = {}
  for i, v in pairs(funcs) do
    table.insert(T, { label = v, kind = kinds.Function })
  end

  callback(T)
end

return source
