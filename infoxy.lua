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
	Name = "INF Oxygen",
	Callback = function()
      	local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local Oxygen = Character:WaitForChild("client"):WaitForChild("oxygen")
 
		Oxygen.Disabled = true
  	end    
})

Tab:AddButton({
	Name = "INF Peaks",
	Callback = function()
      	local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local B = Character:WaitForChild("client"):WaitForChild("oxygen(peaks)")
 
		B.Disabled = true
  	end    
})

Tab:AddButton({
	Name = "INF temperature",
	Callback = function()
      	local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local A = Character:WaitForChild("client"):WaitForChild("temperature")
 
		A.Disabled = true
  	end    
})
