local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Free Project By Golf",Name = "Blue lock rivals By Golf", HidePremium = false, SaveConfig = true, ConfigFolder = ""})


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
	Name = "Inf stamina(สเตมีน่าไม่จำกัด)",
	Default = false,
	Callback = function(value)
getgenv().DecreaseStamina = value 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local function decreaseStamina()
    while getgenv().DecreaseStamina do
        task.wait(0.1) 
        local args = {
            [1] = 0/0 
        }
        pcall(function()
            ReplicatedStorage:WaitForChild("Packages")
                :WaitForChild("Knit")
                :WaitForChild("Services")
                :WaitForChild("StaminaService")
                :WaitForChild("RE")
                :WaitForChild("DecreaseStamina")
                :FireServer(unpack(args))
        end)
    end
end
task.spawn(decreaseStamina)
task.spawn(function()
    while task.wait() do
        if not getgenv().DecreaseStamina then
            break
        end
    end
end)
	end    
})


getgenv().autoTPBall = false 
getgenv().teleportDelay = 0.1 


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")


local LocalPlayer = Players.LocalPlayer


local function teleportToBall()
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end

    
    local ball = workspace:FindFirstChild("Football")
    if ball and ball:FindFirstChild("BallAnims") and ball.BallAnims:FindFirstChild("BALL") then
       
        LocalPlayer.Character.HumanoidRootPart.CFrame = ball.BallAnims.BALL.CFrame + Vector3.new(0, 5, 0) -- Offset to avoid overlapping
    end
end


task.spawn(function()
    while task.wait(getgenv().teleportDelay) do
        if getgenv().autoTPBall then
            pcall(teleportToBall)
        end
    end
end)



Tab:AddButton({
	Name = "Bring ball (วาปใส่บอล แบบโครตรัว)",
	Callback = function()
getgenv().TeleportBall = false 
getgenv().onoffgui = true 


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")


local LocalPlayer = Players.LocalPlayer


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local OnOffToggleButton = Instance.new("TextButton")


ScreenGui.Name = "BallTeleportGUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.4, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 200, 0, 130)
Frame.Active = true
Frame.Draggable = true 

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Bring ball"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = Frame
ToggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ToggleButton.Position = UDim2.new(0.1, 0, 0.3, 0)
ToggleButton.Size = UDim2.new(0.8, 0, 0.25, 0)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.Text = "Teleport: OFF ปิด"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 18

OnOffToggleButton.Name = "OnOffToggleButton"
OnOffToggleButton.Parent = Frame
OnOffToggleButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
OnOffToggleButton.Position = UDim2.new(0.1, 0, 0.6, 0)
OnOffToggleButton.Size = UDim2.new(0.8, 0, 0.25, 0)
OnOffToggleButton.Font = Enum.Font.SourceSansBold
OnOffToggleButton.Text = "Delete gui ออกจากหน้านี้"
OnOffToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OnOffToggleButton.TextSize = 18


ToggleButton.MouseButton1Click:Connect(function()
    getgenv().TeleportBall = not getgenv().TeleportBall
    ToggleButton.Text = getgenv().TeleportBall and "Bring: ON เปิด" or "Bring: OFF ปิด"
end)

OnOffToggleButton.MouseButton1Click:Connect(function()
    getgenv().onoffgui = not getgenv().onoffgui
    Frame.Visible = getgenv().onoffgui
    OnOffToggleButton.Text = getgenv().onoffgui and "Hide GUI" or "Show GUI"
    OnOffToggleButton.BackgroundColor3 = getgenv().onoffgui and Color3.fromRGB(150, 0, 0) or Color3.fromRGB(0, 150, 0)
end)


function teleportToBall()
    local ball = workspace:FindFirstChild("Football") or workspace:FindFirstChild("Ball")
    if ball and ball:IsA("BasePart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = ball.CFrame + Vector3.new(0, 3, 0) 
    end
end


RunService.RenderStepped:Connect(function()
    if getgenv().TeleportBall then
        teleportToBall()
    end
end)
  	end    
})

getgenv().autoTPBall = false 
getgenv().teleportDelay = 0.1 


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")


local LocalPlayer = Players.LocalPlayer


local function teleportToBall()
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end

    
    local ball = workspace:FindFirstChild("Football")
    if ball and ball:FindFirstChild("BallAnims") and ball.BallAnims:FindFirstChild("BALL") then
       
        LocalPlayer.Character.HumanoidRootPart.CFrame = ball.BallAnims.BALL.CFrame + Vector3.new(0, 5, 0) -- Offset to avoid overlapping
    end
end


task.spawn(function()
    while task.wait(getgenv().teleportDelay) do
        if getgenv().autoTPBall then
            pcall(teleportToBall)
        end
    end
end)



Tab:AddToggle({
	Name = "Grap Ball วาปใส่บอลแบบตั้งดีเลย์",
	Default = false,
	Callback = function(value)
		getgenv().autoTPBall = value 
	end    
})
Tab:AddSlider({
	Name = "Teleport delay ตั้งดีเลย์วาปใส่บอล",
	Min = 0,
	Max = 15,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(value)
            getgenv().teleportDelay = value 
	end    
})

Tab:AddButton({
    Name = "F1 เพื่อยิง",
    Callback = function()
        shootBall()  -- This will call the shootBall function when the button is clicked
    end    
})

-- กำหนดแรงยิงด้วย Slider
local shootVelocity = 300 -- ค่าเริ่มต้นของแรงยิง
Tab:AddSlider({
    Name = "Slider",
    Min = 20,
    Max = 300, -- กำหนดค่า Max ของแรงยิง
    Default = 20, -- ค่าเริ่มต้นของ Slider
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 10, -- ปรับค่าทีละ 10
    ValueName = "Velocity",
    Callback = function(Value)
        shootVelocity = Value
        print("Set shoot velocity to: " .. shootVelocity)
    end    
})

-- ฟังก์ชันสำหรับยิงบอล
local function shootBall()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local ballService = replicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BallService")

    local args = {
        [1] = shootVelocity,
        [4] = Vector3.new(0, -50, -100),
    }
    ballService.RE.Shoot:FireServer(unpack(args))
    print("Ball shot with speed: " .. shootVelocity)
end

-- การยิงบอลด้วยปุ่ม
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.One and not processed then
        shootBall()  -- This will also call the shootBall function when the "1" key is pressed
    end
end)
