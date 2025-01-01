local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Free Project By Golf",Name = "Fisch By Golf", HidePremium = false, SaveConfig = true, ConfigFolder = ""})


Tab = Window:MakeTab({Name = "Contact",})


Tab:AddParagraph("By: Wisanu Golf")




Tab:AddButton({
    Name = "My Discord Link",
    Callback = function()
setclipboard("https://discord.gg/gTydDktG")
      end
})
Tab:AddButton({
    Name = "My Facebook Link",
    Callback = function()
setclipboard("https://www.facebook.com/wisanugjatupon")
      end
})



Tab = Window:MakeTab({Name = "Main",})

local Section = Tab:AddSection({
    Name = "Main"
})

Tab:AddButton({
    Name = "Button!",
    Callback = function()
        -- ค้นหา folder "world" และ "chests"
        local world = game.Workspace:FindFirstChild("world")
        if world then
            local chestsFolder = world:FindFirstChild("chests")
            if chestsFolder then
                -- ตรวจสอบว่าใน folder "chests" มีไฟล์หรือไม่
                for _, chest in pairs(chestsFolder:GetChildren()) do
                    if chest:IsA("Part") then
                        -- ถ้ามีไฟล์ Part ให้ย้ายตัวละครไปยังตำแหน่ง CFrame ของ Chest
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = chest.CFrame
                        break  -- หยุดการทำงานหลังจากเจอ chest ตัวแรก
                    end
                end
            else
                print("ไม่พบ chests ใน world")
            end
        else
            print("ไม่พบ world ใน Workspace")
        end
    end    
})


Tab:AddButton({
	Name = "Teleport NPC",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2826.9,214.7,1518.9)
  	end    
})

Tab:AddButton({
	Name = "Teleport to MooseWood",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(387.2,134.5,258.3)
  	end    
})
