-- ✅ Simple UI by GcstudioX2
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/UI-Libraries/main/venyx/main.lua"))()
local venyx = library.new("GcstudioX2 Menu", 5013109572)

-- 🧩 หน้าหลัก
local page = venyx:addPage("Main", 5012544693)
local section = page:addSection("Auto Features")

local autoFarm = false
local autoCollect = false

-- 🌾 Auto Farm
section:addToggle("Auto Farm", false, function(value)
    autoFarm = value
    if autoFarm then
        print("✅ เริ่มฟาร์มอัตโนมัติ")
        while autoFarm do
            task.wait(1)
            print("⛏️ ฟาร์ม...")
        end
    else
        print("❌ หยุดฟาร์มแล้ว")
    end
end)

-- 💰 Auto Collect
section:addToggle("Auto Collect", false, function(value)
    autoCollect = value
    if autoCollect then
        print("✅ เริ่มเก็บของอัตโนมัติ")
        while autoCollect do
            task.wait(2)
            print("📦 เก็บของ...")
        end
    else
        print("❌ หยุดเก็บของแล้ว")
    end
end)

-- 📦 Exit
section:addButton("ปิดเมนู", function()
    venyx:toggle()
end)
