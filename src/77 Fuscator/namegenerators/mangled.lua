-- 777Fuscator Name Generator: Mangled
-- Made by Claude & 777Fuscator Team
-- Generates mangled variable names using base-conversion

-- Helper function to create character array
local function chararray(str)
	local t = {}
	for i = 1, #str do
		t[i] = str:sub(i, i)
	end
	return t
end

local VarDigits = chararray("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_");
local VarStartDigits = chararray("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");

return function(id, scope)
	local name = ''
	local d = id % #VarStartDigits
	id = (id - d) / #VarStartDigits
	name = name .. VarStartDigits[d + 1]
	
	while id > 0 do
		local d = id % #VarDigits
		id = (id - d) / #VarDigits
		name = name .. VarDigits[d + 1]
	end
	
	return name
end
