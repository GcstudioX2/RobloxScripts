local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/UI-Libraries/main/venyx/main.lua"))()
local venyx = library.new("Gay", 5013109572)
local page = venyx:addPage("Main", 5012544693)
local section = page:addSection("Auto Features")
local autoFarm = false
local autoCollect = false

section:addToggle("Auto Farm", false, function(value)
    autoFarm = value
    if autoFarm then
        print("auto farm test")
        while autoFarm do
            task.wait(1)
            print("farm teset")
        end
    else
        print("stop pick")
    end
end)

section:addToggle("Auto Collect", false, function(value)
    autoCollect = value
    if autoCollect then
        print("auto pick")
        while autoCollect do
            task.wait(2)
            print("pickup")
        end
    else
        print("stop pickup")
    end
end)

section:addButton("OFF MENU", function()
    venyx:toggle()
end)
