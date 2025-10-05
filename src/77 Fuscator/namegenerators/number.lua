-- 777Fuscator Name Generator: Number
-- Made by Claude & 777Fuscator Team
-- Simple hexadecimal-based name generation

local PREFIX = "_0x";

return function(id, scope)
	return PREFIX .. string.format("%x", id);
end
