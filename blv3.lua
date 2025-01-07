local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Free Project By Golf",Name = "Blue lock rivals By Golf", HidePremium = false, SaveConfig = true, ConfigFolder = ""})
local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
bit32 = {};
local N = 32;
local P = 2 ^ N;
bit32.bnot = function(x)
	x = x % P;
	return (P - 1) - x;
end;
bit32.band = function(x, y)
	if (y == 255) then
		return x % 256;
	end
	if (y == 65535) then
		return x % 65536;
	end
	if (y == 4294967295) then
		return x % 4294967296;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 2) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bor = function(x, y)
	if (y == 255) then
		return (x - (x % 256)) + 255;
	end
	if (y == 65535) then
		return (x - (x % 65536)) + 65535;
	end
	if (y == 4294967295) then
		return 4294967295;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) >= 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bxor = function(x, y)
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount < 0) then
		return math.floor(x * (2 ^ s_amount));
	else
		return (x * (2 ^ s_amount)) % P;
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		return math.floor(x * (2 ^ -s_amount));
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		local add = 0;
		if (x >= (P / 2)) then
			add = P - (2 ^ (N - s_amount));
		end
		return math.floor(x * (2 ^ -s_amount)) + add;
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;

Tab = Window:MakeTab({Name = "Contact",})


Tab:AddParagraph("By: Wisanu Golf")




Tab:AddButton({
	Name = "My Discord Link",
	Callback = function()
setclipboard("https://discord.gg/7f5SNUVW")
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
Tab:AddButton({
	Name = "inf Slide",
	Callback = function()
		local userInputService = game:GetService(
			LUAOBFUSACTOR_DECRYPT_STR_0("\212\219\55\232\198\62\236\87\245\251\55\232\249\57\255\71", "\34\129\168\82\154\143\80\156")
		)
		userInputService.InputBegan:Connect(function(input)
			if input.KeyCode == Enum.KeyCode.E then
				game:GetService(
					LUAOBFUSACTOR_DECRYPT_STR_0("\183\183\35\7\65\77\136\145\183\55\56\92\65\155\132\181\54", "\233\229\210\83\107\40\46")
				).Packages.Knit.Services.BallService.RE.Slide:FireServer();
				local args = {[1] = 10};
				game:GetService(
					LUAOBFUSACTOR_DECRYPT_STR_0("\243\71\34\218\12\194\67\38\211\1\242\86\61\196\4\198\71", "\101\161\34\82\182")
				).Packages.Knit.Services.StaminaService.RE.DecreaseStamina:FireServer(unpack(args));
				local player = game.Players.LocalPlayer;
				local character = player.Character or player.CharacterAdded:Wait();
				local humanoid = character.Humanoid;
				local animation = Instance.new(
					LUAOBFUSACTOR_DECRYPT_STR_0("\201\3\80\243\218\246\139\33\230", "\78\136\109\57\158\187\130\226")
				)
				animation.AnimationId = LUAOBFUSACTOR_DECRYPT_STR_0(
					"\44\61\225\240\45\44\252\229\55\59\163\190\113\110\161\167\104\103\161\160\106\103\174\167",
					"\145\94\95\153"
				)
				humanoid:LoadAnimation(animation):Play();
				local humanoidRootPart = character:WaitForChild(
					LUAOBFUSACTOR_DECRYPT_STR_0("\213\216\25\212\64\184\244\201\38\218\65\163\205\204\6\193", "\215\157\173\116\181\46")
				)
				local tweenService = game:GetService(
					LUAOBFUSACTOR_DECRYPT_STR_0("\1\163\142\247\212\6\177\153\228\211\54\177", "\186\85\212\235\146")
				)
				local goal = {
					[LUAOBFUSACTOR_DECRYPT_STR_0("\225\167\4\255\52\235", "\56\162\225\118\158\89\142")] = 
						(humanoidRootPart.CFrame + (humanoidRootPart.CFrame.LookVector * 30))
				}
				local tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Linear, Enum.EasingDirection.Out);
				local tween = tweenService:Create(humanoidRootPart, tweenInfo, goal);
				tween:Play();
			end
		end)
	end    
})
Tab:AddButton({
	Name = "inf dribble",
	Callback = function()
		print("UI Button Pressed. Waiting for 'Q' key press...")
		local userInputService = game:GetService(
			LUAOBFUSACTOR_DECRYPT_STR_0("\104\101\118\14\90\165\93\72\98\64\25\97\189\68\94\115", "\45\61\22\19\124\19\203")
		)
		userInputService.InputBegan:Connect(function(input)
			if input.KeyCode == Enum.KeyCode.Q then
				game:GetService(
					LUAOBFUSACTOR_DECRYPT_STR_0("\243\23\29\249\11\115\184\213\23\9\198\22\127\171\192\21\8", "\217\161\114\109\149\98\16")
				).Packages.Knit.Services.BallService.RE.Dribble:FireServer();
				local args = {[1] = 10};
				game:GetService(
					LUAOBFUSACTOR_DECRYPT_STR_0("\32\37\40\112\181\119\19\52\61\120\143\96\29\50\57\123\185", "\20\114\64\88\28\220")
				).Packages.Knit.Services.StaminaService.RE.DecreaseStamina:FireServer(unpack(args));
				local player = game.Players.LocalPlayer;
				local character = player.Character or player.CharacterAdded:Wait();
				local humanoid = character.Humanoid;
				local animation = Instance.new(
					LUAOBFUSACTOR_DECRYPT_STR_0("\16\15\219\185\249\196\180\62\15", "\221\81\97\178\212\152\176")
				)
				animation.AnimationId = LUAOBFUSACTOR_DECRYPT_STR_0(
					"\223\229\5\250\9\222\226\9\242\30\151\168\82\170\66\154\181\78\170\67\159\177\79\169",
					"\122\173\135\125\155"
				)
				humanoid:LoadAnimation(animation):Play();
				print("Action performed on 'Q' key press!")
			end
		end)
	end    
})
