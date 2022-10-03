local source = {}

function source.new()
	return setmetatable({}, { __index = source })
end

function source.get_keyword_pattern()
	return "[A-Z][^[:blank:]]*"
end

function source.complete(_, _, callback)
	callback(require "cmp-fonts/items")
end

return source
