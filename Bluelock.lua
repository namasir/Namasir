local x = 0

local name = "name: "

for i = 0, 10 do
	x = x + i
end

for i = 0, 10 do
	name = name .. i .. ","
end

print(x)
print(local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
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
Tab = Window:MakeTab({Name = "Soon..... รออัพเดตนาจา",)


local test6l1Iil1i11ll11lII111 = assert local test6lIliiIiiil1i11I1II11l = select local test6l1Iiii1iii1li11lI1l = tonumber local test6iIiiil1IilI11IIiliI = unpack local test6lIlIliiiiIIiIiIlIIiIi = pcall local test6I1I11l11llllI111I1l = setfenv local test6IIiIiililllII111li1 = setmetatable local test6IIil111I111Ilililll = type local test6lliI11iiiII1l1IllI1 = getfenv local test6i1I11lIii11ii1IIi1i = tostring local test6iI1lii1Ii1iI1III11l = error local test6lIlilililiiiIii11ii1I = string.sub local test6lIlIIlIliil1l1lli1I1I = string.byte local test6lIlliI11l1lIiiIlIIiI1 = string.char local test6iII1lI11l1ii1IIllI1 = string.rep local test6IillI1l1l1Ii11l1i1I = string.gsub local test6IIiillIIII1iI1ii1lI = string.match local test6lII1II1li1i11IiI1l1 = #{3065} local test6liIi11Illi1I1i1i1II = {} local test6li1Il1Il11lli1lli11 = 1 local function test6IiIlllllIIlIIilii1I(test6lIliliIlIIl1lIIl11lI1, test6lIiiIIIIlIillilIllI) local test6ill11Iili1111llll11 test6lIliliIlIIl1lIIl11lI1 = test6IillI1l1l1Ii11l1i1I(test6lIlilililiiiIii11ii1I(test6lIliliIlIIl1lIIl11lI1, 5), "..", function(test6ll1IIIIill1lI1I11il) if test6lIlIIlIliil1l1lli1I1I(test6ll1IIIIill1lI1I11il, 2) == 71 then test6ill11Iili1111llll11 = test6l1Iiii1iii1li11lI1l(test6lIlilililiiiIii11ii1I(test6ll1IIIIill1lI1I11il, 1, 1)) return "" else local test6IIilllIIliI1Ilii1li = test6lIlliI11l1lIiiIlIIiI1(test6l1Iiii1iii1li11lI1l(test6ll1IIIIill1lI1I11il, 16)) if test6ill11Iili1111llll11 then local test6ii1I1Ii1ilil1illI1i = test6iII1lI11l1ii1IIllI1(test6IIilllIIliI1Ilii1li, test6ill11Iili1111llll11) test6ill11Iili1111llll11 = nil return test6ii1I1Ii1ilil1illI1i else return test6IIilllIIliI1Ilii1li end end end) local function test6iiiIllIiilliliiii1l() local test6lII1i11i1I1iiilIili = test6lIlIIlIliil1l1lli1I1I(test6lIliliIlIIl1lIIl11lI1, test6li1Il1Il11lli1lli11, test6li1Il1Il11lli1lli11) test6li1Il1Il11lli1lli11 = test6li1Il1Il11lli1lli11 + 1 return test6lII1i11i1I1iiilIili end local function test6Iiii11I1iIlII1Iilll() local test6lII1i11i1I1iiilIili, test6IIilllIIliI1Ilii1li, test6ii1I1Ii1ilil1illI1i, test6ilIIiiiiliii1iiI11I = test6lIlIIlIliil1l1lli1I1I(test6lIliliIlIIl1lIIl11lI1, test6li1Il1Il11lli1lli11, test6li1Il1Il11lli1lli11 + 3) test6li1Il1Il11lli1lli11 = test6li1Il1Il11lli1lli11 + 4 return test6ilIIiiiiliii1iiI11I * 16777216 + test6ii1I1Ii1ilil1illI1i * 65536 + test6IIilllIIliI1Ilii1li * 256 + test6lII1i11i1I1iiilIili end local function test6lIlI1Iiiii1li11111lli(test6lIllilIl1I1I1IIIliiiI, test6li1illI1Ii1li111ili, test6Ii1Il1Ii11IIII1i1il) if test6Ii1Il1Ii11IIII1i1il then local test6lIlI1l11IIillI1IlIil1, test6Illi11IIii1iil1Ii1I = 0, 0 for test6lllilIilI1l11ii1llI = test6li1illI1Ii1li111ili, test6Ii1Il1Ii11IIII1i1il do test6lIlI1l11IIillI1IlIil1 = test6lIlI1l11IIillI1IlIil1 + 2 ^ test6Illi11IIii1iil1Ii1I * test6lIlI1Iiiii1li11111lli(test6lIllilIl1I1I1IIIliiiI, test6lllilIilI1l11ii1llI) test6Illi11IIii1iil1Ii1I = test6Illi11IIii1iil1Ii1I + 1 end return test6lIlI1l11IIillI1IlIil1 else local test6l111liIIl1II1liIl11 = 2 ^ (test6li1illI1Ii1li111ili - 1) return test6l111liIIl1II1liIl11 <= test6lIllilIl1I1I1IIIliiiI % (test6l111liIIl1II1liIl11 + test6l111liIIl1II1liIl11) and 1 or 0 end end local function test6liIi1l11lII111IIIli() local test6lII1i11i1I1iiilIili, test6IIilllIIliI1Ilii1li = test6Iiii11I1iIlII1Iilll(), test6Iiii11I1iIlII1Iilll() if test6lII1i11i1I1iiilIili == 0 and test6IIilllIIliI1Ilii1li == 0 then return 0 end return (-2 * test6lIlI1Iiiii1li11111lli(test6IIilllIIliI1Ilii1li, 32) + 1) * 2 ^ (test6lIlI1Iiiii1li11111lli(test6IIilllIIliI1Ilii1li, 21, 31) - 1023) * ((test6lIlI1Iiiii1li11111lli(test6IIilllIIliI1Ilii1li, 1, 20) * 4294967296 + test6lII1i11i1I1iiilIili) / 4503599627370496 + 1) end local function test6lIli1i1ili1l1llIII1ll(test6iii1illl1ii1II1I1ll) local test6lIlIlIi1IiI1111illlI1 = { test6lIlIIlIliil1l1lli1I1I(test6lIliliIlIIl1lIIl11lI1, test6li1Il1Il11lli1lli11, test6li1Il1Il11lli1lli11 + 3) } test6li1Il1Il11lli1lli11 = test6li1Il1Il11lli1lli11 + 4 local test6IlII1Il1II1i11IIl1I = { nil, nil, nil, nil, nil, nil, nil, nil } for test6lllilIilI1l11ii1llI = 1, 8 do test6IlII1Il1II1i11IIl1I[test6lllilIilI1l11ii1llI] = test6lIlI1Iiiii1li11111lli(test6iii1illl1ii1II1I1ll, test6lllilIilI1l11ii1llI) end local test6lIlIIll1liiilil1i111i = "" for test6lllilIilI1l11ii1llI = 1, 4 do local test6lIlI1l11IIillI1IlIil1, test6Illi11IIii1iil1Ii1I = 0, 0 for test6l11111lIl111ilii1l1 = 1, 8 do local test6iI11lIl1il11IIll1ii = test6lIlI1Iiiii1li11111lli(test6lIlIlIi1IiI1111illlI1[test6lllilIilI1l11ii1llI], test6l11111lIl111ilii1l1) if test6IlII1Il1II1i11IIl1I[test6l11111lIl111ilii1l1] == 1 then test6iI11lIl1il11IIll1ii = test6iI11lIl1il11IIll1ii == 1 and 0 or 1 end test6lIlI1l11IIillI1IlIil1 = test6lIlI1l11IIillI1IlIil1 + 2 ^ test6Illi11IIii1iil1Ii1I * test6iI11lIl1il11IIll1ii test6Illi11IIii1iil1Ii1I = test6Illi11IIii1iil1Ii1I + 1 end test6lIlIIll1liiilil1i111i = test6lIlIIll1liiilil1i111i .. test6lIlIIll1liiilil1i111i.char(test6lIlI1l11IIillI1IlIil1) end local test6lII1i11i1I1iiilIili, test6IIilllIIliI1Ilii1li, test6ii1I1Ii1ilil1illI1i, test6ilIIiiiiliii1iiI11I = test6lIlIIlIliil1l1lli1I1I(test6lIlIIll1liiilil1i111i, 1, 4) return test6ilIIiiiiliii1iiI11I * 16777216 + test6ii1I1Ii1ilil1illI1i * 65536 + test6IIilllIIliI1Ilii1li * 256 + test6lII1i11i1I1iiilIili end local function test6illll1liIi11li1i11l(test6iii1illl1ii1II1I1ll) local test6lIll11Ii1illiiIi1ll1i = test6Iiii11I1iIlII1Iilll() test6li1Il1Il11lli1lli11 = test6li1Il1Il11lli1lli11 + test6lIll11Ii1illiiIi1ll1i local test6IlII1Il1II1i11IIl1I = { nil, nil, nil, nil, nil, nil, nil, nil } for test6lllilIilI1l11ii1llI = 1, 8 do test6IlII1Il1II1i11IIl1I[test6lllilIilI1l11ii1llI] = test6lIlI1Iiiii1li11111lli(test6iii1illl1ii1II1I1ll, test6lllilIilI1l11ii1llI) end local test6lIlIIll1liiilil1i111i = "" for test6lllilIilI1l11ii1llI = 1, test6lIll11Ii1illiiIi1ll1i do local test6lIlI1l11IIillI1IlIil1, test6Illi11IIii1iil1Ii1I = 0, 0 for test6l11111lIl111ilii1l1 = 1, 8 do local test6iI11lIl1il11IIll1ii = test6lIlI1Iiiii1li11111lli(test6lIlIIlIliil1l1lli1I1I(test6lIliliIlIIl1lIIl11lI1, test6li1Il1Il11lli1lli11 - test6lIll11Ii1illiiIi1ll1i + test6lllilIilI1l11ii1llI - 1), test6l11111lIl111ilii1l1) if test6IlII1Il1II1i11IIl1I[test6l11111lIl111ilii1l1] == 1 then test6iI11lIl1il11IIll1ii = test6iI11lIl1il11IIll1ii == 1 and 0 or 1 end test6lIlI1l11IIillI1IlIil1 = test6lIlI1l11IIillI1IlIil1 + 2 ^ test6Illi11IIii1iil1Ii1I * test6iI11lIl1il11IIll1ii test6Illi11IIii1iil1Ii1I = test6Illi11IIii1iil1Ii1I + 1 end test6lIlIIll1liiilil1i111i = test6lIlIIll1liiilil1i111i .. test6lIlIIll1liiilil1i111i.char(test6lIlI1l11IIillI1IlIil1) end return test6lIlIIll1liiilil1i111i end local test6lI1IIiIIiIlIiilillI = test6iiiIllIiilliliiii1l() local test6il1IIllllillIIlilii = test6iiiIllIiilliliiii1l() local function test6ii1iill1lIlliIlIlI1() local test6l11iliil11i11llII1I = { [72954] = {}, [66314] = {}, [27462] = {}, [71906] = {} } test6iiiIllIiilliliiii1l() local test6lIl1I1Illil11iII1i1Ii = test6Iiii11I1iIlII1Iilll() - (#{ 1150, 5165, 6828, 3554, 4192, 3359, 6360, 1652, 2336, 5733, 4288, 2669, 4952, 6523, 5263, 270, 3615, 1255, 6906, 4642, 3555, 544 } + 133681) for test6lllilIilI1l11ii1llI = test6lII1II1li1i11IiI1l1, test6lIl1I1Illil11iII1i1Ii do local test6IIii1l1llillIi11iI1 = {} local test6iI1l11llIllilIIII1i = test6lIli1i1ili1l1llIII1ll(test6il1IIllllillIIlilii) test6IIii1l1llillIi11iI1[109731] = test6lIlI1Iiiii1li11111lli(test6iI1l11llIllilIIII1i, #{ 2473, 5673, 3505, 1871, 4674, 802, 156, 5868, 1275, 4858, 3106, 82, 5629, 3829, 299, 2458, 2080, 3144, 5051, 3804, 353, 6457, 1104, 3728 } + 3, #{ 4263, 5265, 5340, 5761, 4560, 5037, 6509, 4647, 4931, 680, 3734, 2558, 1238, 3519, 1960, 3735, 53, 2492, 5187, 5247, 1029 } + 11) test6IIii1l1llillIi11iI1[33794] = test6lIlI1Iiiii1li11111lli(test6iI1l11llIllilIIII1i, #{650}, #{ 6475, 2895, 3879, 4465, 5359, 3423, 3494, 2821, 405 }) test6IIii1l1llillIi11iI1[10795] = test6lIlI1Iiiii1li11111lli(test6iI1l11llIllilIIII1i, #{ 200, 4913, 6283, 6200, 2369, 2412, 4136, 2351, 5100, 4958 }, #{ 5701, 4990, 3852, 5171, 3202, 151, 2608, 67, 3957, 3553, 5405, 3265, 5534, 1732, 6928, 3507, 5889, 5181 }) test6IIii1l1llillIi11iI1[4075] = test6lIlI1Iiiii1li11111lli(test6iI1l11llIllilIIII1i, #{ 5954, 2335, 357, 6823, 1380, 2789, 5153, 2283, 6219, 195, 2697, 1090, 4841, 6469, 5154, 4169, 3800, 1474, 1732 }, #{ 5903, 3559, 2737, 4891, 6198, 5393, 3703, 3616, 1357, 4351, 2920, 3783, 2427, 551, 434, 6284, 4161, 886, 406, 6019, 259, 4692, 4710 } + 3) test6IIii1l1llillIi11iI1[103007] = test6lIlI1Iiiii1li11111lli(test6iI1l11llIllilIIII1i, #{3476}, #{ 1000, 4426, 1417, 5276, 3634, 2804, 3397, 1148, 5918, 1880, 1994, 5280, 5232, 3924, 4242, 6687, 2407, 4902 }) test6IIii1l1llillIi11iI1[47774] = test6lIlI1Iiiii1li11111lli(test6iI1l11llIllilIIII1i, #{3184}, #{ 3605, 5609, 765, 387, 3065, 3921, 5861, 5493, 1351, 2170, 5432, 1818, 2757, 2342, 2485, 1876, 950, 1984 }) test6l11iliil11i11llII1I[71906][test6lllilIilI1l11ii1llI] = test6IIii1l1llillIi11iI1 end test6l11iliil11i11llII1I[35853] = test6iiiIllIiilliliiii1l() test6Iiii11I1iIlII1Iilll() test6iiiIllIiilliliiii1l() test6l11iliil11i11llII1I[47888] = test6iiiIllIiilliliiii1l() test6Iiii11I1iIlII1Iilll() local test6lIl1I1Illil11iII1i1Ii = test6Iiii11I1iIlII1Iilll() - (#{ 6895, 3855, 2669, 4187, 6040, 864, 3290, 6779, 4048, 761, 3138, 4347, 1976, 6676, 2884, 1452, 105, 2602, 4819, 262, 1680 } + 133686) for test6lllilIilI1l11ii1llI = test6lII1II1li1i11IiI1l1, test6lIl1I1Illil11iII1i1Ii do local test6iIiii1I11iliiIIi1I1 = {} local test6IIil111I111Ilililll = test6iiiIllIiilliliiii1l() if test6IIil111I111Ilililll == #{ 5383, 498, 902, 5916, 3187, 3195, 5293, 4177, 2170, 5702, 2042, 667, 3354, 4204, 3947, 732, 4292, 673, 5162, 866, 6342, 35 } + 145 then test6iIiii1I11iliiIIi1I1[85265] = test6illll1liIi11li1i11l(test6lI1IIiIIiIlIiilillI) end if test6IIil111I111Ilililll == #{ 2304, 5375, 6450, 4047, 4390, 6809, 447, 3360, 768, 6178, 960, 5484, 2788, 1583, 6509, 6721, 325, 1201, 4589, 4485, 5481 } + 89 then test6iIiii1I11iliiIIi1I1[85265] = test6liIi1l11lII111IIIli() end if test6IIil111I111Ilililll == #{ 3323, 1293, 5677, 4378, 3616, 5679, 2910, 3346, 5698, 5939, 6425, 2998, 581, 5671, 6903, 4696, 1479, 4232 } then test6iIiii1I11iliiIIi1I1[85265] = #{ 3551, 5820, 4150, 5206, 5993, 2946, 1275, 236, 931, 6497, 5210, 6219, 1273, 6883, 6111, 2593, 3120, 5186, 55, 1841, 2201, 838, 4792 } + 77183 == #{ 428, 4888, 4027, 2243, 4749, 1960, 1470, 5123, 5614, 4497, 4828, 5509, 609, 5481, 1357, 5444, 1327, 3351, 5809, 3173, 6636, 2404, 1800 } + 58961 end if test6IIil111I111Ilililll == #{ 6116, 1426, 1177, 5819, 3570, 3333, 5293, 4719, 345, 907, 6249, 5931, 1419, 3550, 1105, 5591, 916, 2043, 2447, 6392, 2172, 6668 } + 229 then test6iIiii1I11iliiIIi1I1[85265] = test6Iiii11I1iIlII1Iilll() end if test6IIil111I111Ilililll == #{ 3261, 982, 4187, 6809, 3139, 2420, 1992, 954, 488, 4957, 2538, 4048, 838, 1600, 5496, 6010, 3996 } then test6iIiii1I11iliiIIi1I1[85265] = #{ 6212, 6665, 4967, 3306, 4415, 133, 6173, 3414, 1902, 6456, 1442, 6107, 2152, 2634, 3317, 267, 2960, 2478, 5448, 3952, 5759, 4865, 5607, 4332 } + 12762 == #{ 6212, 6665, 4967, 3306, 4415, 133, 6173, 3414, 1902, 6456, 1442, 6107, 2152, 2634, 3317, 267, 2960, 2478, 5448, 3952, 5759, 4865, 5607, 4332 } + 12762 end if test6IIil111I111Ilililll == #{ 3015, 513, 4430, 2064, 5520, 3051, 3067, 1528, 4089, 455, 4915, 6158, 5917, 1513, 2968, 2968, 587, 6842, 3633, 5366 } + 220 then test6iIiii1I11iliiIIi1I1[85265] = test6liIi1l11lII111IIIli() end if test6IIil111I111Ilililll == #{ 687, 933, 3466, 5606, 207, 3664, 6676, 4850, 4947, 4838, 2061, 3260, 97, 2999, 4157, 2319, 1530, 2268, 2476, 5595 } + 198 then test6iIiii1I11iliiIIi1I1[85265] = test6illll1liIi11li1i11l(#{ 1050, 995, 3645, 864, 977, 2344, 249, 5876, 2988, 2191, 1642, 5213, 340, 5423, 3446, 212, 2749, 1911, 6505, 6020, 2901, 5400, 2450 } + 97) end if test6IIil111I111Ilililll == #{ 4531, 6903, 6937, 3166, 2880, 2270, 3555, 252, 2174, 1887, 4952, 5098, 2868, 5228, 2855, 5618, 5897, 6952, 3569, 2751, 3856, 4220, 3050 } + 196 then test6iIiii1I11iliiIIi1I1[85265] = test6iiiIllIiilliliiii1l() end if test6IIil111I111Ilililll == #{ 5821, 2439, 2114, 3304, 6902, 3009, 6732, 3538, 2310, 5143, 2935, 3718, 5175, 6901, 5877, 2728, 5865, 1202, 5078, 6396, 4805 } + 110 then test6iIiii1I11iliiIIi1I1[85265] = test6Iiii11I1iIlII1Iilll() end test6l11iliil11i11llII1I[66314][test6lllilIilI1l11ii1llI - test6lII1II1li1i11IiI1l1] = test6iIiii1I11iliiIIi1I1 end test6Iiii11I1iIlII1Iilll() test6Iiii11I1iIlII1Iilll() test6iiiIllIiilliliiii1l() test6iiiIllIiilliliiii1l() local test6lIl1I1Illil11iII1i1Ii = test6Iiii11I1iIlII1Iilll() for test6lllilIilI1l11ii1llI = test6lII1II1li1i11IiI1l1, test6lIl1I1Illil11iII1i1Ii do test6l11iliil11i11llII1I[72954][test6lllilIilI1l11ii1llI - test6lII1II1li1i11IiI1l1] = test6ii1iill1lIlliIlIlI1() end test6l11iliil11i11llII1I[34709] = test6iiiIllIiilliliiii1l() local test6lIl1I1Illil11iII1i1Ii = test6Iiii11I1iIlII1Iilll() for test6lllilIilI1l11ii1llI = test6lII1II1li1i11IiI1l1, test6lIl1I1Illil11iII1i1Ii do test6l11iliil11i11llII1I[27462][test6lllilIilI1l11ii1llI] = test6Iiii11I1iIlII1Iilll() end return test6l11iliil11i11llII1I end local function test6lIli1lIIIllIliI1liiIl(test6l11iliil11i11llII1I, test6lIiiIIIIlIillilIllI, test6lIlIlli1I1lIi1il11II1) local test6IIiII1illIiiiIIIli1, test6lIlillIi1iI1iiil1lIli = 15, -1 local test6iiiilIlilil1iil11li = test6l11iliil11i11llII1I[71906] local test6Ii1lIiiiIIi11I1iI11 = test6IIiIiililllII111li1({}, { __index = function(test6lIlIll1l11IlilllIlI1i, test6lIlIliIIl11IiiIliIi1i) local test6lIlIIll1liiilil1i111i = test6l11iliil11i11llII1I[66314][test6lIlIliIIl11IiiIliIi1i] if test6lIlilililiiiIii11ii1I(test6IIil111I111Ilililll(test6lIlIIll1liiilil1i111i[85265]), 1, 1) == "s" then return { [85265] = test6lIlilililiiiIii11ii1I(test6lIlIIll1liiilil1i111i[85265], 3) } end return test6lIlIIll1liiilil1i111i end }) local test6lIl1illI1iii1il111I1i = 34709 local test6lIliiI1l1l11lll1I1IIi = test6l11iliil11i11llII1I[72954] local test6l1Iiil1IllI1iliiIll = 85265 local test6llliiIiiii1ilIIi1l1 = test6l11iliil11i11llII1I[47888] local test6lIllIill11liIIliIl1Ii = 109731 local test6lIllll1iii1l1l1IIilii = test6l11iliil11i11llII1I[27462] local test6lIl1llIiiiliIIIi111Ii = 33794 local function test6iIlIiiiIi1IIIIii1ll(...) local test6iI1Ili1li1I11i11lIl = 0 local test6lIlli111lII1ll1Illlli = { test6iIiiil1IilI11IIiliI({}, 1, test6l11iliil11i11llII1I[35853]) } local test6iiI1IIlilIIlIlIII1i = 1 local test6i1lil1lIllI111IiIIl = {} local test6lIlII1II111IiilI1l1lI = {} local test6iii1llI1l11II1Ilii1 = 1 local test6lIiiIIIIlIillilIllI = test6lliI11iiiII1l1IllI1() local test6IIlIllI1Illl1ill1l1 = { ... } local test6lIl1lll1l1i11iIilii1I = #test6IIlIllI1Illl1ill1l1 - 1 for test6lllilIilI1l11ii1llI = 0, test6lIl1lll1l1i11iIilii1I do if test6lllilIilI1l11ii1llI < test6llliiIiiii1ilIIi1l1 then test6lIlli111lII1ll1Illlli[test6lllilIilI1l11ii1llI] = test6IIlIllI1Illl1ill1l1[test6lllilIilI1l11ii1llI + 1] end end local function test6lIlilIII1lIlllilllIiI(...) local test6ii1I1Ii1ilil1illI1i = test6lIliiIiiil1i11I1II11l("#", ...) local test6lIlIll1l11IlilllIlI1i = { ... } return test6ii1I1Ii1ilil1illI1i, test6lIlIll1l11IlilllIlI1i end local test6II1IiililIilIi11iil = #{ 820, 5667, 2694, 4019, 2999, 2215, 1969, 6538, 1734, 4514, 2531, 4648, 4071, 3424, 6371, 865, 320, 4028, 2647, 1251, 5414, 5960, 5794 } + 131048 local test6li1Ii1iili1lII1li11 local test6lIlIi11Iili111i1IIill = { function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli, test6lIllil1llIiil11Iii1l1) local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = { test6iIiiil1IilI11IIiliI(test6liIi11Illi1I1i1i1II, 1, test6l1IililI1iiIIill1Il == 0 and 895 or test6l1IililI1iiIIill1Il) } end, nil, nil, function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli) local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] if test6l1IililI1iiIIill1Il > 255 then test6l1IililI1iiIIill1Il = test6Ii1lIiiiIIi11I1iI11[test6l1IililI1iiIIill1Il - 256][test6l1Iiil1IllI1iliiIll] else test6l1IililI1iiIIill1Il = test6lIlli111lII1ll1Illlli[test6l1IililI1iiIIill1Il] end if test6ii1ii1ii1Ii1Ii11Iii > 255 then test6ii1ii1ii1Ii1Ii11Iii = test6Ii1lIiiiIIi11I1iI11[test6ii1ii1ii1Ii1Ii11Iii - 256][test6l1Iiil1IllI1iliiIll] else test6ii1ii1ii1Ii1Ii11Iii = test6lIlli111lII1ll1Illlli[test6ii1ii1ii1Ii1Ii11Iii] end test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6l1IililI1iiIIill1Il % test6ii1ii1ii1Ii1Ii11Iii end, nil, nil, function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I) local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil if test6l1IililI1iiIIill1Il > 255 then test6l1IililI1iiIIill1Il = test6Ii1lIiiiIIi11I1iI11[test6l1IililI1iiIIill1Il - 256][test6l1Iiil1IllI1iliiIll] else test6l1IililI1iiIIill1Il = test6lIlli111lII1ll1Illlli[test6l1IililI1iiIIill1Il] end if test6ii1ii1ii1Ii1Ii11Iii > 255 then test6ii1ii1ii1Ii1Ii11Iii = test6Ii1lIiiiIIi11I1iI11[test6ii1ii1ii1Ii1Ii11Iii - 256][test6l1Iiil1IllI1iliiIll] else test6ii1ii1ii1Ii1Ii11Iii = test6lIlli111lII1ll1Illlli[test6ii1ii1ii1Ii1Ii11Iii] end test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1][test6l1IililI1iiIIill1Il] = test6ii1ii1ii1Ii1Ii11Iii end, function(test6iliIII1lIiliIiiii1i) local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] if test6l1IililI1iiIIill1Il > 255 then test6l1IililI1iiIIill1Il = test6Ii1lIiiiIIi11I1iI11[test6l1IililI1iiIIill1Il - 256][test6l1Iiil1IllI1iliiIll] else test6l1IililI1iiIIill1Il = test6lIlli111lII1ll1Illlli[test6l1IililI1iiIIill1Il] end if test6ii1ii1ii1Ii1Ii11Iii > 255 then test6ii1ii1ii1Ii1Ii11Iii = test6Ii1lIiiiIIi11I1iI11[test6ii1ii1ii1Ii1Ii11Iii - 256][test6l1Iiil1IllI1iliiIll] else test6ii1ii1ii1Ii1Ii11Iii = test6lIlli111lII1ll1Illlli[test6ii1ii1ii1Ii1Ii11Iii] end test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6l1IililI1iiIIill1Il + test6ii1ii1ii1Ii1Ii11Iii end, nil, nil, nil, nil, function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I) local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] test6lIlIlli1I1lIi1il11II1[test6l1IililI1iiIIill1Il] = test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] end, nil, nil, nil, nil, nil, function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli) local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6l1Iil1i11ll11lII111(test6l1Iiii1iii1li11lI1l(test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1]), "`for` initial value must be a number") test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 1] = test6l1Iil1i11ll11lII111(test6l1Iiii1iii1li11lI1l(test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 1]), "`for` limit value must be a number") test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 2] = test6l1Iil1i11ll11lII111(test6l1Iiii1iii1li11lI1l(test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 2]), "`for` step value must be a number") test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] - test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 2] test6iiI1IIlilIIlIlIII1i = test6iiI1IIlilIIlIlIII1i + test6ilIi1iIl1Il1lI1i1li end, nil } test6lIlIi11Iili111i1IIill[6] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I) local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6l1lIIlli1l1lil1iIIi = test6lIliiI1l1l11lll1I1IIi[test6iIlliiIIlilIIlIi1li] local test6llli1iIIll1I1i1lIii = {} if test6l1lIIlli1l1lil1iIIi[test6lIl1illI1iii1il111I1i] > 0 then do local test6lIlIll1i11i1li1liIiIl = {} test6llli1iIIll1I1i1lIii = test6IIiIiililllII111li1({}, { __index = function(test6lIlIll1l11IlilllIlI1i, test6lIlIliIIl11IiiIliIi1i) local test6l1I1i111llilIl1lllI = test6lIlIll1i11i1li1liIiIl[test6lIlIliIIl11IiiIliIi1i] return test6l1I1i111llilIl1lllI[1][test6l1I1i111llilIl1lllI[2]] end, __newindex = function(test6lIlIll1l11IlilllIlI1i, test6lIlIliIIl11IiiIliIi1i, test6IIIiIii1liIliIlIIli) local test6l1I1i111llilIl1lllI = test6lIlIll1i11i1li1liIiIl[test6lIlIliIIl11IiiIliIi1i] test6l1I1i111llilIl1lllI[1][test6l1I1i111llilIl1lllI[2]] = test6IIIiIii1liIliIlIIli end }) for test6lllilIilI1l11ii1llI = 1, test6l1lIIlli1l1lil1iIIi[test6lIl1illI1iii1il111I1i] do local test6iI11II1ll1I11liiIiI = test6iiiilIlilil1iil11li[test6iiI1IIlilIIlIlIII1i] if test6iI11II1ll1I11liiIiI[test6lIllIill11liIIliIl1Ii] == test6IIiII1illIiiiIIIli1 then test6lIlIll1i11i1li1liIiIl[test6lllilIilI1l11ii1llI - 1] = { test6lIlli111lII1ll1Illlli, test6iI11II1ll1I11liiIiI[test6lIl1llIiiiliIIIi111Ii] } elseif test6iI11II1ll1I11liiIiI[test6lIllIill11liIIliIl1Ii] == test6lIlillIi1iI1iiil1lIli then test6lIlIll1i11i1li1liIiIl[test6lllilIilI1l11ii1llI - 1] = { test6lIlIlli1I1lIi1il11II1, test6iI11II1ll1I11liiIiI[test6lIl1llIiiiliIIIi111Ii] } end test6iiI1IIlilIIlIlIII1i = test6iiI1IIlilIIlIlIII1i + 1 end test6i1lil1lIllI111IiIIl[#test6i1lil1lIllI111IiIIl + 1] = test6lIlIll1i11i1li1liIiIl end end local test6IiIlIll1IlI1I1Iil11 = test6lIli1lIIIllIliI1liiIl(test6l1lIIlli1l1lil1iIIi, test6lIiiIIIIlIillilIllI, test6llli1iIIll1I1i1lIii) test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6IiIlIll1IlI1I1Iil11 end test6lIlIi11Iili111i1IIill[20] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli, test6lIllil1llIiil11Iii1l1) local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] if test6ii1ii1ii1Ii1Ii11Iii == 19 then return test6li1Ii1iili1lII1li11[14]({ [4075] = (test6lIl1i1Ii11I11l1iIlII1 - 182) % 256, [33794] = (test6l1IililI1iiIIill1Il - 182) % 256, [103007] = 0 }) end test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6lIlli111lII1ll1Illlli[test6l1IililI1iiIIill1Il] end test6lIlIi11Iili111i1IIill[0] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli) local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6iii1illl1ii1II1I1ll if test6iIlliiIIlilIIlIi1li == 100000 then test6iii1illl1ii1II1I1ll = test6lIlli111lII1ll1Illlli[251] else test6iii1illl1ii1II1I1ll = test6Ii1lIiiiIIi11I1iI11[test6iIlliiIIlilIIlIi1li][test6l1Iiil1IllI1iliiIll] end test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6lIiiIIIIlIillilIllI[test6iii1illl1ii1II1I1ll] end test6lIlIi11Iili111i1IIill[17] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli) local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] if test6ii1ii1ii1Ii1Ii11Iii == 36 then return test6li1Ii1iili1lII1li11[16]({ [4075] = (test6lIl1i1Ii11I11l1iIlII1 - 60) % 256, [33794] = (test6l1IililI1iiIIill1Il - 60) % 256, [103007] = 0 }) end test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = not test6lIlli111lII1ll1Illlli[test6l1IililI1iiIIill1Il] end test6lIlIi11Iili111i1IIill[16] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli) local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6IiIiili1iI1iiIIII1l = test6lIlli111lII1ll1Illlli[test6l1IililI1iiIIill1Il] for test6lllilIilI1l11ii1llI = test6l1IililI1iiIIill1Il + 1, test6ii1ii1ii1Ii1Ii11Iii do test6IiIiili1iI1iiIIII1l = test6IiIiili1iI1iiIIII1l .. test6lIlli111lII1ll1Illlli[test6lllilIilI1l11ii1llI] end test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6IiIiili1iI1iiIIII1l end test6lIlIi11Iili111i1IIill[18] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli) local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6iIlil1i1llllI1iIiIl = test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 2] local test6li1Il1Il11lli1lli11 = test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] + test6iIlil1i1llllI1iIiIl test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6li1Il1Il11lli1lli11 if test6iIlil1i1llllI1iIiIl > 0 then if test6li1Il1Il11lli1lli11 <= test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 1] then test6iiI1IIlilIIlIlIII1i = test6iiI1IIlilIIlIlIII1i + test6ilIi1iIl1Il1lI1i1li test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 3] = test6li1Il1Il11lli1lli11 end elseif test6li1Il1Il11lli1lli11 >= test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 1] then test6iiI1IIlilIIlIlIII1i = test6iiI1IIlilIIlIlIII1i + test6ilIi1iIl1Il1lI1i1li test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1 + 3] = test6li1Il1Il11lli1lli11 end end test6lIlIi11Iili111i1IIill[5] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I) local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] for test6lllilIilI1l11ii1llI = test6lIl1i1Ii11I11l1iIlII1, test6l1IililI1iiIIill1Il do test6lIlli111lII1ll1Illlli[test6lllilIilI1l11ii1llI] = nil end end test6lIlIi11Iili111i1IIill[2] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I) local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] if not not test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] == (test6ii1ii1ii1Ii1Ii11Iii == 0) then test6iiI1IIlilIIlIlIII1i = test6iiI1IIlilIIlIlIII1i + 1 end end test6lIlIi11Iili111i1IIill[15] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I) local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6Ii1lIiiiIIi11I1iI11[test6iIlliiIIlilIIlIi1li][test6l1Iiil1IllI1iliiIll] end test6lIlIi11Iili111i1IIill[11] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I) local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] if test6l1IililI1iiIIill1Il == 1 then return true end local test6liIll1I1il11ilIlill = test6lIl1i1Ii11I11l1iIlII1 + test6l1IililI1iiIIill1Il - 2 if test6l1IililI1iiIIill1Il == 0 then test6liIll1I1il11ilIlill = test6iI1Ili1li1I11i11lIl end return true, test6lIl1i1Ii11I11l1iIlII1, test6liIll1I1il11ilIlill end test6lIlIi11Iili111i1IIill[10] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli, test6lIllil1llIiil11Iii1l1) local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6IIl1iiliIi1i1Il11Ii, test6liIll1I1il11ilIlill, test6lIli1ilIIi1IIIill1IlI if test6l1IililI1iiIIill1Il ~= 1 then if test6l1IililI1iiIIill1Il ~= 0 then test6liIll1I1il11ilIlill = test6lIl1i1Ii11I11l1iIlII1 + test6l1IililI1iiIIill1Il - 1 else test6liIll1I1il11ilIlill = test6iI1Ili1li1I11i11lIl end test6liIll1I1il11ilIlill, test6IIl1iiliIi1i1Il11Ii = test6lIlilIII1lIlllilllIiI(test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1](test6iIiiil1IilI11IIiliI(test6lIlli111lII1ll1Illlli, test6lIl1i1Ii11I11l1iIlII1 + 1, test6liIll1I1il11ilIlill))) else test6liIll1I1il11ilIlill, test6IIl1iiliIi1i1Il11Ii = test6lIlilIII1lIlllilllIiI(test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1]()) end if test6ii1ii1ii1Ii1Ii11Iii ~= 1 then if test6ii1ii1ii1Ii1Ii11Iii ~= 0 then test6liIll1I1il11ilIlill = test6lIl1i1Ii11I11l1iIlII1 + test6ii1ii1ii1Ii1Ii11Iii - 2 else test6liIll1I1il11ilIlill = test6liIll1I1il11ilIlill + test6lIl1i1Ii11I11l1iIlII1 end test6lIli1ilIIi1IIIill1IlI = 0 for test6lllilIilI1l11ii1llI = test6lIl1i1Ii11I11l1iIlII1, test6liIll1I1il11ilIlill do test6lIli1ilIIi1IIIill1IlI = test6lIli1ilIIi1IIIill1IlI + 1 test6lIlli111lII1ll1Illlli[test6lllilIilI1l11ii1llI] = test6IIl1iiliIi1i1Il11Ii[test6lIli1ilIIi1IIIill1IlI] end end test6iI1Ili1li1I11i11lIl = test6liIll1I1il11ilIlill - 1 end test6lIlIi11Iili111i1IIill[14] = function(test6iliIII1lIiliIiiii1i) local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6Il1i1iilIi11I1llI1l = test6l1IililI1iiIIill1Il > 0 and test6l1IililI1iiIIill1Il - 1 or test6lIl1lll1l1i11iIilii1I - test6llliiIiiii1ilIIi1l1 if test6Il1i1iilIi11I1llI1l < 0 then test6Il1i1iilIi11I1llI1l = -1 end for test6lllilIilI1l11ii1llI = test6lIl1i1Ii11I11l1iIlII1, test6lIl1i1Ii11I11l1iIlII1 + test6Il1i1iilIi11I1llI1l do test6lIlli111lII1ll1Illlli[test6lllilIilI1l11ii1llI] = test6IIlIllI1Illl1ill1l1[test6llliiIiiii1ilIIi1l1 + (test6lllilIilI1l11ii1llI - test6lIl1i1Ii11I11l1iIlII1) + 1] end test6iI1Ili1li1I11i11lIl = test6lIl1i1Ii11I11l1iIlII1 + test6Il1i1iilIi11I1llI1l end test6lIlIi11Iili111i1IIill[12] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli) local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] test6iiI1IIlilIIlIlIII1i = test6iiI1IIlilIIlIlIII1i + test6ilIi1iIl1Il1lI1i1li end test6lIlIi11Iili111i1IIill[9] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I, test6iii1iil1IIiilIliIli) local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil if test6l1IililI1iiIIill1Il > 255 then test6l1IililI1iiIIill1Il = test6Ii1lIiiiIIi11I1iI11[test6l1IililI1iiIIill1Il - 256][test6l1Iiil1IllI1iliiIll] else test6l1IililI1iiIIill1Il = test6lIlli111lII1ll1Illlli[test6l1IililI1iiIIill1Il] end if test6ii1ii1ii1Ii1Ii11Iii > 255 then test6ii1ii1ii1Ii1Ii11Iii = test6Ii1lIiiiIIi11I1iI11[test6ii1ii1ii1Ii1Ii11Iii - 256][test6l1Iiil1IllI1iliiIll] else test6ii1ii1ii1Ii1Ii11Iii = test6lIlli111lII1ll1Illlli[test6ii1ii1ii1Ii1Ii11Iii] end test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] = test6l1IililI1iiIIill1Il / test6ii1ii1ii1Ii1Ii11Iii end test6lIlIi11Iili111i1IIill[3] = function(test6iliIII1lIiliIiiii1i, test6lIll11illiIlIiI1Ill1I) local test6ii1ii1ii1Ii1Ii11Iii = test6iliIII1lIiliIiiii1i[10795] local test6lIl1i1Ii11I11l1iIlII1 = test6iliIII1lIiliIiiii1i[4075] local test6iIlliiIIlilIIlIi1li = test6iliIII1lIiliIiiii1i[103007] local test6l1IililI1iiIIill1Il = test6iliIII1lIiliIiiii1i[33794] local test6ilIi1iIl1Il1lI1i1li = test6iliIII1lIiliIiiii1i[103007] - test6II1IiililIilIi11iil local test6iii1illl1ii1II1I1ll if test6iIlliiIIlilIIlIi1li == 100000 then test6iii1illl1ii1II1I1ll = test6lIlli111lII1ll1Illlli[251] else test6iii1illl1ii1II1I1ll = test6Ii1lIiiiIIi11I1iI11[test6iIlliiIIlilIIlIi1li][test6l1Iiil1IllI1iliiIll] end test6lIiiIIIIlIillilIllI[test6iii1illl1ii1II1I1ll] = test6lIlli111lII1ll1Illlli[test6lIl1i1Ii11I11l1iIlII1] end test6li1Ii1iili1lII1li11 = { test6lIlIi11Iili111i1IIill[2], test6lIlIi11Iili111i1IIill[0], test6lIlIi11Iili111i1IIill[19], test6lIlIi11Iili111i1IIill[1], test6lIlIi11Iili111i1IIill[5], test6lIlIi11Iili111i1IIill[3], test6lIlIi11Iili111i1IIill[16], test6lIlIi11Iili111i1IIill[14], test6lIlIi11Iili111i1IIill[15], test6lIlIi11Iili111i1IIill[17], test6lIlIi11Iili111i1IIill[6], test6lIlIi11Iili111i1IIill[12], test6lIlIi11Iili111i1IIill[10], test6lIlIi11Iili111i1IIill[11], test6lIlIi11Iili111i1IIill[4], test6lIlIi11Iili111i1IIill[20], test6lIlIi11Iili111i1IIill[18], test6lIlIi11Iili111i1IIill[9], test6lIlIi11Iili111i1IIill[13], test6lIlIi11Iili111i1IIill[8], test6lIlIi11Iili111i1IIill[7] } local function test6lIli1ilIIi1IIIill1IlI() while true do local test6iliIII1lIiliIiiii1i = test6iiiilIlilil1iil11li[test6iiI1IIlilIIlIlIII1i] test6iiI1IIlilIIlIlIII1i = test6iiI1IIlilIIlIlIII1i + 1 local test6lIl1IIIl11I1lI11ll1iI, test6liIi1liiiiIiiIlIii1, test6lIll1il1IlIIl1lI11ll1 = test6li1Ii1iili1lII1li11[test6iliIII1lIiliIiiii1i[109731] + 1](test6iliIII1lIiliIiiii1i) if test6lIl1IIIl11I1lI11ll1iI then return test6liIi1liiiiIiiIlIii1, test6lIll1il1IlIIl1lI11ll1 end end end local test6iiilliiIIlIi1I1I11l, test6liIi1liiiiIiiIlIii1, test6lIll1il1IlIIl1lI11ll1 = test6lIlIliiiiIIiIiIlIIiIi(test6lIli1ilIIi1IIIill1IlI) if test6iiilliiIIlIi1I1I11l then if test6liIi1liiiiIiiIlIii1 then return test6iIiiil1IilI11IIiliI(test6lIlli111lII1ll1Illlli, test6liIi1liiiiIiiIlIii1, test6lIll1il1IlIIl1lI11ll1) end else local test6lIlIII11lilll1I1Ilill = test6IillI1l1l1Ii11l1i1I("Luraph Script:" .. (test6lIllll1iii1l1l1IIilii[test6iiI1IIlilIIlIlIII1i - 1] or "") .. ": " .. test6i1I11lIii11ii1IIi1i(test6liIi1liiiiIiiIlIii1), "[^:]+:%d*: ", function(test6ll1IIIIill1lI1I11il) if not test6IIiillIIII1iI1ii1lI(test6ll1IIIIill1lI1I11il, "Luraph Script:%d") then return "" end end) test6iI1lii1Ii1iI1III11l(test6lIlIII11lilll1I1Ilill, 0) end end test6I1I11l11llllI111I1l(test6iIlIiiiIi1IIIIii1ll, test6lIiiIIIIlIillilIllI) return test6iIlIiiiIi1IIIIii1ll end local test6lIll1lIlIiIlIlilii1lI = test6ii1iill1lIlliIlIlI1() return test6lIli1lIIIllIliI1liiIl(test6lIll1lIlIiIlIlilii1lI, test6lIiiIIIIlIillilIllI)() end test6IiIlllllIIlIIilii1I("LPH|46E72D4E0A02002GE7E5CBE62GE7CF3GE7CF3GE7F33GE7E3E62GE7D73GE7D3000D3B467FFE00E4FE55294C0A0200F05G00E4944065DA3261B57BC72BAF8B013G00EF790A0200F0E7E5CB2GE7EFE3DBAF1BC32GE7E5CB64E6EFF72GE5EFD7E2E7EFE3FDE7E5CB2GE7EFE3FFE7E5CBE7EDE7ABF2E7EDA72GE7EFC7E5E7EBC7E4E7F7C7E3E7EDEFDAAFEFC2A6AFEBC22G18E6CBE3E72GC7E1F7E3FF1E18EEA7E2E7EFE30E18E6CB0018E6CBE6E7E5CB3GE7CF3GE7E33GE7C7E6E7E3C72GE7EFC7E5E7EBC7E4E7F7C70F18EEEF0118E6CBDAAF1BC32GE7E5CBC9E6EFF72GE5EFD750C13FD9FF3119CA093702A1090B35CF9E9253DED4FC21E74D7F67EB681B19F907FF87E36B568CAC0450FEB7096D4B731D37003BFA8F7C520A0200F08G00A7083G002G4628272B237C66F06G002440F06G00F03FA7033G002G466AA7073G002G4636342F2832A7023G002G461ED09A4C9B683C423B825G00289G002G000D9G002G000D3G000E9G006G00063G00053G00093G00093G00093G00093G000A3G000A7G000A3G000A3G00093G000D9G009G005G00013G00033G00053G00053G00053G00057G000E9G002G000E3G000E8G00", test6lliI11iiiII1l1IllI1())


