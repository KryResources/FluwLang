local executor = require("./executor")
local input = [[
    var a = "hello";
    var b = "world";
    var c = '!';
]]
local targetresults = {
    "hello",
    "world",
    "!"
}
return function()
    local results = executor.exec(input)
    assert(executor.compare_tables(results, targetresults))
end
