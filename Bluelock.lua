print("([[This file was protected with MoonSec V3]]):gsub('.+', (function(a) _UiIKV_Q_owqC = a; end)); return(function(a,...)local d;local r;local h;local o;local f;local l;local e=24915;local n=0;local t={};while n<262 do n=n+1;while n<0x28c and e%0x3600<0x1b00 do n=n+1 e=(e*655)%21720 local c=n+e if(e%0x1b78)>0xdbc then e=(e*0x332)%0x2af1 while n<0x327 and e%0x268e<0x1347 do n=n+1 e=(e*544)%17770 local d=n+e if(e%0x4b68)<=0x25b4 then e=(e-0xbb)%0xa8ee local e=46756 if not t[e]then t[e]=0x1 r=string;end elseif e%2~=0 then e=(e*0x38e)%0x215d local e=55375 if not t[e]then t[e]=0x1 end else e=(e-0x322)%0x51b0 n=n+1 local e=46092 if not t[e]then t[e]=0x1 o={};end end end elseif e%2~=0 then e=(e-0x23a)%0xbdcb while n<0xc7 and e%0x8de<0x46f do n=n+1 e=(e+809)%9416 local l=n+e if(e%0x25c6)>0x12e3 then e=(e-0x2aa)%0x8fa4 local e=14991 if not t[e]then t[e]=0x1 d=getfenv and getfenv();end elseif e%2~=0 then e=(e-0x101)%0x8a93 local e=20389 if not t[e]then t[e]=0x1 end else e=(e-0x2ff)%0x8d36 n=n+1 local e=99457 if not t[e]then t[e]=0x1 f="\4\8\116\111\110\117\109\98\101\114\109\122\115\106\118\84\108\83\0\6\115\116\114\105\110\103\4\99\104\97\114\86\72\82\69\89\99\82\74\0\6\115\116\114\105\110\103\3\115\117\98\81\113\90\68\100\106\88\82\0\6\115\116\114\105\110\103\4\98\121\116\101\77\109\76\76\104\120\122\73\0\5\116\97\98\108\101\6\99\111\110\99\97\116\87\104\111\70\88\122\75\111\0\5\116\97\98\108\101\6\105\110\115\101\114\116\99\110\118\81\88\105\70\108\5";end end end else e=(e-0x91)%0x46de n=n+1 while n<0x2e0 and e%0x2fbc<0x17de do n=n+1 e=(e-463)%21734 local f=n+e if(e%0x2efa)<0x177d then e=(e*0x7a)%0x4ccf local e=76410 if not t[e]then t[e]=0x1 d=(not d)and _ENV or d;end elseif e%2~=0 then e=(e-0xe8)%0x2194 local e=76947 if not t[e]then t[e]=0x1 h=tonumber;end else e=(e+0x2d1)%0x98d3 n=n+1 local e=17436 if not t[e]then t[e]=0x1 l=function(l)local e=0x01 local function t(n)e=e+n return l:sub(e-n,e-0x01)end while true do local n=t(0x01)if(n=="\5")then break end local e=r.byte(t(0x01))local e=t(e)if n=="\2"then e=o.mzsjvTlS(e)elseif n=="\3"then e=e~="\0"elseif n=="\6"then d[e]=function(n,e)return a(8,nil,a,e,n)end elseif n=="\4"then e=d[e]elseif n=="\0"then e=d[e][t(r.byte(t(0x01)))];end local n=t(0x08)o[n]=e end end end end end end end e=(e*341)%16017 end l(f);local n={};for e=0x0,0xff do local t=o.VHREYcRJ(e);n[e]=t;n[t]=e;end local function c(e)return n[e];end local r=(function(a,l)local f,t=0x01,0x10 local n={{},{},{}}local d=-0x01 local e=0x01 local r=a while true do n[0x03][o.QqZDdjXR(l,e,(function()e=f+e return e-0x01 end) local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = OrionLib:MakeWindow({IntroText = "Free Project By Golf",Name = "Fisch By Golf", HidePremium = false, SaveConfig = true, ConfigFolder = ""})
local Player = game:GetService("Players")
local LocalPlayer = Player.LocalPlayer
local Char = LocalPlayer.Character
local Humanoid = Char.Humanoid
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GuiService = game:GetService("GuiService")
 
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
	Name = "AutoCast",
	Default = false,
	Callback = function(v)
		_G.AutoCast = v
     pcall(function()
while _G.AutoCast do wait()
    local Rod = Char:FindFirstChildOfClass("Tool")
                task.wait()
                    Rod.events.cast:FireServer(100,1)
        end
    end)
end    
})

