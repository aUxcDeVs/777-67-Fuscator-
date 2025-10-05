-- 777Fuscator Name Generator: Il (I, l, 1)
-- Made by Claude & 777Fuscator Team
-- Generates extremely confusing names using I, l, and 1

local MIN_CHARACTERS = 5;
local MAX_INITIAL_CHARACTERS = 10;

local util = require("777Fuscator.util");
local chararray = util.chararray;

local offset = 0;
local VarDigits = chararray("Il1");
local VarStartDigits = chararray("Il");

local function generateName(id, scope)
	local name = ''
	id = id + offset
	
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

local function prepare(ast)
	util.shuffle(VarDigits);
	util.shuffle(VarStartDigits);
	offset = math.random(3 ^ MIN_CHARACTERS, 3 ^ MAX_INITIAL_CHARACTERS);
end

return {
	generateName = generateName,
	prepare = prepare
}
