local executor = require("./executor")
local input = [[
    4 + 4 / 4;
    1 - 1 * 10;
    5 / 5 * 10;
]]
local targetresults = {
    5,
    -9,
    .1
}
return function()
    local results = executor.exec(input)
    assert(executor.compare_tables(results, targetresults))
end
