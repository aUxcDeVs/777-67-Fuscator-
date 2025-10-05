local Step = require("777Fuscator.step");
local Compiler = require("777Fuscator.compiler.compiler");

local Vmify = Step:extend();
Vmify.Description = "This Step will Compile your script into a fully-custom (not a half custom like other lua obfuscators) Bytecode Format and emit a vm for executing it.";
Vmify.Name = "Vmify";

Vmify.SettingsDescriptor = {
}

function Vmify:init(settings)
	
end

function Vmify:apply(ast)
	local compiler = Compiler:new();
	return compiler:compile(ast);
end

return Vmify;