Tab:AddToggle({
	Name = "AutoShake",
	Default = false,
	Callback = function(v)
	_G.AutoShake = v
pcall(function()
while _G.AutoShake do wait()
              task.wait()
                local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local shakeUI = PlayerGUI:FindFirstChild("shakeui")
                if shakeUI and shakeUI.Enabled then
                    local safezone = shakeUI:FindFirstChild("safezone")
                    if safezone then
                        local button = safezone:FindFirstChild("button")
                        if button and button:IsA("ImageButton") and button.Visible then
                                GuiService.SelectedObject = button
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    end
                end
            end
        end
    end)
end    
})

Tab:AddToggle({
	Name = "AutoReel",
	Default = false,
	Callback = function(v)
	_G.AutoReel = v
pcall(function()
    while _G.AutoReel do wait()
            for i,v in pairs(LocalPlayer.PlayerGui:GetChildren()) do
                if v:IsA "ScreenGui" and v.Name == "reel"then
                    if v:FindFirstChild "bar" then
                        wait()
                            ReplicatedStorage.events.reelfinished:FireServer(100,true)
                    end
                end
            end
        end
    end)
end    
})



local Tab = Window:MakeTab({
	Name = "Teleport",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Teleport"
})

local selectedValue = nil  -- ตัวแปรเก็บค่าที่เลือกจาก Dropdown

-- สร้าง Dropdown
Tab:AddDropdown({
    Name = "Island",
    Default = "",  -- ค่าเริ่มต้น
    Options = {"Moosewood", "Ancient","Forsaken Shores","Roslit","Vertigo","The Depths","Terrapin","Sunstone","Snowcap","Mushgrove","Desolate Deep","Cryogenic Canal","Northen Summit","Glacial Grotto"},  -- ตัวเลือกใน Dropdown
    Callback = function(Value)
        selectedValue = Value  -- เก็บค่าที่เลือกในตัวแปร selectedValue
    end    
})

-- สร้าง Button
Tab:AddButton({
    Name = "Teleport to Island",
    Callback = function()
        if selectedValue then
            -- ตรวจสอบว่ามีการเลือกจาก Dropdown หรือไม่
            if selectedValue == "Moosewood" then
                -- ย้ายไปที่ตำแหน่งที่ 1
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(385.4,134.5,265.1)
            elseif selectedValue == "Ancient" then
                -- ย้ายไปที่ตำแหน่งที่ 2
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6065.4,195,306.8)
			elseif selectedValue == "Forsaken Shores" then
                -- ย้ายไปที่ตำแหน่งที่ 3
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2509.3,137.2,1563)
			elseif selectedValue == "Roslit" then
                -- ย้ายไปที่ตำแหน่งที่ 4
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1472,132.5,710.1)
			elseif selectedValue == "Vertigo" then
                -- ย้ายไปที่ตำแหน่งที่ 5
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-112.7,-515.3,1136.9)
            elseif selectedValue == "The Depths" then
                -- ย้ายไปที่ตำแหน่งที่ 6
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(945.3,-717.7,1259.2)
			elseif selectedValue == "Terrapin" then
                -- ย้ายไปที่ตำแหน่งที่ 7
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-168,145,1936.3)
			elseif selectedValue == "Sunstone" then
                -- ย้ายไปที่ตำแหน่งที่ 8
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-916.8,135.8,-1125.7)
			elseif selectedValue == "Snowcap" then
                -- ย้ายไปที่ตำแหน่งที่ 9
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2597.8,135.3,2417.9)
			elseif selectedValue == "Mushgrove" then
                -- ย้ายไปที่ตำแหน่งที่ 10
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2445.5,130.9,-679.6)
			elseif selectedValue == "Desolate Deep" then
                -- ย้ายไปที่ตำแหน่งที่ 11
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1641.3,-205.3,-2849.3)
			elseif selectedValue == "Cryogenic Canal" then
                -- ย้ายไปที่ตำแหน่งที่ 12
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20095.6,646.6,5487.4)
			elseif selectedValue == "Northen Summit" then
                -- ย้ายไปที่ตำแหน่งที่ 13
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19535.4,132.7,5293.4)
			elseif selectedValue == "Glacial Grotto" then
                -- ย้ายไปที่ตำแหน่งที่ 14
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20015.3,1136.4,5531.3)
			end
        else
            print("No selection made!")
        end
    end    
})

