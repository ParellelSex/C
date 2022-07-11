local Colors = {
    [0] = "@@BLACK@@",
    [1] = "@@BLUE@@",
    [2] = "@@GREEN@@",
    [3] = "@@LIGHT_BLUE@@",
    [4] = "@@RED@@",
    [5] = "@@MAGENTA@@",
    [6] = "@@BROWN@@",
    [7] = "@@WHITE@@",
    [8] = "@@GRAY@@",
    [9] = "@@LIGHT_BLUE@@",
    ["A"] = "@@LIGHT_BLUE@@",
    ["B"] = "@@LIGHT_GREEN@@",
    ["C"] = "@@LIGHT_CYAN@@",
    ["D"] = "@@LIGHT_RED@@",
    ["E"] = "@@LIGHT_MAGENTA@@",
    ["F"] = "@@YELLOW@@",
    ["G"] = "@@DARK_GRAY@@",
}
__commands[#__commands+1] = {{"color"},"Set's you're console color.",function(args)
    if args >= 1 then
        for i,v in next, Colors do
            if tostring(args[1]):upper() == i then
                rconsoleprint(v)
                return
            end
        end
    end
    rconsoleprint("Invalid arguments\n")
    return
end}
