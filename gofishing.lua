local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Free Project By Golf",Name = "GO FISHING By Golf", HidePremium = false, SaveConfig = true, ConfigFolder = ""})


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


Tab:AddToggle({
    Name = "Auto Fish ตกปลาออโต้",
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        if player and player:FindFirstChild("gui") and player.gui:FindFirstChild("autofishing") then
            player.gui.autofishing.Value = Value
        else
            print("autofishing หรือ gui ไม่พบ")
        end
    end
})