local selectedValue = nil  -- ตัวแปรเก็บค่าที่เลือกจาก Dropdown

-- สร้าง Dropdown
Tab:AddDropdown({
    Name = "NPC",
    Default = "",  -- ค่าเริ่มต้น
    Options = {"Moosewood",},  -- ตัวเลือกใน Dropdown
    Callback = function(Value)
        selectedValue = Value  -- เก็บค่าที่เลือกในตัวแปร selectedValue
    end    
})

-- สร้าง Button
Tab:AddButton({
    Name = "Teleport to NPC",
    Callback = function()
        if selectedValue then
            -- ตรวจสอบว่ามีการเลือกจาก Dropdown หรือไม่
            if selectedValue == "Merlin" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-930.2,225.9,-992.8)
            elseif selectedValue == "Appraiser" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.4,150.5,206.3)
            elseif selectedValue == "Map Repairer" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2827.4,214.8,1518.8)
			end
        else
            print("No selection made!")
        end
    end    
}) ())]=(function()d=d+0x01 return d end)()if d==(0x0f)then d=""t=0x000 break end end local d=#l while e<d+0x01 do n[0x02][t]=o.QqZDdjXR(l,e,(function()e=f+e return e-0x01 end)())t=t+0x01 if t%0x02==0x00 then t=0x00 o.cnvQXiFl(n[0x01],(c((((n[0x03][n[0x02][0x00]]or 0x00)*0x10)+(n[0x03][n[0x02][0x01]]or 0x00)+r)%0x100)));r=a+r;end end return o.WhoFXzKo(n[0x01])end);l(r(12,".;rat<JF^7PKAHI227"));l(r(72,"H)dtR%LiuQ?vJ=h;vuiLQv%R9?vQiLdiiJQR%=Z=Ju%t#Q=uQhLt^=v2ii=Ru=vs%v))=RuJd;-?QvRtd=v%Q?dLQQ%%iutdh)Qh%JhtQQ%uRd;%Qht;h?LE)hRt;JvdL))hJ;d%R%;)vJLtd<vRLJdvhRv%%;Gt=;tshJo=vQuRt/u%?R%Rs==uuud?hn?R%i;L?=LiRdQR%Rit)=hRQ%R%XJv)iJd)=?QJR=))J%L)t;h;utRi;?LRdARR;ivtLJdd=)uht;;??hRi))*****;RQ;1%oO=tR=QQd%Rl%%hu%tL;WQQ%t)tJ)ihtQhd?=Lt;i=?dR=hc%vLi1)Q=tQtdLC?JuRJOQhd?5tQ?R%=uCt?hQ?LLRhv=Lu%Rt;Ru?RJ;uLJdLRv;%vRL%)vhRid%)=vJ%%ddQ=)iQhu?RJ%i)tJhut=%L)RJ;uiRd;;?uRh7QvRLL%-h%R="));local e=(-4731+(function()local l,n=0,1;(function(t,d,n,e)t(d(n,n,e,n),e(e,d and e,t,e),t(n,e,t and n,n),d(n,e,t,n)and e(e,e,n,d))end)(function(t,e,o,d)if l>348 then return o end l=l+1 n=(n+714)%14261 if(n%420)>=210 then n=(n+321)%19461 return e else return t(e(t,o and t,d,e),t(o,e,o,d),d(e,e,e,e and t)and e(o,d,d,t),d(t,d,o,t))end return e(d(t and d,e,t and o,o and e),t(o and d,t,t,e),t(d and e,o,t,o),o(e,d,e and d,d))end,function(o,t,d,e)if l>159 then return e end l=l+1 n=(n+813)%37701 if(n%662)<=331 then n=(n-993)%12456 return e(t(e,e,t,d),o(o,e,t,e),e(d and d,t,e,e),d(e,t,o,t))else return o end return d end,function(d,t,e,o)if l>342 then return e end l=l+1 n=(n+14)%28517 if(n%1412)>706 then return e else return e(e(o,t,o,e)and t(e,o,o,d),d(d,t,e,o),t(d,e,t,e),d(e,e,d,t))end return e(e(e and d,e,e and d,e),d(t,t,e,e),d(d,d,t and d,e),o(t,t,t and t,o))end,function(e,d,o,t)if l>269 then return e end l=l+1 n=(n+332)%31038 if(n%1216)>=608 then n=(n+807)%19940 return d else return t(o(d,e,e,t),o(o,t,e,o and e),d(d,t and e,o,o),t(t,d,t and e,e))end return t(e(t and e,e,e,t),d(d,o,o,d),e(t and t,d and d,e,d)and t(o and o,e,e,d),d(t,o,t and d,e))end)return n;end)())local g=(getfenv)or(function()return _ENV end);local _=o.FrxDIjpQ or o.afiZmkGr;local t=3;local l=2;local ee=1;local c=4;local function p(b,...)local u=r(e,"89s(Jypnb_oQ51{,n_{by51>Jn5ss5oj9J,yp9_Ey9Q_Jypf9pb1+Q9(_1,bp5{fo9(noQ9{nn,1p,1,Jn15J{Q_(s_,9,pb,1p5{&yy1s9_5d(JopoQs__&UJnbJQQy(1_9:nbpw(p_{Qp,{Qy__,1(pQQbs5o-pb,jpy{(SJQ{(yo59_Jb9(n9,n9b15ys5((5o99(_b,1nGoUpQ19ywQb{Jby9Qb,usyQ{9y(bJs{n,5((_ob95_#nJ{oyy5{JbysQ5(loJ9bb1SDnJ{by11&JJQb({Qy9Jbb,5ns{Jyb55ys17sb_59Vbn,bp5{Ano5Q(5QEsJ_{j5b9,Jp515yJ5,(bo5s+_oGbn1,0pJ{sJ55q(Jo_95_MdJbo{5pN1JJb59(=oJ9b_{VsnJ{_y519JJQbs5o6sbbb,5n&{pyb51JFQJ(9_59LbJ,_p5{LyJ5b(5Q!sJ_b");local n=0;o.WzSCuErF(function()n=n+1 end)local function e(e,t)if t then return n end;n=e+n;end local d,n,f=a(0,a,e,u,o.MmLLhxzI);local function r()local n,t=o.MmLLhxzI(u,e(1,3),e(5,6)+2);e(2);return(t*256)+n;end;local s=true;local s=0 local function j()local e=n();local n=n();local l=1;local t=(d(n,1,20)*(2^32))+e;local e=d(n,21,31);local n=((-1)^d(n,32));if(e==0)then if(t==s)then return n*0;else e=1;l=0;end;elseif(e==2047)then return(t==0)and(n*(1/0))or(n*(0/0));end;return o.ZXd_FEGj(n,e-1023)*(l+(t/(2^52)));end;local p=n;local function m(n)local t;if(not n)then n=p();if(n==0)then return'';end;end;t=o.QqZDdjXR(u,e(1,3),e(5,6)+n-1);e(n)local e=""for n=(1+s),#t do e=e..o.QqZDdjXR(t,n,n)end return e;end;local p=#o.jfGYxWiX(h('\49.\48'))~=1 local e=n;local function y(...)return{...},o.JqCuJiYI('#',...)end local function k()local s={};local e={};local u={};local h={s,u,nil,e};local e=n()local a={}for d=1,e do local t=f();local e;if(t==2)then e=(f()~=#{});elseif(t==0)then local n=j();if p and o.DDKLeWCg(o.jfGYxWiX(n),'.(\48+)$')then n=o.whVYLFxU(n);end e=n;elseif(t==3)then e=m();end;a[d]=e;end;for u=1,n()do local e=f();if(d(e,1,1)==0)then local o=d(e,2,3);local f=d(e,4,6);local e={r(),r(),nil,nil};if(o==0)then e[t]=r();e[c]=r();elseif(o==#{1})then e[t]=n();elseif(o==b[2])then e[t]=n()-(2^16)elseif(o==b[3])then e[t]=n()-(2^16)e[c]=r();end;if(d(f,1,1)==1)then e[l]=a[e[l]]end if(d(f,2,2)==1)then e[t]=a[e[t]]end if(d(f,3,3)==1)then e[c]=a[e[c]]end s[u]=e;end end;for e=1,n()do u[e-(#{1})]=k();end;h[3]=f();return h;end;local function p(t,e,n)local d=e;local d=n;return h(o.DDKLeWCg(o.DDKLeWCg(({o.WzSCuErF(t)})[2],e),n))end local function z(h,e,f)local function g(...)local r,g,u,p,k,n,m,j,b,s,_,d;local e=0;while-1<e do if 2>=e then if 1<=e then if e>-1 then repeat if 2>e then u=a(6,97,3,52,h);k=y p=0;break;end;n=-41;m=-1;until true;else u=a(6,97,3,52,h);k=y p=0;end else r=a(6,91,1,22,h);g=a(6,15,2,41,h);end else if 5<=e then if 3~=e then repeat if 6~=e then d=a(7);break;end;e=-2;until true;else e=-2;end else if e~=1 then for n=44,64 do if e~=4 then j={};b={...};break;end;s=o.JqCuJiYI('#',...)-1;_={};break;end;else s=o.JqCuJiYI('#',...)-1;_={};end end end e=e+1;end;for e=0,s do if(e>=u)then j[e-u]=b[e+1];else d[e]=b[e+1];end;end;local e=s-u+1 local e;local o;local function a(...)while true do end end while true do if n<-40 then n=n+42 end e=r[n];o=e[ee];if 8>=o then if 3<o then if 6>o then if o~=3 then for r=46,84 do if o~=4 then f[e[t]]=d[e[l]];break;end;if(d[e[l]]~=e[c])then n=n+1;else n=e[t];end;break;end;else f[e[t]]=d[e[l]];end else if 7<=o then if 4~=o then for n=25,72 do if o~=7 then f[e[t]]=d[e[l]];break;end;d(e[l],e[t]);break;end;else d(e[l],e[t]);end else local e=e[l]d[e](d[e+1])end end else if o<=1 then if-1<o then repeat if o~=0 then for o=0,3 do if o<2 then if o~=-2 then for a=22,70 do if 0<o then f[e[t]]=d[e[l]];n=n+1;e=r[n];break;end;d[e[l]]=(e[t]~=0);n=n+1;e=r[n];break;end;else f[e[t]]=d[e[l]];n=n+1;e=r[n];end else if 2~=o then if(d[e[l]]~=e[c])then n=n+1;else n=e[t];end;else d[e[l]]=f[e[t]];n=n+1;e=r[n];end end end break;end;d[e[l]]=f[e[t]];until true;else for o=0,3 do if o<2 then if o~=-2 then for a=22,70 do if 0<o then f[e[t]]=d[e[l]];n=n+1;e=r[n];break;end;d[e[l]]=(e[t]~=0);n=n+1;e=r[n];break;end;else f[e[t]]=d[e[l]];n=n+1;e=r[n];end else if 2~=o then if(d[e[l]]~=e[c])then n=n+1;else n=e[t];end;else d[e[l]]=f[e[t]];n=n+1;e=r[n];end end end end else if o~=-1 then repeat if o~=3 then local o;d(e[l],e[t]);n=n+1;e=r[n];o=e[l]d[o](d[o+1])n=n+1;e=r[n];do return end;break;end;if(d[e[l]]~=e[c])then n=n+1;else n=e[t];end;until true;else if(d[e[l]]~=e[c])then n=n+1;else n=e[t];end;end end end else if 12<o then if o>14 then if o>15 then if o<17 then local e=e[l]d[e](d[e+1])else n=e[t];end else d[e[l]]=(e[t]~=0);end else if 14~=o then local o,r,a,c,f;local n=0;while n>-1 do if 2<n then if n>=5 then if 6>n then d(f,c);else n=-2;end else if 1<=n then repeat if 4~=n then c=o[a];break;end;f=o[r];until true;else f=o[r];end end else if 1<=n then if n~=1 then a=t;else r=l;end else o=e;end end n=n+1 end else do return end;end end else if o>=11 then if o>7 then for r=21,57 do if o~=12 then n=e[t];break;end;d[e[l]]=(e[t]~=0);break;end;else d[e[l]]=(e[t]~=0);end else if 9~=o then do return end;else d[e[l]]=f[e[t]];end end end end n=1+n;end;end;return g end;local d=0xff;local a={};local o=(1);local l='';(function(n)local t=n local r=0x00 local e=0x00 t={(function(d)if r>0x1f then return d end r=r+1 e=(e+0xc08-d)%0x23 return(e%0x03==0x0 and(function(t)if not n[t]then e=e+0x01 n[t]=(0x68);end return true end)'tAUcF'and t[0x3](0x35d+d))or(e%0x03==0x1 and(function(t)if not n[t]then e=e+0x01 n[t]=(0xc);end return true end)'ynzMZ'and t[0x2](d+0x92))or(e%0x03==0x2 and(function(t)if not n[t]then e=e+0x01 n[t]=(0xe5);end return true end)'AGaFZ'and t[0x1](d+0x9a))or d end),(function(f)if r>0x20 then return f end r=r+1 e=(e+0x1369-f)%0x45 return(e%0x03==0x1 and(function(t)if not n[t]then e=e+0x01 n[t]=(0x2f);end return true end)'vYRUC'and t[0x3](0x28c+f))or(e%0x03==0x0 and(function(t)if not n[t]then e=e+0x01 n[t]=(0x71);d[2]=(d[2]*(p(function()a()end,_(l))-p(d[1],_(l))))+1;a[o]={};d=d[2];o=o+d;end return true end)'boBmw'and t[0x2](f+0x1bc))or(e%0x03==0x2 and(function(t)if not n[t]then e=e+0x01 n[t]=(0xb5);a[o]=g();o=o+d;end return true end)'_mRpU'and t[0x1](f+0x2fc))or f end),(function(f)if r>0x2e then return f end r=r+1 e=(e+0x112f-f)%0x2c return(e%0x03==0x2 and(function(t)if not n[t]then e=e+0x01 n[t]=(0x51);end return true end)'aIbAO'and t[0x1](0x3ac+f))or(e%0x03==0x0 and(function(t)if not n[t]then e=e+0x01 n[t]=(0xca);l={l..'\58 a',l};a[o]=k();o=o+(1);l[1]='\58'..l[1];d[2]=0xff;end return true end)'WWclx'and t[0x2](f+0x367))or(e%0x03==0x1 and(function(t)if not n[t]then e=e+0x01 n[t]=(0xf8);l='\37';d={function()d()end};l=l..'\100\43';end return true end)'WLKda'and t[0x3](f+0xd0))or f end)}t[0x3](0xbf)end){};local e=z(_(a));return e(...);end return p((function()local n={}local e=0x01;local t;if o.CAXfseP_ then t=o.CAXfseP_(p)else t=''end if o.DDKLeWCg(t,o.CAHzufOB)then e=e+0;else e=e+1;end n[e]=0x02;n[n[e]+0x01]=0x03;return n;end)(),...)end)((function(t,e,n,d,l,o)local o;if 3<t then if t<6 then if t>0 then for o=21,61 do if t<5 then local t=d;local d,l,o=l(2);do return function()local e,n,r,f=e(n,t(t,t),t(t,t)+3);t(4);return(f*d)+(r*l)+(n*o)+e;end;end;break;end;local t=d;do return function()local e=e(n,t(t,t),t(t,t));t(1);return e;end;end;break;end;else local t=d;do return function()local e=e(n,t(t,t),t(t,t));t(1);return e;end;end;end else if t>=7 then if t>=5 then for e=18,68 do if 8>t then do return setmetatable({},{['__\99\97\108\108']=function(e,l,t,d,n)if n then return e[n]elseif d then return e else e[l]=t end end})end break;end;do return n(t,nil,n);end break;end;else do return setmetatable({},{['__\99\97\108\108']=function(e,d,t,l,n)if n then return e[n]elseif l then return e else e[d]=t end end})end end else do return l[n]end;end end else if 2>t then if 0~=t then do return function(n,e,t)if t then local e=(n/2^(e-1))%2^((t-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(n%(e+e)>=e)and 1 or 0;end;end;end;else do return e(1),e(4,l,d,n,e),e(5,l,d,n)end;end else if t>=0 then repeat if t~=3 then do return 16777216,65536,256 end;break;end;do return e(1),e(4,l,d,n,e),e(5,l,d,n)end;until true;else do return e(1),e(4,l,d,n,e),e(5,l,d,n)end;end end end end),...).")

