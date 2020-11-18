--// The library of the ui.
blood = loadstring(game:HttpGet("https://raw.githubusercontent.com/doqix/blood_gui/main/Blood%20Modded%20Finity%20UI%20Library.txt"))()


_G.effectcolor = Color3.fromRGB(255,0,0)

function changetheme(image,cola,col2)

	_G.effectcolor = cola

if game.CoreGui["bloodUI"] then
	game.CoreGui["bloodUI"].Container.Image = image
for i,v in pairs(game.CoreGui["bloodUI"]:GetDescendants()) do
if v.Name == "Separator" then
	v.BackgroundColor3 = col2
elseif v.Name == "CheckboxButton" then
	if v.ImageColor3 ~= Color3.fromRGB(132, 132, 136) then
		v.ImageColor3 = cola
		end
elseif v.Name == "Outer" then
	if v.ImageColor3 ~= Color3.fromRGB(84, 81, 86) then
	v.ImageColor3 = cola
	end
end
end
end

end

-- Variables
function GetLastPos()
	Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end
-- anti kick

if getrawmetatable and hookfunction then

local mt = getrawmetatable(game)
local old = mt.__namecall
local oldfunc

oldfunc = hookfunction(Instance.new("Player").Kick, function(self, ...)
return wait(9e9)
end)

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
local method = getnamecallmethod()
local args = {...}
if method:lower() == "kick" then
  return wait(9e9)
end
return old(self, unpack(args))
end)

if game.ReplicatedStorage.Interaction:FindFirstChild("Ban") then
  game.ReplicatedStorage.Interaction.Ban:Destroy()
end

if game.ReplicatedStorage.Transactions:FindFirstChild("AddLog") then
  game.ReplicatedStorage.Transactions.AddLog:Destroy()
end
end


if game.ReplicatedStorage.Interaction:FindFirstChild("Ban") then
    game.ReplicatedStorage.Interaction:FindFirstChild("Ban").Name = "PlsNoBanKThx"
end

function notify(title,text,duration)
  game.StarterGui:SetCore("SendNotification", {
    Title = title; -- the title (ofc)
    Text = text; -- what the text says (ofc)
    Icon = "rbxassetid://3883502641"; -- the image if u want.
    Duration = duration; -- how long the notification should in secounds
  })
end

function _G.Teleport1(XP,YP,ZP)
-- Config How Many Blocks It Will Tp You Untill The Final Destination:
local XTpEvery = 20
local YTpEvery = 20
local ZTpEvery = 20
--Time to Tp Every:
local Timer = 0.010
--Script:
local pos = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
if pos.Position.X < XP then
for x = pos.Position.X,XP,XTpEvery do
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,pos.Position.Y,pos.Position.Z))
local part = Instance.new("Part", workspace)
part.Anchored = true
part.Size = Vector3.new(10,0.1,10)
part.Material = "Glass"
part.BrickColor = BrickColor.Random()
part.Transparency = 1
part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
wait(Timer)
part.Destroy(part)
end
else
for x = pos.Position.X,XP,-XTpEvery do
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,pos.Position.Y,pos.Position.Z))
local part = Instance.new("Part", workspace)
part.Anchored = true
part.Size = Vector3.new(10,0.1,10)
part.Material = "Glass"
part.BrickColor = BrickColor.Random()
part.Transparency = 1
part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
wait(Timer)
part.Destroy(part)
end
end
if pos.Position.Z < ZP then
for z = pos.Position.Z,ZP,ZTpEvery do
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X,pos.Position.Y,z))
local part = Instance.new("Part", workspace)
part.Anchored = true
part.Size = Vector3.new(10,0.1,10)
part.Material = "Glass"
part.BrickColor = BrickColor.Random()
part.Transparency = 1
part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
wait(Timer)
part.Destroy(part)
end
else
for z = pos.Position.Z,ZP,-ZTpEvery do
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X,pos.Position.Y,z))
local part = Instance.new("Part", workspace)
part.Anchored = true
part.Size = Vector3.new(10,0.1,10)
part.Material = "Glass"
part.BrickColor = BrickColor.Random()
part.Transparency = 1
part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
wait(Timer)
part.Destroy(part)
end
end
if pos.Position.Y < YP then
for High = pos.Position.Y,YP,YTpEvery do
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X ,High ,pos.Position.Z))
local part = Instance.new("Part", workspace)
part.Anchored = true
part.Size = Vector3.new(10,0.1,10)
part.Material = "Glass"
part.BrickColor = BrickColor.Random()
part.Transparency = 1
part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
wait(Timer)
part.Destroy(part)
end
else
for High = pos.Position.Y,YP,-YTpEvery do
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X ,High ,pos.Position.Z))
local part = Instance.new("Part", workspace)
part.Anchored = true
part.Size = Vector3.new(10,0.1,10)
part.Material = "Glass"
part.BrickColor = BrickColor.Random()
part.Transparency = 1
part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
wait(Timer)
part.Destroy(part)
end
end
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(XP,YP,ZP))
end

function  _G.Teleport2(cf)
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = cf
	local BV = Instance.new("BodyVelocity")
	BV.Parent = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	BV.MaxForce = Vector3.new(9999999999999999999999999999999999999999999, 9999999999999999999999999999999999999999999, 9999999999999999999999999999999999999999999)
	BV.Velocity = Vector3.new(0, 100, 0)
	wait(0.1)
	BV.Velocity = Vector3.new(0, 10, 0)
	wait(0.05)
	if BV then
		BV:Destroy()
	end	
end


function _G.Teleport(cf)
	local plrc = game:service'Players'.LocalPlayer.Character
	plrc.Humanoid:ChangeState(5)
	local f = Instance.new("BodyPosition", plrc.Torso)
	f.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	f.Position = Vector3.new(0, 500000, 0)
	wait(.12)
	f:Destroy()
	wait()
	plrc.HumanoidRootPart.CFrame = cf
	plrc.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
	plrc.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
	plrc.Humanoid:ChangeState(8)
end

function GetTree(Wood, PlayerName, Quantitys)
local Counter = 0
local HitPoints={
['Beesaxe']= 1.4;
['AxeAmber']= 3.39;
['ManyAxe']= 10.2;
['BasicHatchet']= 0.2;
['Axe1']= 0.55;
['Axe2']= 0.93;
['AxeAlphaTesters']= 1.5;
['Rukiryaxe']= 1.68;
['Axe3']= 1.45;
['AxeBetaTesters']= 1.45;
['FireAxe']= 0.6;
['SilverAxe']= 1.6;
['EndTimesAxe']= 1.58;
['AxeChicken']= 0.9;
['CandyCaneAxe']= 0;
['AxeTwitter']= 1.65;
['CandyCornAxe']= 1.75;
['CaveAxe']= 0.4;
['GingerbreadAxe']= 1.2;
['RustyAxe']= 0.55;

}
function axe(Val)
local A_1 = Val.CutEvent
local A_2 = 
{
	["tool"] = game.Players.LocalPlayer.Character:FindFirstChild("Tool"), 
	["faceVector"] = Vector3.new(0, 0, -1), 
	["height"] = 0.3, 
	["sectionId"] = 1, 
	["hitPoints"] = HitPoints[game.Players.LocalPlayer.Character:FindFirstChild("Tool").ToolName.Value], 
	["cooldown"] = 0.112, 
	["cuttingClass"] = "Axe"
}
local Event = game:GetService("ReplicatedStorage").Interaction.RemoteProxy
Event:FireServer(A_1, A_2)
end
local Ps = nil
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players.LocalPlayer then
Ps = v.OriginSquare.Position + Vector3.new(0,30,0)
end
end
for i,v in pairs(game.Workspace:GetDescendants()) do
    if v:FindFirstChild("TreeClass") and v.TreeClass.Value == Wood and v.Name == "Model" then
    _G.Teleport(CFrame.new(v.WoodSection.Position.X,v.WoodSection.Position.Y,v.WoodSection.Position.Z))



  local achmedtpsdasd = false;
  Purchased = game.Workspace.LogModels.ChildAdded:connect(function(new)

  if new:WaitForChild("Owner").Value == game.Players.LocalPlayer then
    achmedtpsdasd = true;
    local yes12312321 = false;
    spawn(function()

    while true do game:GetService("RunService").Heartbeat:Wait()
      for i,v in pairs(game.Players:GetPlayers()) do
        if yes12312321 == true then break end
        if v == game.Players.LocalPlayer == false then
          game:GetService("RunService").Stepped:wait()
        end
      end
      if yes12312321 == true then break end
    end

    end)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = new.WoodSection.CFrame
wait()
for i=1,20 do
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(new)
game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(new.WoodSection)
end
  yes12312321 = true;
  Purchased:Disconnect()
  return;
end
end)




repeat
  wait(0.00000000000000000000001)
  axe(v)
until achmedtpsdasd == true

Counter = Counter + 1;
if Quantitys - Counter == 0 then
print("Breaked")
break
end
wait(0.2)
end
end
wait(0.2)

local Ps = nil
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players[_G.SelectedPlayer] then
Ps = v.OriginSquare.Position + Vector3.new(0,30,0)
end
end

if Ps == nil then
Ps = Vector3.new(155, 15, 74)
end

for i,v in pairs(Workspace.LogModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(Ps)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(Ps)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(Ps)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
end
end
wait(0.2)

for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players[_G.SelectedPlayer] then
_G.Teleport(CFrame.new(v.OriginSquare.Position.X, v.OriginSquare.Position.Y + 3.2, v.OriginSquare.Position.Z))
end
end
end


--// Creating a window with toggle key.
bloodWindow = blood.new(true)
bloodWindow.ChangeToggleKey(Enum.KeyCode.RightShift)

--// Creating categories.
CreditsCategory = bloodWindow:Category("Home")
PlayersCategory = bloodWindow:Category("Player Tools")
BaseToolsCategory = bloodWindow:Category("Base Tools")
WayPointsCategory = bloodWindow:Category("Waypoints")
WoodToolsCategory = bloodWindow:Category("Wood Tools")
AutoBuyCategory = bloodWindow:Category("Autobuy")
BaseSorterCategory = bloodWindow:Category("Base Sorter")
ModsCategory = bloodWindow:Category("Mods")
CarToolsCategory = bloodWindow:Category("Car Tools")
FunTimesCategory = bloodWindow:Category("Troll")


-- PLAYER TOOLS Sectors
Information = CreditsCategory:Sector("Information")
Credits = CreditsCategory:Sector("Credits")
Theme = CreditsCategory:Sector("Theme")
Settings = CreditsCategory:Sector("Settings")
Settings1 = CreditsCategory:Sector("")
Settings2 = CreditsCategory:Sector("")

-- PLAYER TOOLS Sectors
PlayerTool = PlayersCategory:Sector("Player Tools")
ChatTool = PlayersCategory:Sector("Chat Tools")
AntiKick = PlayersCategory:Sector("Anti Kick")
OtherTool = PlayersCategory:Sector("Other Tools")

-- BASE TOOLS Sectors
BaseTool = BaseToolsCategory:Sector("Base Tools")
DupeTool = BaseToolsCategory:Sector("Axe Tools")
DupeMoney1 = BaseToolsCategory:Sector("")
DupeMoney = BaseToolsCategory:Sector("Money Tools")
DupeMoney2 = BaseToolsCategory:Sector("")
Dupeitems = BaseToolsCategory:Sector("Dupe Tool")

-- WAY POINTS Sectors
MiscTp = WayPointsCategory:Sector("Base")
Shops = WayPointsCategory:Sector("Shops")
Landm = WayPointsCategory:Sector("Land Marks")
Treem = WayPointsCategory:Sector("Tree Areas")

-- WOOD TOOLS Sectors

WoodTools = WoodToolsCategory:Sector("Wood Tools")
SawMillTools = WoodToolsCategory:Sector("Mill Tool")
BringTree = WoodToolsCategory:Sector("Bring Tree")
LoneCave = WoodToolsCategory:Sector("Get Lonecave Tree")

-- AUTO BUY Sectors
AutoBuySector = AutoBuyCategory:Sector("Autobuy")
AutoBuySector1 = AutoBuyCategory:Sector("Wood R Us")
AutoBuySector2 = AutoBuyCategory:Sector("Furniture Store")
AutoBuySector3 = AutoBuyCategory:Sector("Boxed Cars")
AutoBuySector4 = AutoBuyCategory:Sector("Bob's Shack")
AutoBuySector5 = AutoBuyCategory:Sector("Fine Arts Shop")
AutoBuySector6 = AutoBuyCategory:Sector("Logic Store")
AutoBuySector7 = AutoBuyCategory:Sector("Blue Prints")
AutoBuySector8a = AutoBuyCategory:Sector("Halloween Items")
AutoBuySector8 = AutoBuyCategory:Sector("Auto")

-- BASE SORTER Sectors

MainCategory = BaseSorterCategory:Sector("BaseSorter")
MainCategory1 = BaseSorterCategory:Sector("Planks")
MainCategory2 = BaseSorterCategory:Sector("Conveyors")
MainCategory3 = BaseSorterCategory:Sector("Glass + Mills")
MainCategory4 = BaseSorterCategory:Sector("Wire Items")
MainCategory5 = BaseSorterCategory:Sector("Axes")
MainCategory6 = BaseSorterCategory:Sector("Paintings")
MainCategory7 = BaseSorterCategory:Sector("Furniture")
MainCategory8 = BaseSorterCategory:Sector("Vehicle")
MainCategory9 = BaseSorterCategory:Sector("Gifts")
MainCategory9a = BaseSorterCategory:Sector("")
MainCategory10 = BaseSorterCategory:Sector("Other Items")



-- MOD TOOLS Sectors
ModMap = ModsCategory:Sector("Map Mods")
ModCamera = ModsCategory:Sector("Camera Mods")
ModCameraf = ModsCategory:Sector("")
ModGraphics = ModsCategory:Sector("Graphic Mods")
ModGraphicsa = ModsCategory:Sector("")

-- CAR TOOLS Sectors
CarTools = CarToolsCategory:Sector("Car Tools")
CarToolsb = CarToolsCategory:Sector("Tp Car (Shops)")
CarToolsa = CarToolsCategory:Sector("Tp Car (Tree Area)")
CarToolsc = CarToolsCategory:Sector("Tp Car (Land Marks)")
-- FUN TIME Sectors
FunTime = FunTimesCategory:Sector("Troll")

----------------------------------------------------------------------------------

Information:Cheat("Label", "Current Time: ")
Information:Cheat("Label", "Ferry Departs: ")

game:GetService("RunService").RenderStepped:Connect(function()
if game:GetService("CoreGui"):FindFirstChild("bloodUI") then
game:GetService("CoreGui").bloodUI.Container.Categories.Home.L.Information.Container["Current Time: "].Title.Text = "Current Time: " .. tostring(game.Lighting.TimeOfDay):sub(1, -2):sub(1, -2):sub(1, -2)
end
end)

game.Workspace.Ferry.TimeToDeparture.Changed:connect(function()
if game:GetService("CoreGui"):FindFirstChild("bloodUI") then
game:GetService("CoreGui").bloodUI.Container.Categories.Home.L.Information.Container["Ferry Departs: "].Title.Text = "Ferry Departs: ".. game.Workspace.Ferry.TimeToDeparture.Value
if game:GetService("CoreGui").bloodUI.Container.Categories.Home.L.Information.Container["Ferry Departs: "].Title.Text == "Ferry Departs: 0" then
wait(6)
game:GetService("CoreGui").bloodUI.Container.Categories.Home.L.Information.Container["Ferry Departs: "].Title.Text = "Ferry has Departed"
else
game:GetService("CoreGui").bloodUI.Container.Categories.Home.L.Information.Container["Ferry Departs: "].Title.Text = "Ferry Departs: ".. game.Workspace.Ferry.TimeToDeparture.Value
end
end
end)

-- Credits ---------------------------------------------------------
Credits:Cheat("Label", "dogix (fixed blood)")
Credits:Cheat("Label", "Oddy (skiddy boi)")
Credits:Cheat("Label", "Bart")
Credits:Cheat("Label", "Johiro")
Credits:Cheat("Label", "Hacker")
Credits:Cheat("Label", "Zelly")
Credits:Cheat("Label", "Detourious for the Finity Gui")
Credits:Cheat("Label", "Tester/Limits115, Showcaser/JB36")

Credits:Cheat("Button", "Copy Discord Server", function(yes)
setclipboard("https://dogix.wtf/discord")
yes.Text = "Copied!"
wait(1)
yes.Text = "https://dogix.wtf/discord"
end, {text = "https://dogix.wtf/discord"})

-- Settings  ---------------------------------------------------------

Settings:Cheat("Button", "Destroy Gui", function()
game.CoreGui:FindFirstChild("bloodUI"):Destroy()
end, {text = "Delete"})

Settings:Cheat("Button", "Rejoin Game", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end, {text = "Rejoin"})

Settings:Cheat("Button", "Exit Game", function()
game:shutdown()
end, {text = "Exit"})

-- Theme  ---------------------------------------------------------


Theme:Cheat("Label", "welcome to autist gui")
Theme:Cheat("Label", "themes dont work")
Theme:Cheat("Label", "go away thanks")



-- Player Tools ---------------------------------------------------------
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50;
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16;


PlayerTool:Cheat("Slider", "Walk Speed", function(Value)
_G.speed = Value

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.speed
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.speed
end)

end, {min = 16,default = 0, max = 300, suffix = " Speed", precise = true})

PlayerTool:Cheat("Slider", "JumpPower", function(Value)
game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
end, {min = 50,default = 0, max = 300, suffix = " Power", precise = true})

PlayerTool:Cheat("Slider", "Hip Height", function(Value)
game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = Value
end, {min = 0, default = 0,max = 300, suffix = " Hieght", precise = true})


PlayerTool:Cheat("Slider", "Gravity", function(Value)
game.Workspace.Gravity = Value
end, {min = 0, max = 196.2, suffix = " Gravity", precise = false,default = 196.2})

_G.jumpinf = false
PlayerTool:Cheat("Checkbox", "Infinite Jump", function(State)
_G.jumpinf = State
end)
game:GetService("UserInputService").JumpRequest:connect(function()
if _G.jumpinf then
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end
end)

local Flying = false
local SpeedGet = 0
local SpeedFly = 2 -- Change this for speed
local SPEED = SpeedGet
local CONTROL = {F = 0, B = 0, L = 0, R = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0}

-- Function

function Fly()
local Plr = game:GetService("Players").LocalPlayer
local Char = Plr.Character
local Root = Char.HumanoidRootPart
local Hum = Char.Humanoid

local Mouse = Plr:GetMouse()
Flying = true
local BG = Instance.new('BodyGyro', Root)
local BV = Instance.new('BodyVelocity', Root)
BG.P = 9e4
BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
BG.cframe = Root.CFrame
BV.velocity = Vector3.new(0, 0.1, 0)
BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
spawn(function()
repeat wait()
Hum.PlatformStand = true
if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
  SPEED = 50
elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
  SPEED = 0
end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
  BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
  lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
  BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
  BV.velocity = Vector3.new(0, 0.1, 0)
end
BG.cframe = workspace.CurrentCamera.CoordinateFrame
until not Flying
CONTROL = {F = 0, B = 0, L = 0, R = 0}
lCONTROL = {F = 0, B = 0, L = 0, R = 0}
SPEED = 0
BG:destroy()
BV:destroy()
end)
end

-- Toggle Script


-- Passive


game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()



Flying = false
end)


game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(KEY)



if KEY:lower() == 'w' then
CONTROL.F = SpeedFly
elseif KEY:lower() == 's' then
CONTROL.B = -SpeedFly
elseif KEY:lower() == 'a' then
CONTROL.L = -SpeedFly
elseif KEY:lower() == 'd' then
CONTROL.R = SpeedFly
end
end)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)


PlayerTool:Cheat("Checkbox","Fly",function(State)
if State then
Fly()
else
Flying = false
wait(.25)
game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand = false
end

notify("Fly","Is up and running")

end)

-- Variables
_G.noclip = false;
_G.speed = 16;

-- functions and stuff

game:getService("RunService"):BindToRenderStep("",0,function()
if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
if _G.noclip then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
end)

PlayerTool:Cheat("Checkbox","Noclip",function(State)
_G.noclip = State

notify("Noclip","Is up and running")

end)

-- Chat Tools ---------------------------------------------------------

ChatTool:Cheat("Button", "Chat Spy", function()
enabled = true
spyOnMyself = false
public = false
publicItalics = true
privateProperties = {
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}
--////////////////////////////////////////////////////////////////
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

local function onChatted(p,msg)
	if _G.chatSpyInstance == instance then
		if p==player and msg:lower():sub(1,4)=="/spy" then
			enabled = not enabled
			wait(0.3)
			privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
			StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		elseif enabled and (spyOnMyself==true or p~=player) then
			msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
			local hidden = true
			local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
				if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
					hidden = false
				end
			end)
			wait(1)
			conn:Disconnect()
			if hidden and enabled then
				if public then
					saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
				else
					privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				end
			end
		end
	end
end

for _,p in ipairs(Players:GetPlayers()) do
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
notify("Chat Spying","Is up and running")
end, {text = "Get Spying"})

ChatTool:Cheat("Button", "Chat Disabled", function()
game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', false)
notify("Chat","Disabled")
end, {text = "Disabled"})

ChatTool:Cheat("Button", "Chat Enabled", function()
game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', true)
notify("Chat","Enabled")
end, {text = "Enabled"})

ChatTool:Cheat("Button", "Emoji", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/C7aWrxu5'),true))()
notify("Emoji","Enabled")
end, {text = "Emoji"})


-- Anti Kick ---------------------------------------------------------

AntiKick:Cheat("Label", "Anti Kick: Press F9 to make sure its running.")

AntiKick:Cheat("Button", "Anti Kick", function()
wait(1)
print("Checking if Anti_Kick is already running.")
wait(2)
table.foreach(workspace:GetChildren(),function(a,b) if b.Name=="Anti_Kicklul" then game:GetService("Workspace").Anti_Kicklul:Destroy() end end)
wait(1)
warn("Initializing Anti Kick....")
wait(1.5)
Instance.new("BoolValue",workspace).Name="Anti_Kicklul"
AK=math.random(1,2)
if AK==1 then
    game.Workspace.Anti_Kicklul.Value = true
elseif AK==2 then
    game.Workspace.Anti_Kicklul.Value = false
end
wait(2.5)
AntiKick = game.Workspace.Anti_Kicklul.Value
if AntiKick == true then
print("Anti kick has loaded and is now running. Took [8] Seconds!")
elseif AntiKick == false then
print("Anti kick failed to run! Run Script again")
end
wait(1)
if AntiKick == true then
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
print("Character Respawned. Anti Kick Should Work Fine Now!")
end
notify("Anti Kick","Press F9 To make sure its running")

end, {text = "Run Anti Kick "})

AntiKick:Cheat("Label", "")
AntiKick:Cheat("Label", "")

Mouse = game.Players.LocalPlayer:GetMouse()

Instance.new('RemoteEvent', game:service'ReplicatedStorage'.Interaction).Name = "Ban"

-- Other Tool ---------------------------------------------------------


-- Anti-AFK

OtherTool:Cheat("Button", "Anti-AFK", function()
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
function()
vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
notify("Anti-AFK","AFK Is up and running")
end, {text = "AFK"})


OtherTool:Cheat("Button", "BlackList All", function()
Client = game.ReplicatedStorage.Interaction.ClientSetListPlayer
players = game.Players
for i, v in pairs(players:GetPlayers()) do
	if v.Name ~= players.LocalPlayer.Name then
		Client:InvokeServer(players.LocalPlayer.BlacklistFolder, v, true)
	end
end
players.PlayerAdded:connect(function(plr)
	Client:InvokeServer(players.LocalPlayer.BlacklistFolder, plr, true)
end)
notify("BlackList","You have Blaclisted all Players")
end, {text = "BlackList"})


OtherTool:Cheat("Button", "Anti BlackList", function()

for i,v in pairs(game.Players:GetPlayers()) do
    if v.BlacklistFolder:FindFirstChild(game.Players.LocalPlayer.Name) then
        v.BlacklistFolder[game.Players.LocalPlayer.Name]:Destroy()
    end
end
game.Workspace.Effects.ChildAdded:connect(function()
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.BlacklistFolder:FindFirstChild(game.Players.LocalPlayer.Name) then
            v.BlacklistFolder[game.Players.LocalPlayer.Name]:Destroy()
        end
    end
end)

local plr = game.Players.LocalPlayer
local cframe
for i,v in next, workspace:GetDescendants() do
    if v:IsA("SpawnLocation") then
	v.Touched:Connect(function(h)
            if h.Parent == plr.Character and cframe then
		plr.Character:SetPrimaryPartCFrame(cframe)
	    end
        end)
    end
end

game:GetService("RunService"):BindToRenderStep("NO HACKS",Enum.RenderPriority.Last.Value,function()
    if game.Players.LocalPlayer.Character.PrimaryPart then
        cframe = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
    end
end)

for i,v in next, debug.getregistry() do
    if type(v)=='function' and debug.getupvalues(v).lastUpdate then
	debug.setupvalue(v,"lastUpdate",math.huge)
	break
    end
end
notify("Un Black","You can now walk on Players Base")
end, {text = "Un Black"})

OtherTool:Cheat("Button", "Reset Character", function()
game.Players.LocalPlayer.Character:BreakJoints()
end, {text = "Reset"})

OtherTool:Cheat("Button", "Flash Light", function()
local mouse = game.Players.LocalPlayer:GetMouse()
function Light()
    player = game.Players.LocalPlayer
    playerChar = player.Character
    playerLight = playerChar.Torso:FindFirstChild("Light")
    if playerLight then
        playerLight:Destroy()
    else
        light = Instance.new("SurfaceLight",playerChar:FindFirstChild("Torso"))
        light.Name = "Light"
        light.Range = 100 -- Change to distance ofthe Light.
        light.Brightness = 30 -- Change to how much.
        light.Shadows = false -- Change it to True/False.

        local play = Instance.new("Sound",playerChar:FindFirstChild("Head"))
        play.SoundId = "http://www.roblox.com/asset/?id=198914875" --Change the "198914875" to any sound ID you want.
        play:Play()
       
    end
end
mouse.KeyDown:connect(function(key)
key = key:lower()
if key == "f" then -- Change this to any Keys but I reccomand leaving it as [F] key.
    Light()
end
end)
notify("Flash Light","Press (F) to turn on and off")
end, {text = "(F) On - Off"})


  OtherTool:Cheat("Button", "Grief Players", function()
  spawn(function()
  while true do
    game:GetService("RunService").Stepped:wait()
  end
  end)
  local function zeroGrav(part)
    if part:FindFirstChild("BodyForce") then return end
    local temp = Instance.new("BodyForce")
    temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
    temp.Parent = part
  end

  for i,v in ipairs(workspace:GetDescendants()) do
    if v:IsA("Part") and v.Anchored == false then
      if not (v:IsDescendantOf(game.Players.LocalPlayer.Character)) then
        zeroGrav(v)
      end
    end
  end

  workspace.DescendantAdded:Connect(function(part)
  if part:IsA("Part") and part.Anchored == false then
    if not (part:IsDescendantOf(game.Players.LocalPlayer.Character)) then
      zeroGrav(part)
    end
  end
  end)


  local LocalPlayer = game:GetService("Players").LocalPlayer
  local unanchoredparts = {}
  local movers = {}
  for index, part in pairs(workspace:GetDescendants()) do
    if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
      table.insert(unanchoredparts, part)
      part.Massless = true
      part.CanCollide = false
      if part:FindFirstChildOfClass("BodyPosition") ~= nil then
        part:FindFirstChildOfClass("BodyPosition"):Destroy()
      end
    end
  end
  for index, part in pairs(unanchoredparts) do
    local mover = Instance.new("BodyPosition", part)
    table.insert(movers, mover)
    mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  end
  repeat
    for index, mover in pairs(movers) do
      mover.Position = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(0, 0, 5))
    end
    wait(0.5)
  until LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
  for _, mover in pairs(movers) do
    mover:Destroy()
  end
notify("Grief Players","Walk up to Players Bases Move there WOOD")
  end, {text = "Move Everything"})


-- Base Tools ---------------------------------------------------------

BaseTool:Cheat("Button", "Freeland", function()
for a,b in pairs(workspace.Properties:GetChildren()) do 
    if b:FindFirstChild("Owner") and b:FindFirstChild("OriginSquare") and b.Owner.Value == nil then 
        game.ReplicatedStorage.PropertyPurchasing.ClientPurchasedProperty:FireServer(b, b.OriginSquare.OriginCFrame.Value.p + Vector3.new(0,3,0))
 wait(0.5)
        Instance.new('RemoteEvent', game:service'ReplicatedStorage'.Interaction).Name = "Ban"
	for i,v in pairs(game.Workspace.Properties:GetChildren()) do
		if v.Owner.Value == game.Players.LocalPlayer then
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    wait(0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,10,0)
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    wait(0.1)
		end
	end

  --     game.Players.LocalPlayer.Character:MoveTo(b.OriginSquare.Position)
        break
    end
end
notify("Freeland","You now have freeland")
end, {text = "Free"})

BaseTool:Cheat("Button", "Maxland", function()
for i, v in pairs(game:GetService("Workspace").Properties:GetChildren()) do
		if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
			base = v
			square = v.OriginSquare
			end
		end
	function makebase(pos)
		local Event = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
		Event:FireServer(base, pos)
		end
	spos = square.Position
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z))
	makebase(CFrame.new(spos.X, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z))
	makebase(CFrame.new(spos.X, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X, spos.Y, spos.Z - 80))
--Corners--
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80))
--Corners--
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))
notify("Max Land","now Active")
end, {text = "Max"})

BaseTool:Cheat("Button", "Blue Prints", function()
for i,v in pairs(game.ReplicatedStorage.Purchasables.Structures.BlueprintStructures:GetChildren()) do
if not game.Players.LocalPlayer.PlayerBlueprints.Blueprints:FindFirstChild(v.Name) then
local clone = v:Clone()
clone.Parent = game.Players.LocalPlayer.PlayerBlueprints.Blueprints
end
end
notify("Blue Prints","now Active")
end, {text = "All Prints"})

BaseTool:Cheat("Button", "GreyWood", function()
	for i,v in next,workspace.PlayerModels:GetChildren() do
        if v:FindFirstChild("Type") then
            if v.Type.Value == "Blueprint" then
                v.Type.Value = "Structure"
            end
        end
    end
notify("Gray Prints","Pick the BluePrint up then palce it back down")
end, {text = "Gray Prints"})


BaseTool:Cheat("Button", "Pink Wires", function()

local typecurrent = false
if typecurrent == true then
        typecurrent = false
                local c = game.ReplicatedStorage.Purchasables:FindFirstChild("IcicleWireMagenta", true)
            c.Name = "Wire"
            local d = game.ReplicatedStorage.Purchasables:FindFirstChild("Wire", true)
            d:Destroy()
elseif typecurrent == false then
        typecurrent = true
            local a = game.ReplicatedStorage.Purchasables:FindFirstChild("NeonWirePinky", true)
            a.Name = "Wire"
            local b = game.ReplicatedStorage.Purchasables:FindFirstChild("Wire", true)
            b:Destroy()
        end
notify("Pink Wires","Place wire on switch, rejoin game")
end, {text = "Pink"})


BaseTool:Cheat("Button", "Clear Entire Base", function()
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v:FindFirstChild("Type") and v.Owner.Value == game.Players.LocalPlayer then
local A_1 = v
local Event = game:GetService("ReplicatedStorage").Interaction.DestroyStructure
Event:FireServer(A_1)
end
end
notify("Clear Entire Base","You have just Destroyed your Base")
end, {text = "Wipe"})

BaseTool:Cheat("Button", "Clear Blueprints", function()
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v:FindFirstChild("Type") and v.Owner.Value == game.Players.LocalPlayer then
	if v.Type.Value == "Blueprint" then
local A_1 = v
local Event = game:GetService("ReplicatedStorage").Interaction.DestroyStructure
Event:FireServer(A_1)
end
end
end
notify("Clear Blueprints","You have just Destroyed your Blueprints")
end, {text = "Wipe"})

BaseTool:Cheat("Button", "Clear Structures", function()
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v:FindFirstChild("Type") and v.Owner.Value == game.Players.LocalPlayer then
	if v.Type.Value == "Structure" or v.Type.Value == "Furniture" then
local A_1 = v
local Event = game:GetService("ReplicatedStorage").Interaction.DestroyStructure
Event:FireServer(A_1)
end
end
end
notify("Clear Structures","You have just Destroyed your Structures")
end, {text = "Wipe"})

BaseTool:Cheat("Button", "(CyclicaIIy) BTOOLS", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/a2nVDRVZ'),true))()
notify("BTOOLS","have just actived")
end, {text = "Tool"})

-- Dupe Tools  ---------------------------------------------------------

DupeTool:Cheat("Button", "Count Axes", function()

Amount = 0
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b.Name == "Tool" and b.ClassName == "Tool" then
  Amount = Amount + 1
end
end

for a,b in pairs(workspace.PlayerModels:GetChildren()) do
if b:FindFirstChild("Owner") and b.Owner.Value == game.Players.LocalPlayer then
  if b:FindFirstChild("Type") and b.Type.Value == "Tool" then
    Amount = Amount + 1
  end
end
end
notify("Axe Amount","You have "..Amount.." Axes in Total",5)

end, {text = "Count"})

DupeTool:Cheat("Button", "Drop Axes", function()

for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b.Name == "Tool" and b.ClassName == "Tool" then
  game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(b, "Drop tool", game.Players.LocalPlayer.Character.Head.CFrame)
end
end
end, {text = "Drop"})

function teleport(cf)
  game.Players.LocalPlayer.Character.Humanoid.Jump = true

  local Plr = game:GetService("Players").LocalPlayer
  local Char = Plr.Character
  local Root = Char.HumanoidRootPart
  local Hum = Char.Humanoid

  Root:Clone().Parent = Char
  Char:MoveTo(cf.Position)
  Root:Destroy()

  game.Players.LocalPlayer.Character.Humanoid.Jump = false
end
------------------------------------------------------------------------------------------------
DupeTool:Cheat("Button", "Dupe Axes", function()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

local LP = game.Players.LocalPlayer
local CFR = LP.Character.Head.CFrame * CFrame.new(0,5,0)

if LP.Character:FindFirstChild("Tool") then
  LP.Character.Tool.Parent = game.Players.LocalPlayer.Backpack
end
for a,b in pairs(LP.Character:GetChildren()) do
  if b.ClassName == "Part" then
    b:Destroy()
  end
end
wait(.5)
local ab1 = {}

for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
  if b.Name == "Tool" and b.ClassName == "Tool" then

    game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(b, "Drop tool", CFR)
    local Purchased
    Purchased = game.Workspace.PlayerModels.ChildAdded:connect(function(new)
    if new:WaitForChild("Owner").Value == game.Players.LocalPlayer then

      table.insert(ab1,new)
      Purchased:Disconnect()
      return;
    end

    end)

  end

end

repeat wait(.1)
until LP.Character and LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health > 0 and LP.Character:FindFirstChild("Head")

-- pick up
teleport(oldpos)
for a,b in pairs(ab1) do

  if #game.Players.LocalPlayer.Backpack:GetChildren() < 9 then
    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(b,"Pick up tool")
    wait(0.2)
    if LP.Character:FindFirstChild("Tool") then
      LP.Character.Tool.Parent = game.Players.LocalPlayer.Backpack
    end

  end
end
end
end, {text = "Dupe"})

-------------------------------------------------------------------------------------------------------------------------
DupeMoney:Cheat("Button", "Dupe Money", function()

notify("Dupe Money","This Takes Three Mins")
local Manager = game:GetService("VirtualInputManager")

local Folder5 = Instance.new("Folder", game.Workspace)
Folder5.Name = "Folder5"

local CanLoad
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
    v.Owner.Changed:connect(function(Val)
        if Val == game:GetService("Players").LocalPlayer then
            repeat
                wait()
            until game.Players.LocalPlayer.leaderstats.Money.Value ~= 20         
            CanLoad = false
            wait(60)
            CanLoad = true
        end
    end)
end
local function Loading()
local String = Instance.new("StringValue", Folder5)
end

local function Load(Save)
    if game.Players.LocalPlayer.CurrentSaveSlot.Value ~= -1 then
        Loading()
        game.ReplicatedStorage.LoadSaveRequests.RequestLoad:InvokeServer(Save)
    end
end

local function Send()
    if game.Players.LocalPlayer.CurrentSaveSlot.Value ~= -1 and game.Players.LocalPlayer.leaderstats.Money.Value ~= 20 and game.Players.LocalPlayer.leaderstats.Money.Value ~= 0 then
        local Str = Instance.new("NumberValue", Folder5)
    end
end

local function Save()
    if game.Players.LocalPlayer.CurrentSaveSlot.Value ~= -1 and game.Players.LocalPlayer.leaderstats.Money.Value ~= 20 and game.Players.LocalPlayer.leaderstats.Money.Value ~= 0 then
        local Str = Instance.new("BoolValue", Folder5)
    end
end


local MoneyBack = false
local SlotNumber
Folder5.ChildAdded:connect(function(child)
if child:IsA("StringValue") then
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.Visible = false
repeat
    wait(0.1)
until game:GetService("Players").LocalPlayer.PlayerGui.PropertyPurchasingGUI.SelectPurchase.Visible == true
wait(1.2)
Manager:SendKeyEvent(true,"E",false,game)
repeat
    wait(0.1)
until game:GetService("Players").LocalPlayer.PlayerGui.PropertyPurchasingGUI.ConfirmPurchase.Visible == true
wait(1.2)
Manager:SendKeyEvent(true,"E",false,game)
wait(2.5)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.Visible = true
if game:GetService("Players").LocalPlayer.PlayerGui.PropertyPurchasingGUI.ConfirmPurchase.Visible == true then
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
wait(7)
Load(SlotNumber)
end
elseif child:IsA("NumberValue") then
MoneyBack = false
game.ReplicatedStorage.Transactions.ClientToServer.Donate:InvokeServer(game.Players.LocalPlayer, game.Players.LocalPlayer.leaderstats.Money.Value, 1)
MoneyBack = true
elseif child:IsA("BoolValue") then
game.ReplicatedStorage.LoadSaveRequests.RequestSave:InvokeServer(SlotNumber)
end
end)
function MoneyDupe(Times)
for i = 1, Times do
SlotNumber = game.Players.LocalPlayer.CurrentSaveSlot.Value
wait(30)
repeat
Send()
wait(2.5)
until game.Players.LocalPlayer.leaderstats.Money.Value == 0
if CanLoad ~= nil then
repeat
wait(0.1)
until CanLoad == true
else
wait(27.5)
end
Load(SlotNumber)
repeat
wait(0.1)
until MoneyBack == true
Save()
if i ~= Times then
repeat
Send()
wait(2.5)
until game.Players.LocalPlayer.leaderstats.Money.Value == 0
end
end
end

MoneyDupe(1)



end, {text = "Auto Dupe"})

-----------------------------------------------------------------------------------------------------------------------------------


Dupeitems:Cheat("Button", "Dupe Items", function()
notify("Dupe Items","w/list PLayer, Move items to his base, He reloads, Then you reload")
if game.ReplicatedStorage.Transactions:FindFirstChild("AddLog") then 
	game.ReplicatedStorage.Transactions.AddLog:Destroy()
end

while wait(.25) do
		game.Players.LocalPlayer.CurrentSaveSlot.Value = -1
	end

end, {text = "Dupe"})


--------------waypoints-----------------------------------------------

Players2 = {}

for i,v in next, game.Players:GetChildren() do
table.insert(Players2, v.Name)
end
_G.SelectedPlayer = Players2[1];

local U = MiscTp:Cheat("Dropdown", "Players", function(Option)
_G.SelectedPlayer = Option
end, {options = Players2})

game.Players.PlayerRemoving:Connect(function(plrD)
for i,v in next, Players2 do
if v == plrD.Name then
  U:RemoveOption(plrD.Name)
  table.remove(Players2, i)
end
end
end)

game.Players.PlayerAdded:Connect(function(plrD)
U:AddOption(plrD.Name)
table.insert(Players2, plrD.Name)
end)

MiscTp:Cheat("Button", "Teleport To Bases", function()
local Base
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
    if  v.Owner.Value ~= nil and v.Owner.Value == game.Players[_G.SelectedPlayer] then
        Base = v.OriginSquare.CFrame + Vector3.new(0,5,0)
    end
end

_G.Teleport(CFrame.new(Base.X, Base.Y, Base.Z))

end, {text = "Tp to Base"})

MiscTp:Cheat("Button", "Teleport To Player", function()
local Plr
Plr = game.Players[_G.SelectedPlayer].Character.HumanoidRootPart.CFrame
if Plr ~= nil then
_G.Teleport(CFrame.new(Plr.X, Plr.Y, Plr.Z))
end
end, {text = "Teleport"})

MiscTp:Cheat("Button", "Spawn Point", function()
_G.Teleport(CFrame.new(155, 5, 74))
end, {text = "Teleport"})


MiscTp:Cheat("Button", "Click Tp Tool", function()
local tool = Instance.new("Tool")
tool.Name = "Tp Tool"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Parent = game.Players.LocalPlayer.Backpack
tool.Equipped:Connect(function(mouse)
mouse.Button1Down:connect(function()
if mouse.Target and mouse.Target.Parent then
_G.Teleport(CFrame.new(mouse.Hit.Position.X, mouse.Hit.Position.Y + 3.2, mouse.Hit.Position.Z))
end
end)
end)
end, {text = "Tp Tool"})

-- Shops ---------------------------------------------------------

Shops:Cheat("Button", "Wood R Us", function()
_G.Teleport(CFrame.new(268.4, 3.2, 52.1))
end, {text = "Teleport"})

Shops:Cheat("Button", "Fancy Furnishings", function()
_G.Teleport(CFrame.new(491, 13, -1720))
end, {text = "Teleport"})

Shops:Cheat("Button", "Links Logic", function()
_G.Teleport(CFrame.new(4607, 9, -798))
end, {text = "Teleport"})

Shops:Cheat("Button", "Car Shop", function()
_G.Teleport(CFrame.new(508.5, 3.2, -1462.7))
end, {text = "Teleport"})

Shops:Cheat("Button", "Fine Arts Shop", function()
_G.Teleport(CFrame.new(5207, -156, 719))
end, {text = "Teleport"})

Shops:Cheat("Button", "Bobs Shack", function()
_G.Teleport(CFrame.new(260, 10, -2542))
end, {text = "Teleport"})

-- Land Marks ---------------------------------------------------------

Landm:Cheat("Button", "The Den", function()
_G.Teleport(CFrame.new(323, 49, 1930))
end, {text = "Teleport"})

Landm:Cheat("Button", "Shrine Of Sight", function()
_G.Teleport(CFrame.new(-1600, 205, 919))
end, {text = "Teleport"})

Landm:Cheat("Button", "Ski Lodge", function()
_G.Teleport(CFrame.new(1244, 66, 2306))
end, {text = "Teleport"})

Landm:Cheat("Button", "Dock", function()
_G.Teleport(CFrame.new(1114, 3.2, -197))
end, {text = "Teleport"})

Landm:Cheat("Button", "Bridge", function()
_G.Teleport(CFrame.new(113, 15, -977))
end, {text = "Teleport"})

Landm:Cheat("Button", "Stranger", function()
_G.Teleport(CFrame.new(1061, 20, 1131))
end, {text = "Teleport"})

Landm:Cheat("Button", "Volcano Win", function()
_G.Teleport(CFrame.new(-1675, 358, 1476))
end, {text = "Teleport"})

Landm:Cheat("Button", "Light House", function()
_G.Teleport(CFrame.new(1464.8, 356.3, 3257.2))
end, {text = "Teleport"})

Landm:Cheat("Button", "Bird Axe Cave", function()
_G.Teleport(CFrame.new(4813.1, 33.5, -978.8))
end, {text = "Teleport"})

Landm:Cheat("Label", "")
Landm:Cheat("Label", "")
Landm:Cheat("Label", "")

-- Tree Areas ---------------------------------------------------------


Treem:Cheat("Button", "Palm Area", function()
_G.Teleport(CFrame.new(2549, -5, -42))
end, {text = "Teleport"})

Treem:Cheat("Button", "Swamp Area", function()
_G.Teleport(CFrame.new(-1209, 132, -801))
end, {text = "Teleport"})

Treem:Cheat("Button", "Volcano Area", function()
_G.Teleport(CFrame.new(-1585, 622, 1140))
end, {text = "Teleport"})

Treem:Cheat("Button", "Frost Area", function()
_G.Teleport(CFrame.new(1448.3, 413, 3185.2))
end, {text = "Teleport"})

Treem:Cheat("Button", "SnowGlow Area", function()
_G.Teleport(CFrame.new(-1105.9, -6, -894))
end, {text = "Teleport"})

Treem:Cheat("Button", "Koa Area", function()
_G.Teleport(CFrame.new(5022.4, 6.1, -503.1))
end, {text = "Teleport"})

Treem:Cheat("Button", "CaveCrawler Area", function()
_G.Teleport(CFrame.new(3488.1, -199.8, 519.1))
end, {text = "Teleport"})

Treem:Cheat("Button", "Pine & Fir  Area", function()
_G.Teleport(CFrame.new(1284.9, 59.8, 2136.1))
end, {text = "Teleport"})

Treem:Cheat("Button", "Walnut  Area", function()
_G.Teleport(CFrame.new(-282.3, 8, -1555.8))
end, {text = "Teleport"})

Treem:Cheat("Button", "Birch  Area", function()
_G.Teleport(CFrame.new(-395.5, 244.8, 1275.4))
end, {text = "Teleport"})

Treem:Cheat("Button", "Cherry  Area", function()
_G.Teleport(CFrame.new(220.9, 59.8, 1305.8))
end, {text = "Teleport"})

Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")
Treem:Cheat("Label", "")

-- Wood Tools  ---------------------------------------------------------

			WoodTools:Cheat("Button", "Remove Trees", function()
				for i,v in pairs(game.Workspace:GetDescendants()) do
					if v.Name == "WoodSection" and v.Parent:FindFirstChild("CutEvent") then
						game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.Parent)
						game.ReplicatedStorage.Interaction.DestroyStructure:FireServer(v.Parent)
					end
				end
				game.Workspace.DescendantAdded:connect(function(Thing)
					wait(0.1)
					if Thing.Name == "WoodSection" and Thing.Parent:FindFirstChild("CutEvent") then
						game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Thing.Parent)
						game.ReplicatedStorage.Interaction.DestroyStructure:FireServer(Thing.Parent)
					end
				end)
	 notify("Remove Trees","Watch all the trees go")
				end,{text = "Remove All"})




function TpTree()
    for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
        if v.Name:sub(1, 6) == "Loose_" and v:findFirstChild("Owner") then
            if v.Owner.Value == game.Players.LocalPlayer then
                GetLastPos()
                wait(0.1)
                if KRNL_LOADED then
                    _G.Teleport2(CFrame.new(v:FindFirstChildOfClass('Part').Position))
                     elseif syn then
                    _G.Teleport2(CFrame.new(v:FindFirstChildOfClass('Part').Position))
                     elseif SENTINEL_LOADED then
                    _G.Teleport2(CFrame.new(v:FindFirstChildOfClass('Part').Position))
                end
                wait(0.1)
                for i = 1, 9 do
                    v:MoveTo(Vector3.new(Pos + Vector3.new(0, 10, 0)))
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                    v:MoveTo(Vector3.new(Pos + Vector3.new(0, 10, 0)))
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                    v:MoveTo(Vector3.new(Pos + Vector3.new(0, 10, 0)))
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                    v:MoveTo(Vector3.new(Pos + Vector3.new(0, 10, 0)))
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                    wait()
                end
                wait(0.8)
                v:MoveTo(Pos + Vector3.new(0, 10, 2))
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                v:MoveTo(Pos + Vector3.new(0, 10, 2))
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                _G.Teleport2(CFrame.new(Pos) + Vector3.new(0, 10, 2))
    end
        end
    end
end

WoodTools:Cheat("Button", "Trees", function()
TpTree()
end,{text = "Move Cut Trees"})

			WoodTools:Cheat("Button", "Tp all Planks", function()
				enabled = true
				spawn(function()
					while true do
						game:GetService("RunService").Stepped:wait()
						if enabled == false then break end
					end
				end)
				for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
					if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then
						if Plank.Owner.Value == game.Players.LocalPlayer then
							sendNotice = game.ReplicatedStorage.Notices.SendUserNotice
							sendNotice:Fire("Click where you want ALL the Planks to TP to")
							local ButtonPress
							ButtonPress = game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
								Square = game.Players.LocalPlayer:GetMouse().Target
								if (Square.Name == "OriginSquare" or Square.Name == "Square") then
									ButtonPress:Disconnect()
									Plank:MoveTo(Square.Position)
									for i=1,100 do
										game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
									end
								end
							end)
						end
					end
				end
				enabled = false
			end,{text = "Planks"})

			WoodTools:Cheat("Button", "Sell all Planks", function()
				enabled = true
				spawn(function()
					while true do
						game:GetService("RunService").Stepped:wait()
						if enabled == false then break end
					end
				end)
				for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
					if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then
						if Plank.Owner.Value == game.Players.LocalPlayer then
							for i,v in pairs(Plank:GetChildren()) do
								if v.Name=="WoodSection" then
									spawn(function()
										for i=1,10 do
											wait()
											v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
										end
									end)
								end
							end
							spawn(function()
								for i=1,20 do
									wait()
									game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank.WoodSection)
									game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Plank.WoodSection)
								end
							end)
						end
					end
				end
				enabled = false
			end,{text = "Sell Planks"})

WoodTools:Cheat("Button", "Sell all Trees", function()
           for _, Log in pairs(workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == game.Players.LocalPlayer then
                for i,v in pairs(Log:GetChildren()) do
                    if v.Name=="WoodSection" then
                        spawn(function()
                            for i=1,10 do
                                wait()
                                v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
                            end
                        end)
                    end
                end
                spawn(function()
                    for i=1,20 do
                        wait()
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log.WoodSection)
			game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Log.WoodSection)
                    end
                end)
            end
        end
    end
end,{text = "Sell Trees"})


sawmillkey = "q"
tptosawmillkey = "e"
sellkey = "r"

SawMillTools:Cheat("Checkbox","Press (q) on mill, (e) on Log (r) Sell Planks + Trees",function(Key)


Mouse = game.Players.LocalPlayer:GetMouse()

Treee = nil

Mouse.KeyDown:connect(function(key)
    if key:lower() == tptosawmillkey then
        Treee = Mouse.Target
    end
    if Treee ~= nil then
        Mod(Treee)
    end
end)

Mouse.KeyDown:connect(function(key)
    if key:lower() == sawmillkey then
        if Mouse.Target.Parent:FindFirstChild("BlockageAlert") then
            Sawmill = Mouse.Target.Parent 
        else 
            Sawmill = Mouse.Target.Parent.Parent
        end
        if Sawmill:FindFirstChild("BlockageAlert") and Sawmill:FindFirstChild("Owner") then
            SawmillC = true
            SawmillSetTitle.Text = "Selected"
            SawmillSetTitle.TextColor3 = Color3.new(0, 255, 0)
        else
            SawmillC = false
            print"Something went wrong while setting the sawmill!"
        end
    end
end)

function Mod(SelectedPart)
    if SawmillC ~= true then 
        print'Set the sawmill with "P"!'
        return
    end
    if SelectedPart.Parent:FindFirstChild("TreeClass") and SelectedPart.Parent:FindFirstChild("Owner") then
        local Tree = SelectedPart.Parent
        Tree.PrimaryPart = SelectedPart
        game.ReplicatedStorage.Interaction.Verify:FireServer('Item owned by player',Tree)
        Tree:SetPrimaryPartCFrame(Sawmill.Particles.CFrame)
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Tree)
    end
end

Wood = nil

Mouse.KeyDown:connect(function(key)
	if key:lower() == sellkey then
		Wood = Mouse.Target
	end
    if Wood ~= nil then
        Move(Wood)
    end
end)

        function Move(SelectedPart)
	if SelectedPart.Parent:FindFirstChild("TreeClass") and SelectedPart.Parent:FindFirstChild("Owner") then
		local Tree = SelectedPart.Parent
		Tree.PrimaryPart = SelectedPart
		game.ReplicatedStorage.Interaction.Verify:FireServer('Item owned by player',Tree)				
		Tree:SetPrimaryPartCFrame(CFrame.new(330.3, -0.4, 91.3))
		game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Tree)
	end
end


end)
             WoodTools:Cheat("Button", "Mod Wood", function()
           for _, Log in pairs(workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == game.Players.LocalPlayer then
                for i,v in pairs(Log:GetChildren()) do
                    if v.Name=="WoodSection" then
                        spawn(function()
                            for i=1,10 do
                                wait()
                                v.CFrame=CFrame.new(Vector3.new(310, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
                            end
                        end)
                    end
                end
                spawn(function()
                    for i=1,20 do
                        wait()
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log.WoodSection)
			game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Log.WoodSection)
                    end
                end)
            end
        end
    end
Wait(0.5)
local PD = nil
for i,v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players.LocalPlayer then
PD = v.OriginSquare.Position + Vector3.new(0,30,0)
end
end

if PD == nil then
PD = Vector3.new(155, 15, 74)
end

for i,v in pairs(Workspace.LogModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(PD)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(PD)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(PD)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
end
end
				
					 oknjasjdansjod = true
					end,{text = "Mod"})

-----------------------------------------------------------------------------------------------------------------------------
Players2 = {}

for i,v in next, game.Players:GetChildren() do
table.insert(Players2, v.Name)
end
_G.SelectedPlayer = Players2[1];

local K = BringTree:Cheat("Dropdown", "Players", function(Option)
_G.SelectedPlayer = Option
end, {options = Players2})

game.Players.PlayerRemoving:Connect(function(plrD)
for i,v in next, Players2 do
if v == plrD.Name then
  K:RemoveOption(plrD.Name)
  table.remove(Players2, i)
end
end
end)

game.Players.PlayerAdded:Connect(function(plrD)
K:AddOption(plrD.Name)
table.insert(Players2, plrD.Name)
end)

local treetype = "Generic"
local treeamount = 1;

BringTree:Cheat("Textbox", "Tree Amount", function(Value)
Quantitys = tonumber(Value)
end, {
placeholder = "Quantity"
})

BringTree:Cheat("Button", "Gold Swampy", function()
GetTree("GoldSwampy", "_G.SelectedPlayer", Quantitys)
end, {text = "Gold"})

BringTree:Cheat("Button", "Green Swampy", function()
GetTree("GreenSwampy", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Green"})

BringTree:Cheat("Button", "Cave Crawler", function()
GetTree("CaveCrawler", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Blue"})

BringTree:Cheat("Button", "Palm", function()
GetTree("Palm", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Light Gray"})

BringTree:Cheat("Button", "Frost", function()
GetTree("Frost", "_G.SelectedPlayer", Quantitys)
end, {text = "Ice"})

BringTree:Cheat("Button", "Volcano", function()
GetTree("Volcano", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Red"})

BringTree:Cheat("Button", "Koa", function()
GetTree("Koa", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Orange Brown"})

BringTree:Cheat("Button", "Oak", function()
GetTree("Oak", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Light Brown"})

BringTree:Cheat("Button", "SnowGlow", function()
GetTree("SnowGlow", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Shiny Yellow"})

BringTree:Cheat("Button", "Walnut", function()
GetTree("Walnut", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Dark Brown"})

BringTree:Cheat("Button", "Birch", function()
GetTree("Birch", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "White"})

BringTree:Cheat("Button", "Generic", function()
GetTree("Generic", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Brown"})

BringTree:Cheat("Button", "Cherry", function()
GetTree("Cherry", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Light Red"})

BringTree:Cheat("Button", "Fir", function()
GetTree("Fir", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Light Brown"})

BringTree:Cheat("Button", "Pine", function()
GetTree("Pine", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Light Brown"})

BringTree:Cheat("Button", "SpookyNeon", function()
GetTree("SpookyNeon", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Bright Yellow"})

BringTree:Cheat("Button", "Spooky", function()
GetTree("Spooky", "game.Players.LocalPlayer.Character", Quantitys)
end, {text = "Brownish Black"})


SawMillTools:Cheat("Label", "Keys use :- t,y,r,x,c + Mouse")

SawMillTools:Cheat("Button", "Hard Drag (Physics gun) ", function()

loadstring(game:HttpGet(('https://pastebin.com/raw/yjQDW9N1'), true))()

end, {text = "Physics"})

-- LoneCave  ---------------------------------------------------------
LoneCave:Cheat("Label", "This is BETA dos Not work all the time")
LoneCave:Cheat("Label", "Best works on Private Servers")
LoneCave:Cheat("Label", "When you Press Bring it will Pause for about 30 secs")
LoneCave:Cheat("Label", "")
LoneCave:Cheat("Label", "1: Click Till Player Stops Dying")
LoneCave:Cheat("Label", "2: Pick Up EndTimes Axe Put In Hand")
LoneCave:Cheat("Label", "3: Press Bring Tree")
LoneCave:Cheat("Label", "4: Rest Character ")
LoneCave:Cheat("Label", "")

function teleport(cf)
  game.Players.LocalPlayer.Character.Humanoid.Jump = true

  local Plr = game:GetService("Players").LocalPlayer
  local Char = Plr.Character
  local Root = Char.HumanoidRootPart
  local Hum = Char.Humanoid

  Root:Clone().Parent = Char
  Char:MoveTo(cf.Position)
  Root:Destroy()

  game.Players.LocalPlayer.Character.Humanoid.Jump = false
end

function bringtree(whattype,howmany)

if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Tool") then

  return
end

local Treescut = 0;

function cuttree(Tree)
  function GetDamage(Axe, TreeClass)-- Gets the right Damage of the axe and returns it if called to prevent killing yourself like gold axe
    if Axe.ToolTip == "Basic Hatchet" then return 0.2
  elseif Axe.ToolTip == "Plain Axe" then return 0.55
  elseif Axe.ToolTip == "Steel Axe" then return 0.93
  elseif Axe.ToolTip == "Hardened Axe" then return 1.45
  elseif Axe.ToolTip == "Silver Axe" then return 1.6
  elseif Axe.ToolTip == "Rukiryaxe" then return 1.68
  elseif Axe.ToolTip == "RustyAxe" then return 0.55
  elseif Axe.ToolTip == "Beta Axe of Bosses" then return 1.45
  elseif Axe.ToolTip == "Alpha Axe of Testing" then return 1.5
  elseif Axe.ToolTip == "Fire Axe" then
    if TreeClass ~= "Volcano" then return 0.6 else return 6.35 end
  elseif Axe.ToolTip == "End Times Axe" then
    if TreeClass ~= "LoneCave" then return 1.58 else return 10000000 end
  elseif Axe.ToolTip == "Candy Cane Axe" then return 0
  elseif Axe.ToolTip == "Beesaxe" then return 1.4
  elseif Axe.ToolTip == "Candy Corn Axe" then return 1.75
elseif Axe.ToolTip == "Cave Axe" then
    if TreeClass ~= "CaveCrawler" then return 0.4 else return 7.2 end
  elseif Axe.ToolTip == "CHICKEN AXE" then return 0.9
  elseif Axe.ToolTip == "Amber Axe" then return 3.39
  elseif Axe.ToolTip == "The Many Axe" then return 10.2
  elseif Axe.ToolTip == "Gingerbread Axe" then
    if TreeClass == "Walnut" then return 8.5
  elseif TreeClass == "Koa" then return 11 else return 1.2 end
  elseif Axe.ToolTip == "Bird Axe" then
    if TreeClass == "Volcano" then return 2.5 elseif TreeClass == "CaveCrawler" then return 3.9 else return 1.65 end
  end
end

local Argument1 = Tree.CutEvent
local Argument2 =
{

  ["tool"] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Tool"),
  ["faceVector"] = Vector3.new(0, 0, 1),
  ["height"] = 0.3,
  ["sectionId"] = 1,
  ["hitPoints"] = GetDamage(game:GetService("Players").LocalPlayer.Character:FindFirstChild("Tool"),Tree.TreeClass.Value)

}

game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Argument1,Argument2)
end
local playerpos = nil;
local playerpos1 = nil;

local playerpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,5,0)
local playerpos1 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,10)

for i,v in pairs(game.Workspace:GetDescendants()) do
if v.Name == "Model" and v:FindFirstChild("TreeClass")  and v.TreeClass.Value == whattype then


  teleport(v.WoodSection.CFrame + Vector3.new(5,0,5))

  local achmedtpsdasd = false;
  Purchased = game.Workspace.LogModels.ChildAdded:connect(function(new)

  if new:WaitForChild("Owner").Value == game.Players.LocalPlayer then
    achmedtpsdasd = true;
    local yes12312321 = false;
    spawn(function()

    while true do game:GetService("RunService").Heartbeat:Wait()
      for i,v in pairs(game.Players:GetPlayers()) do
        if yes12312321 == true then break end
        if v == game.Players.LocalPlayer == false then
        game:GetService("RunService").Stepped:wait()
        end
      end

----------------------------

      if yes12312321 == true then break end
    end

    end)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = new.WoodSection.CFrame
wait()
for i=1,20 do
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(new)
game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(new.WoodSection)
end
  yes12312321 = true;
  Purchased:Disconnect()
  return;
end
end)
repeat
  wait(0.00000000000000000000001)
  cuttree(v)

until achmedtpsdasd == true
						
Treescut = Treescut + 1;
if howmany - Treescut == 0 then
print("Breaked")
break
end
wait(0.4)
end
end
wait(0.4)

local Ps = nil
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value ==game.Players.LocalPlayer then
Ps = v.OriginSquare.Position + Vector3.new(0,30,0)
end
end

if Ps == nil then
Ps = Vector3.new(155, 15, 74)
end

for i,v in pairs(Workspace.LogModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(Ps)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(Ps)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
v:MoveTo(Ps)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
end
end
wait(0.5)

for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players[_G.SelectedPlayer] then
_G.Teleport1(v.OriginSquare.Position.X, v.OriginSquare.Position.Y + 3.2, v.OriginSquare.Position.Z)
end
end
end


local treetype = "LoneCave"
local treeamount = 1;

LoneCave:Cheat("Button", "1. Click Till Stops Dieing ", function()
if game.Players.LocalPlayer.OwnsProperty.Value == true then
wait()
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
  if v.Owner.Value == game.Players.LocalPlayer then
    teleport(v.OriginSquare.CFrame + Vector3.new(0,5,0))
end
end
end
end, {text = "Set Character"})

LoneCave:Cheat("Button", "3. Bring Tree", function()
bringtree(treetype,treeamount)
end,{text = "Bring"})

LoneCave:Cheat("Button", "4. Reset Character", function()
game.Players.LocalPlayer.Character:BreakJoints()
end, {text = "Reset"})


-- Autobuy  ---------------------------------------------------------

AutoBuySector:Cheat("Label", "Current Time: ")

game:GetService("RunService").RenderStepped:Connect(function()
if game:GetService("CoreGui"):FindFirstChild("bloodUI") then
game:GetService("CoreGui").bloodUI.Container.Categories.Autobuy.L.Autobuy.Container["Current Time: "].Title.Text = "Current Time: " .. tostring(game.Lighting.TimeOfDay):sub(1, -2):sub(1, -2):sub(1, -2)
end
end)


AutoBuySector:Cheat("Label", "")

Players2 = {}

for i,v in next, game.Players:GetChildren() do
table.insert(Players2, v.Name)
end
_G.SelectedPlayer = Players2[1];

local D = AutoBuySector:Cheat("Dropdown", "Players", function(Option)
_G.SelectedPlayer = Option
end, {options = Players2})

game.Players.PlayerRemoving:Connect(function(plrD)
for i,v in next, Players2 do
if v == plrD.Name then
  D:RemoveOption(plrD.Name)
  table.remove(Players2, i)
end
end
end)

game.Players.PlayerAdded:Connect(function(plrD)
D:AddOption(plrD.Name)
table.insert(Players2, plrD.Name)
end)


AutoBuySector:Cheat("Textbox", "Item Quantity", function(Value)
	Qty = Value
end,{placeholder = "Quantity"})

AutoBuySector:Cheat("Button", "Buy Item",function()

local Item = Item
local Quant = Qty

local Base
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players[_G.SelectedPlayer] then
Base = v.OriginSquare
end
end

if not game.ReplicatedStorage:FindFirstChild("Part") then
local a = Instance.new("Part",game.ReplicatedStorage)
game.Workspace.PlayerModels.ChildAdded:connect(function(v)
local BaseC
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players[_G.SelectedPlayer] then
BaseC = v.OriginSquare.CFrame + Vector3.new(0,5,0)
end
end
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
if string.find(v.Name, "Purchased by "..game.Players.LocalPlayer.Name) then
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.PrimaryPart)
game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.PrimaryPart)
wait()
v.PrimaryPart.CFrame = BaseC
wait()
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.PrimaryPart)
game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.PrimaryPart)
end
end
end)
end

if game.Workspace.Stores:FindFirstChild("ShopItems") then
for i,v in pairs(game.Workspace.Stores:GetDescendants()) do
if v.Parent.Name == "ShopItems" then
if v.Name == "Sawmill4L" then
v.Parent.Name = "WoodRUs_"
elseif v.Name == "Pickup1" then
v.Parent.Name = "CarStore_"
elseif v.Name == "LightBulb" then
v.Parent.Name = "FurnitureStore_"
elseif v.Name == "GateXOR" then
v.Parent.Name = "LogicStore_"
elseif v.Name == "CanOfWorms" then
v.Parent.Name = "ShackShop_"
elseif v.Name == "Painting8" then
v.Parent.Name = "FineArt_"
end
end
end
end

function Drag(It)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(It)
end

local Cframe
for i,v in pairs(game.Workspace.Stores:GetChildren()) do
if v:FindFirstChild(Item) then
if v.Name == "WoodRUs_" then
for i=1,Quant do
Cframe = game.Workspace.Stores.WoodRUs.Counter
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
wait(0.4)
local A_1 = 
{
	["Character"] = game:GetService("Workspace").Stores.WoodRUs.Thom, 
	["Name"] = "Thom", 
	["ID"] = 11, 
	["Dialog"] = game:GetService("Workspace").Stores.WoodRUs.Thom.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "CarStore_" then
Cframe = game.Workspace.Stores.CarStore.Counter
for i=1,Quant do
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
wait(0.4)
local A_1 = 
{
	["Character"] = game:GetService("Workspace").Stores.CarStore.Jenny, 
	["Name"] = "Jenny", 
	["ID"] = 12, 
	["Dialog"] = game:GetService("Workspace").Stores.CarStore.Jenny.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "FurnitureStore_" then
Cframe = game.Workspace.Stores.FurnitureStore.Counter
for i=1,Quant do
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
wait(0.4)
local A_1 = 
{
	["Character"] = game:GetService("Workspace").Stores.FurnitureStore.Corey, 
	["Name"] = "Corey", 
	["ID"] = 10, 
	["Dialog"] = game:GetService("Workspace").Stores.FurnitureStore.Corey.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "LogicStore_" then
Cframe = game.Workspace.Stores.LogicStore.Counter
for i=1,Quant do
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
wait(0.4)
local A_1 = 
{
	["Character"] = game:GetService("Workspace").Stores.LogicStore.Lincoln, 
	["Name"] = "Lincoln", 
	["ID"] = 15, 
	["Dialog"] = game:GetService("Workspace").Stores.LogicStore.Lincoln.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "ShackShop_" then
Cframe = game.Workspace.Stores.ShackShop.Counter
for i=1,Quant do
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
wait(0.4)
local A_1 = 
{
	["Character"] = game:GetService("Workspace").Stores.ShackShop.Bob, 
	["Name"] = "Bob", 
	["ID"] = 13, 
	["Dialog"] = game:GetService("Workspace").Stores.ShackShop.Bob.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "FineArt_" then
Cframe = game.Workspace.Stores.FineArt.Counter
for i=1,Quant do
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
_G.Teleport1(v[Item].Main.Position.X + 3 ,v[Item].Main.Position.Y ,v[Item].Main.Position.Z + 3)
wait(0.4)
local A_1 = 
{
	["Character"] = game:GetService("Workspace").Stores.FineArt.Timothy, 
	["Name"] = "Timothy", 
	["ID"] = 14, 
	["Dialog"] = game:GetService("Workspace").Stores.FineArt.Timothy.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
end
end
end
_G.Teleport(CFrame.new(Base.Position) + Vector3.new(0, 4, 0))
end,{text = "Get Item"})

local treetype = "Generic"
local treeamount = 1;

AutoBuySector1:Cheat("Dropdown", "Open 24 Hours", function(arg)
Item = arg
if Item then
end
end, {
	options =

{"BasicHatchet","Axe1","Axe2","Axe3","SilverAxe","CaveAxe","StraightConveyor","TiltConveyor","TightTurnConveyor","StraightSwitchConveyorRight","StraightSwitchConveyorLeft","ConveyorFunnel","ConveyorSwitch","LogSweeper","TightTurnConveyorSupports","ConveyorSupports","Sawmill","Sawmill2","Sawmill3","Sawmill4","Sawmill4L","Wire","PressurePlate","Lever0","Button0","ChopSaw","WorkLight","BagOfSand","UtilityTruck"} })



AutoBuySector2:Cheat("Dropdown", "Open 07:00 Till 19:00", function(arg)
Item = arg
if Item then
end
end, {
	options =
{"Seat_Armchair","Seat_Loveseat","Seat_Couch","Bed1","Bed2","Toilet","Refridgerator","Stove","Dishwasher","FloorLamp1","Lamp1","WallLight1","WallLight2","LightBulb","GlassDoor1","GlassPane1","GlassPane2","GlassPane3","GlassPane4","IcicleWireAmber","IcicleWireBlue","IcicleWireGreen","IcicleWireRed","IcicleWireHalloween","FireworkLauncher","ManyAxe"} })

AutoBuySector3:Cheat("Dropdown", "Open 08:50 Till 17:45", function(arg)
Item = arg
if Item then
end
end, {
	options =
	
{"Pickup1","UtilityTruck2","SmallTrailer","Trailer2"} })


AutoBuySector4:Cheat("Dropdown", "Open 24 Hours", function(arg)
Item = arg
if Item then
end
end, {
	options =
	
{"Dynamite","CanOfWorms"} })

AutoBuySector5:Cheat("Dropdown", "Open 24 Hours", function(arg)
Item = arg
if Item then
end
end, {
	options =
	
{"Painting1","Painting2","Painting3","Painting6","Painting7","Painting8","Painting9","Painting10"} })

AutoBuySector6:Cheat("Dropdown", "Open 07:00 Till 19:00", function(arg)
Item = arg
if Item then
end
end, {
	options ={"Wire","NeonWireRed","NeonWireOrange","NeonWireYellow","NeonWireGreen","NeonWireCyan","NeonWireBlue","NeonWireViolet","NeonWireWhite","GateNOT","GateAND","GateOR","GateXOR","SignalSustain","WoodChecker","Lever0","Button0","Laser","LaserReceiver","PressurePlate","Hatch","ClockSwitch"} })


AutoBuySector7:Cheat("Dropdown", "All Shop Prints", function(arg)
Item = arg
if Item then
end
end, {
	options =
{"CounterTop1Sink","CounterTop1","CounterTop1Thin","Cabinet1CornerTight","Cabinet1CornerWide","Cabinet1","Cabinet1Thin","Wedge10_Thin","Wedge10","Wedge9_Thin","Wedge9","Wedge8_Thin","Wedge8","Wedge7_Thin","Wedge7","Wedge6_Thin","Wedge6","Wedge5_Thin","Wedge5","Wedge4_Thin","Wedge4","Wedge3_Thin","Wedge3","Wedge2_Thin","Wedge2","Wedge1_Thin","Wedge1","Post","Ladder1","Stair1","Stair2","Door1","Chair1","Table1","Table2","Floor1Large","Floor1","Floor1Small","Floor1Tiny","Floor2Large","Floor2","Floor2Small","Floor2Tiny","Wall1ShortCorner","Wall1ShortThin","Wall1Short","Wall1Corner","Wall1Thin","Wall1","Wall1TallCorner","Wall1TallThin","Wall1Tall","Wall2ShortCorner","Wall2ShortThin","Wall2Short","Wall2Corner","Wall2Thin","Wall2","Wall2TallCorner","Wall2TallThin","Wall2Tall","Wall3Corner","Wall3Thin","Wall3","Wall3TallCorner","Wall3TallThin","Wall3Tall"} })


AutoBuySector8a:Cheat("Dropdown", "New Items", function(arg)
Item = arg
if Item then
end
end, {
	options =
{"PumpkinGhastly","BagOfCandy2","2020CGift_Cave","CandyCornAxe","2020CGift_Wobble","2020CGift_Teal","2021CGift_Wobble","2021CGift_Black"} })

AutoBuySector8a:Cheat("Label", "")
AutoBuySector8a:Cheat("Label", "")
AutoBuySector8a:Cheat("Label", "")
AutoBuySector8a:Cheat("Label", "")
AutoBuySector8a:Cheat("Label", "")
AutoBuySector8a:Cheat("Label", "")
AutoBuySector8a:Cheat("Label", "")

AutoBuySector8:Cheat("Button", "Powers $10,009,000", function()

local A_1 = 
{
    ["Character"] = game.Workspace.Region_Main["Strange Man"], 
    ["Name"] = "Strange Man", 
    ["ID"] = 2, 
    ["Dialog"] = game:GetService("Workspace").Stores.WoodRUs.Thom.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
end,{text = "Get Power"})

AutoBuySector8:Cheat("Button", "Bridge Down $100", function()
for i=1,3 do
local A_1 = 
{
    ["Character"] = game:GetService("Workspace").Bridge.TollBooth0.Seranok, 
    ["Name"] = "Seranok", 
    ["ID"] = 7, 
    ["Dialog"] = game:GetService("Workspace").Bridge.TollBooth0.Seranok.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
end
end,{text = "Down It Gos"})
-- Basesorter  ---------------------------------------------------------

MainCategory:Cheat("Textbox", "Item Quantity", function(Value)
	qty = Value
end,{placeholder = "Quantity"})

MainCategory:Cheat("Button", "Tp Item", function()
SingleItemTpQty(ItemName, game.Players.LocalPlayer.Character, qty)
end, {text = "Move"})


MainCategory1:Cheat("Dropdown", "Select PLank Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options ={"Generic","Oak","Birch","Cherry","Fir","Pine","Koa","Walnut","Volcano","GoldSwampy","GreenSwampy","CaveCrawler","Frost","SnowGlow","SpookyNeon","Spooky","Palm","LoneCave"} })

MainCategory2:Cheat("Dropdown", "Select Conveyor Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options ={"StraightConveyor","TiltConveyor","TightTurnConveyor","ConveyorFunnel","ConveyorSwitch","StraightSwitchConveyorRight","StraightSwitchConveyorLeft","LogSweeper","ConveyorSupports","TightTurnConveyorSupports"} })

MainCategory3:Cheat("Dropdown", "Select Glass OR Mill Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options = 
{"GlassDoor1","GlassPane1","GlassPane2","GlassPane3","GlassPane4","Sawmill","Sawmill2","Sawmill3","Sawmill4","Sawmill4L"} })

MainCategory4:Cheat("Dropdown", "Select Wire Item Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options = {"Wire","Lever0","Button0","ChopSaw","PressurePlate","SignalSustain","Laser","LaserReceiver","FireworkLauncher","ClockSwitch","Hatch","GateNOT","GateOR","GateAND","GateXOR","WoodChecker","SignalDelay","NeonWireRed","NeonWireOrange","NeonWireYellow","NeonWireGreen","NeonWireCyan","NeonWireBlue","NeonWireViolet","NeonWireWhite","IcicleWireAmber","IcicleWireRed","IcicleWireGreen","IcicleWireBlue","IcicleWireMagenta","IcicleWireHalloween"} })


MainCategory5:Cheat("Dropdown", "Select Axe Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options =  {"BasicHatchet","Axe1","Axe2","Axe3","SilverAxe","AxeAlphaTesters","Rukiryaxe","AxeBetaTesters","FireAxe","SilverAxe","EndTimesAxe","AxeChicken","CandyCaneAxe","Beesaxe","AxeAmber","GingerbreadAxe","AxeTwitter","RustyAxe","CaveAxe","ManyAxe","CaveAxe","CandyCornAxe" } })


MainCategory6:Cheat("Dropdown", "Select Painting Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options =  
{"Painting1","Painting2","Painting3","Painting4","Painting6","Painting7","Painting8","Painting9","Painting10"} })

MainCategory7:Cheat("Dropdown", "Select Furniture Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options =  {"FloorLamp1","WallLight1","WallLight2","Seat_Armchair","Seat_Couch","Seat_Loveseat","Bed1","Bed2","Refridgerator","Stove","Dishwasher","Toilet","Lamp1"} })


MainCategory8:Cheat("Dropdown", "Select Vehicle Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options =  
{"Pickup1","UtilityTruck2","UtilityTruck","SmallTrailer","Trailer2","Sleigh"} })

MainCategory8:Cheat("Label", "")
MainCategory8:Cheat("Label", "")
MainCategory8:Cheat("Label", "")
MainCategory8:Cheat("Label", "")
MainCategory8:Cheat("Label", "")

MainCategory9:Cheat("Dropdown", "Select Gift Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options = {"2016CGift_Ut","2015CGift_Coal","2015CGift_Red","2016CGift_Sweet","2015CGift_Volcano","2015CGift_Wobble","2016CGift_Blue","2016CGift_Big","2016CGift_Jingle","2016CGift_Wobble","2018CGift_Wobble","2017CGift_Green","2017CGift_GreatTimes","2017CGift_Modern","2017CGift_Wobble","2019CGift_Wobble_","2017CGift_Gold","2018CGift_Snow","2018CGift_Plate","2018CGift_Cocoa","2018CGift_Candy","2018CGift_Duck","2018CGift_Cone","2018CGift_Sled","2018CGift_GingerAxe","2018CGift_Plum","2019CGift_Yellow_","2019CGift_Bowl","2019CGift_Rusty","2019CGift_Cola","2019CGift_Burnt","2020CGift_Teal","2020CGift_Wobble","2020CGift_Cave","2021CGift_Black","2021CGift_Wobble"} })


MainCategory10:Cheat("Dropdown", "Select Other Items Type", function(arg)
ItemName = arg
if ItemName then
end
end, {
	options =  {"CanOfCranberry","BagOfCandy","BagOfCandy2","Candy","CandyCane","Scoobis","Spork","CoalLump","Snowball","Plate","Cocoa","Duck","Cone","Toboggan","B1","PumpkinDark","PumpkinGreen","PumpkinCursed","PumpkinGhastly","PumpkinLumbkin","PropertySoldSign","Turkey","Turkey2","Turkey3","Turkey4","Turkey5","Eye1","GreenBall","BlueBall","RedBall","PlumBall","Bobblehead","Bobblehead2","Bobblehead3","Bobblehead4","Bobblehead5","Bobblehead6","Bobblehead7","WorkLight","BagOfSand","CanOfWorms","LightBulb","Dynamite","BurgerCola","Bowl","BlackBall","TealBall"} })

wait()
for i=1,20 do
function Drag(It)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(It)
end
end

function TpItemOrPlank(Item, PartName, InfrontX, HeightY, Rotation)
	Character = game.Players.LocalPlayer.Character
	if Item:FindFirstChild("Type") and Item.Type.Value == "Vehicle" then 
		spawn(function()
		cframe = CFrame.new(Character.HumanoidRootPart.Position + Vector3.new(0,HeightY,0) + Character.HumanoidRootPart.CFrame.LookVector * InfrontX)
			for i=1,10 do 
				wait()
				Item:SetPrimaryPartCFrame(cframe * CFrame.Angles(math.rad(Rotation.x), math.rad(Character.Torso.Orientation.y + Rotation.y), math.rad(Rotation.z)))
wait()
for i=1,20 do
				game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Item[PartName])
				game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Item[PartName])
			end
                    end
		end)
	else
		for i=1,10 do 
			spawn(function()
				Item[PartName].Orientation = Character.HumanoidRootPart.Orientation + Rotation
				Item:MoveTo(Character.HumanoidRootPart.Position + Vector3.new(0,HeightY,0) + Character.HumanoidRootPart.CFrame.LookVector * InfrontX)
wait()
for i=1,20 do
				game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Item[PartName])
				game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Item[PartName])
			end
			end)
		end
	end
end
function CheckWL(Player)
	Player = Player
	if Player == game.Players.LocalPlayer.Name then 
		return true
	elseif Player ~= game.Players.LocalPlayer.Name and game.ReplicatedStorage.Interaction.ClientIsWhitelisted:InvokeServer(game.Players.LocalPlayer.Character) then 
		return true
	else return false
	end
end
function SingleItemTpQty(ItemName, Player, qty)
    Teleported = 0
	Player = tostring(Player)
	Whitelisted = CheckWL(Player)
	qty = tonumber(qty)
    for a,b in pairs(workspace.PlayerModels:GetChildren()) do 
        if Teleported < qty then
            if b:FindFirstChild("Owner") and tostring(b.Owner.Value) == tostring(Player) and Whitelisted == true then
                if b:FindFirstChild("Main") and b:FindFirstChild("PurchasedBoxItemName") and b.PurchasedBoxItemName.Value == ItemName then 
					TpItemOrPlank(b, "Main", 7.5, -2, Vector3.new(90,0,90))
					Teleported = Teleported + 1
				elseif b:FindFirstChild("Type") and b.Type.Value == "Vehicle" and b:FindFirstChild("ItemName") and b.ItemName.Value == ItemName then
					TpItemOrPlank(b, "Main", 10, -2, Vector3.new(0,90,90))
					Teleported = Teleported + 1
                elseif b:FindFirstChild("ItemName") and b.ItemName.Value == ItemName and b:FindFirstChild("Main") then 
					TpItemOrPlank(b, "Main", 7.5, -2, Vector3.new(0,90,90))
					Teleported = Teleported + 1
				elseif b:FindFirstChild("TreeClass") and b.TreeClass.Value == ItemName and b:FindFirstChild("WoodSection") then
					TpItemOrPlank(b, "WoodSection", 7.5, -2, Vector3.new(90,90,0))
					Teleported = Teleported + 1
                end
            end
        elseif Teleported == qty or Teleported > qty then
            return
        end
    end
end


_G.sim = false
MainCategory:Cheat("Checkbox","Base Items Move (Use WayPoints)",function(State)
_G.sim = State
while _G.sim do
    wait(.1)
SingleItemTpQty(ItemName, game.Players.LocalPlayer.Character, qty)

end
end)

  -- Map Mods  ---------------------------------------------------------

ModMap:Cheat("Checkbox", "Make A Platform", function(State)
	local p = Instance.new("Part", workspace)
	p.Size = Vector3.new(30,0.5,30)
	p.Anchored = true
	p.Position = plr1.Character.HumanoidRootPart.Position + Vector3.new(0,15,0)
	plr1.Character:MoveTo(p.Position + Vector3.new(0,1,0))
	spawn(function()
		while p.Parent do
			wait(1)
			if (plr1.Character.HumanoidRootPart.Position - p.Position).magnitude > 16 then
				p:Destroy()
			end
		end
	end)
end)

  ModMap:Cheat("Checkbox", "Remove (Water)", function(State)
  for _,v in pairs(game.Workspace.Water:GetChildren()) do
    if v.Name == "Water" then
      if State then
        v.Transparency = 1;
      else
        v.Transparency = 0;
      end
    end
  end
  end)

  ModMap:Cheat("Checkbox", "Remove (Lava)", function(State)
  for i,v in pairs(game.Workspace.Region_Volcano:GetDescendants()) do
    if v.Name == "TouchInterest" then
      v:Destroy()
    elseif v.Name == "Lava" then
      for n,k in pairs(v:GetChildren()) do
        if k:IsA("Part") then
          if State == true then
            k.Transparency = 1
          else
            k.Transparency = 0
          end
        end
      end
    end
  end
  end)

ModMap:Cheat("Checkbox", "Remove (Lava Boulders)", function(State)
	local destroy = true

	local boulders = workspace.Region_Volcano:FindFirstChild("PartSpawner")

	while destroy == true do
    	for i, v in pairs(boulders:GetChildren()) do
        	v:Destroy()
    	end
    	wait(2)
	end
end)


ModMap:Cheat("Checkbox", "Remove (ShrineDoors)", function(State)
	workspace.Region_Mountainside.BoulderRegen.Boulder:Destroy()
	workspace.Region_Mountainside.Door.Door:Destroy()
end)

ModMap:Cheat("Checkbox", "Remove (Maze Walls)", function(State)
	local blockades = workspace.Region_MazeCave.Blockade

	for i, v in pairs(blockades:GetChildren()) do
    	v:Destroy()
	end
end)

ModMap:Cheat("Checkbox", "Remove (Snow Area Boulders)", function(State)
	local boulders = workspace.Region_Snow:FindFirstChild("PartSpawner")

	    	for i, v in pairs(boulders:GetChildren()) do
       	 	v:Destroy()
   	 	end
    		
end)


ModMap:Cheat("Checkbox", "Bridge To Palm Trees", function(State)
	local palm1 = Instance.new("Part", workspace)
	palm1.Name = "K Truck's Goin' There"
	palm1.Position = Vector3.new(1753.475, -10, -45.351)
	palm1.Size = Vector3.new(1600, 1, 50)
	palm1.BrickColor = BrickColor.Random()
	palm1.Anchored = true
	palm1.CanCollide = true
end)

ModMap:Cheat("Checkbox", "Bridge To Valcano Trees", function(State)
	local Model = Instance.new("Model", game:GetService("Workspace"))
	Model.Name = "Lumber"
	
	local Part1 = Instance.new("Part", Model)
	Part1.Name = "Bridge"
	Part1.Reflectance = 0
	Part1.Transparency = 0
	Part1.Anchored = true
	Part1.Archivable = true
	Part1.CanCollide = true
	Part1.Locked = false
	Part1.BrickColor = BrickColor.new("Medium green")
	Part1.Material = Enum.Material.Fabric
	Part1.Position = Vector3.new(4380.8090820313, -11.749999046326, -101.56007385254)
	Part1.Size = Vector3.new(254.85998535156, 0.10000000149012, 1012.0200805664)
	Part1.Rotation = Vector3.new(0, 0, 0)
	
	local Part2 = Instance.new("Part", Model)
	Part2.Name = "Part"
	Part2.Reflectance = 0
	Part2.Transparency = 0
	Part2.Anchored = true
	Part2.Archivable = true
	Part2.CanCollide = true
	Part2.Locked = false
	Part2.BrickColor = BrickColor.new("Medium green")
	Part2.Material = Enum.Material.Fabric
	Part2.Position = Vector3.new(-1498.7203369141, 628.11077880859, 1146.8332519531)
	Part2.Size = Vector3.new(54.889999389648, 0.38999998569489, 46.719993591309)
	Part2.Rotation = Vector3.new(0, 30, 0)
	
	local Part3 = Instance.new("Part", Model)
	Part3.Name = "RoadVol"
	Part3.Reflectance = 0
	Part3.Transparency = 0
	Part3.Anchored = true
	Part3.Archivable = true
	Part3.CanCollide = true
	Part3.Locked = false
	Part3.BrickColor = BrickColor.new("Medium green")
	Part3.Material = Enum.Material.Fabric
	Part3.Position = Vector3.new(-604.03656005859, 301.07205200195, 637.69116210938)
	Part3.Size = Vector3.new(40, 0.20000000298023, 2030.8299560547)
	Part3.Rotation = Vector3.new(147.75, 55.680000305176, -152.4700012207)
	
		local WedgePart8 = Instance.new("WedgePart", Model)
	WedgePart8.Name = "UP"
	WedgePart8.Reflectance = 0
	WedgePart8.Transparency = 0
	WedgePart8.Anchored = true
	WedgePart8.Archivable = true
	WedgePart8.CanCollide = true
	WedgePart8.Locked = false
	WedgePart8.BrickColor = BrickColor.new("Beige")
	WedgePart8.Material = Enum.Material.Fabric
	WedgePart8.Position = Vector3.new(341.31372070313, -5.8850064277649, -772.25903320313)
	WedgePart8.Size = Vector3.new(65.220001220703, 11.829997062683, 159.52000427246)
	WedgePart8.Rotation = Vector3.new(0, -21.549999237061, 0)
	
	local WedgePart9 = Instance.new("WedgePart", Model)
	WedgePart9.Name = "UP2"
	WedgePart9.Reflectance = 0
	WedgePart9.Transparency = 0
	WedgePart9.Anchored = true
	WedgePart9.Archivable = true
	WedgePart9.CanCollide = true
	WedgePart9.Locked = false
	WedgePart9.BrickColor = BrickColor.new("Beige")
	WedgePart9.Material = Enum.Material.Fabric
	WedgePart9.Position = Vector3.new(384.87704467773, -5.8850121498108, -1050.4354248047)
	WedgePart9.Size = Vector3.new(65.220001220703, 11.829997062683, 155.8099822998)
	WedgePart9.Rotation = Vector3.new(180, -25.35000038147, 180)
	
	local WedgePart10 = Instance.new("WedgePart", Model)
	WedgePart10.Name = "Vol1"
	WedgePart10.Reflectance = 0
	WedgePart10.Transparency = 0
	WedgePart10.Anchored = true
	WedgePart10.Archivable = true
	WedgePart10.CanCollide = true
	WedgePart10.Locked = false
	WedgePart10.BrickColor = BrickColor.new("Medium green")
	WedgePart10.Material = Enum.Material.Fabric
	WedgePart10.Position = Vector3.new(-1133.5314941406, 499.67663574219, 943.49224853516)
	WedgePart10.Size = Vector3.new(39.729999542236, 10.650003433228, 823.29010009766)
	WedgePart10.Rotation = Vector3.new(-32.25, -55.680000305176, -27.529998779297)
	
	local WedgePart11 = Instance.new("WedgePart", Model)
	WedgePart11.Name = "Vol2"
	WedgePart11.Reflectance = 0
	WedgePart11.Transparency = 0
	WedgePart11.Anchored = true
	WedgePart11.Archivable = true
	WedgePart11.CanCollide = true
	WedgePart11.Locked = false
	WedgePart11.BrickColor = BrickColor.new("Medium green")
	WedgePart11.Material = Enum.Material.Fabric
	WedgePart11.Position = Vector3.new(-1526.9182128906, 623.2353515625, 1112.2694091797)
	WedgePart11.Size = Vector3.new(33.96000289917, 10.470000267029, 43.559997558594)
	WedgePart11.Rotation = Vector3.new(0, 32.899997711182, 0)
	
	local WedgePart12 = Instance.new("WedgePart", Model)
	WedgePart12.Name = "Wedge2"
	WedgePart12.Reflectance = 0
	WedgePart12.Transparency = 0
	WedgePart12.Anchored = true
	WedgePart12.Archivable = true
	WedgePart12.CanCollide = true
	WedgePart12.Locked = false
	WedgePart12.BrickColor = BrickColor.new("Medium green")
	WedgePart12.Material = Enum.Material.Fabric
	WedgePart12.Position = Vector3.new(-580.31176757813, 50.62678527832, -2443.0573730469)
	WedgePart12.Size = Vector3.new(58.749996185303, 1, 69.490005493164)
	WedgePart12.Rotation = Vector3.new(-179.08000183105, 14.309999465942, -178.72999572754)
	
	local WedgePart13 = Instance.new("WedgePart", Model)
	WedgePart13.Name = "Wedge"
	WedgePart13.Reflectance = 0
	WedgePart13.Transparency = 0
	WedgePart13.Anchored = true
	WedgePart13.Archivable = true
	WedgePart13.CanCollide = true
	WedgePart13.Locked = false
	WedgePart13.BrickColor = BrickColor.new("Medium green")
	WedgePart13.Material = Enum.Material.Fabric
	WedgePart13.Position = Vector3.new(-554.13073730469, 37.368190765381, -2545.1484375)
	WedgePart13.Size = Vector3.new(59.18998336792, 30.919998168945, 140.86001586914)
	WedgePart13.Rotation = Vector3.new(0.91999995708466, -14.309999465942, -1.2699999809265)
	
	local Part14 = Instance.new("Part", Model)
	Part14.Name = "Wall"
	Part14.Reflectance = 0
	Part14.Transparency = 0.60000002384186
	Part14.Anchored = false
	Part14.Archivable = true
	Part14.CanCollide = true
	Part14.Locked = false
	Part14.BrickColor = BrickColor.new("Medium stone grey")
	Part14.Material = Enum.Material.Fabric
	Part14.Position = Vector3.new(-1522.0369873047, 632.79083251953, 1160.2779541016)
	Part14.Size = Vector3.new(46.590003967285, 8.9700002670288, 1.0400000810623)
	Part14.Rotation = Vector3.new(-180, 60, -180)
	
	local Part15 = Instance.new("Part", Model)
	Part15.Name = "Fence2"
	Part15.Reflectance = 0
	Part15.Transparency = 0.5
	Part15.Anchored = true
	Part15.Archivable = true
	Part15.CanCollide = true
	Part15.Locked = false
	Part15.BrickColor = BrickColor.new("Beige")
	Part15.Material = Enum.Material.Fabric
	Part15.Position = Vector3.new(-620.37908935547, 319.05871582031, 669.19006347656)
	Part15.Size = Vector3.new(2037.669921875, 16.129999160767, 2)
	Part15.Rotation = Vector3.new(0.0099999997764826, 30, -17.510000228882)
	
	local Part16 = Instance.new("Part", Model)
	Part16.Name = "Fence"
	Part16.Reflectance = 0
	Part16.Transparency = 0.5
	Part16.Anchored = true
	Part16.Archivable = true
	Part16.CanCollide = true
	Part16.Locked = false
	Part16.BrickColor = BrickColor.new("Beige")
	Part16.Material = Enum.Material.Fabric
	Part16.Position = Vector3.new(-639.38134765625, 319.06237792969, 636.27484130859)
	Part16.Size = Vector3.new(2037.669921875, 16.129999160767, 2)
	Part16.Rotation = Vector3.new(0.0099999997764826, 30, -17.510000228882)
	        wait(4.6)
    for index, lumber in pairs(game.Workspace.Lumber:GetChildren()) do
	
	end
	end)

ModMap:Cheat("Checkbox", "Bridge To Safari Trees", function(State)
	local bridge1 = Instance.new("Part", workspace)
	bridge1.Name = "Lol We Made Our Own Fuck Your ?100"
	bridge1.Position = Vector3.new(174.511, 1.049, -882.842)
	bridge1.Size = Vector3.new(60, 0.1, 350)
	bridge1.BrickColor = BrickColor.Random()
	wait(0.5)
	bridge1.Anchored = true
	bridge1.CanCollide = true

	local bridge2 = Instance.new("Part", workspace)
	bridge2.Name = "Lol We Made Our Own Fuck Your ?100 Again"
	bridge2.Position = Vector3.new(49.602, 1.049, -882.842)
	bridge2.Size = Vector3.new(60, 0.1, 350)
	bridge2.BrickColor = BrickColor.Random()
	wait(0.5)
	bridge2.Anchored = true
	bridge2.CanCollide = true
end)

ModMap:Cheat("Checkbox", "Bridge To Swamp Trees", function(State)
	local bridge = Instance.new("Part", workspace)
	bridge.Name = "Lol We Made Our Own Fuck Your Shitty Broken Dynamite Slab"
	bridge.Position = Vector3.new(-1331.086, 293.25, 645.301)
	bridge.Size = Vector3.new(185, 0.1, 60)
	bridge.Orientation = Vector3.new(0, -75, 0)
	bridge.BrickColor = BrickColor.Random()
	wait(0.5)
	bridge.Anchored = true
	bridge.CanCollide = true
end)

ModMap:Cheat("Checkbox", "Bridge To Yellow Trees", function(State)
	local yellow = Instance.new("Part", workspace)
	yellow.Name = "Lol Truck There Easy"
	yellow.Position = Vector3.new(-517.915, -12, -392.256)
	yellow.Size = Vector3.new(1207.06, 1, 1460.09)
	yellow.BrickColor = BrickColor.Random()
	yellow.Anchored = true
	yellow.CanCollide = true
end)

ModMap:Cheat("Checkbox", "Endtimes Stops You Falling", function(State)
	local yellow1 = Instance.new("Part", workspace)
	yellow1.Name = "Lol Truck There Easy"
	yellow1.Position = Vector3.new(-5.915, -217, -1250.256)
	yellow1.Size = Vector3.new(1207.06, 1, 1160.09)
	yellow1.BrickColor = BrickColor.Random()
	yellow1.Anchored = true
	yellow1.CanCollide = true
end)


  -- Camera Mods  ---------------------------------------------------------
  Players = {}

  for i,v in next, game.Players:GetChildren() do
    table.insert(Players, v.Name)
  end
  _G.spectateplayer = Players[1];

  local A = ModCamera:Cheat("Dropdown", "Players", function(Option)
  _G.spectateplayer = Option
  end, {options = Players})

  game.Players.PlayerRemoving:Connect(function(plr)
  for i,v in next, Players do
    if v == plr.Name then
      A:RemoveOption(plr.Name)
      table.remove(Players, i)
    end
  end
  end)

  game.Players.PlayerAdded:Connect(function(plr)
  A:AddOption(plr.Name)
  table.insert(Players, plr.Name)
  end)

  workspace.CurrentCamera.CameraType = Enum.CameraType["Custom"]
  workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid

  ModCamera:Cheat("Button", "Spectate Player", function()

  workspace.CurrentCamera.CameraSubject = game.Players[_G.spectateplayer].Character.Humanoid

  end, {text = "Spectate"})

  ModCamera:Cheat("Button", "Stop Spectating", function()

  workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
  end, {text = "Stop"})

  ModCamera:Cheat("Slider", "Max Zoom Distance", function(Value)
  game.Players.LocalPlayer.CameraMaxZoomDistance = Value


  end, {min = 0, max = 10000, suffix = " Zoom", precise = true,default = 10})

  ModCamera:Cheat("Slider", "Minimum Zoom Distance", function(Value)
  game.Players.LocalPlayer.CameraMinZoomDistance = Value


  end, {min = 0, max = 10000, suffix = " Zoom", precise = false,default = 0})

 
  -- Graphic Mods  ---------------------------------------------------------
  game:GetService("Lighting").GlobalShadows = true
  ModGraphics:Cheat("Checkbox", "Shadows", function(State)
  game:GetService("Lighting").GlobalShadows = State
  end,{enabled = true})


  ModGraphics:Cheat("Checkbox", "Remove Fog", function(State)
  game.Lighting.FogEnd = 9999

  _G.rf = State;
  end)

  ModGraphics:Cheat("Checkbox", "Always Night", function(State)
  game.Lighting.TimeOfDay = "24:00:00"
  game.Lighting.Brightness = 0
  _G.n = State;
  end)

  ModGraphics:Cheat("Checkbox", "Always Day", function(State)
  game.Lighting.TimeOfDay = "12:00:00"
  game.Lighting.Brightness = 1
  _G.d = State;
  end)



  ModGraphics:Cheat("Slider", "Brightness", function(Value)
  game:GetService("Lighting").Brightness = Value/10


  end, {min = 0, max = 100, suffix = " Brightness", precise = false,default = 0})


  ModGraphics:Cheat("Button", "Xray", function()
	for _, d in pairs(workspace:GetDescendants()) do
		if d:IsA("BasePart") then
			local transpVal = Instance.new("NumberValue", d)
			transpVal.Name = "transpVal"
			transpVal.Value = d.Transparency
			d.Transparency = d.Transparency + 0.75
		end
	end
  end, {text = "Start Xray"})

  ModGraphics:Cheat("Button", "Stop Xray", function()
	for _, d in pairs(workspace:GetDescendants()) do
		if d:IsA("BasePart") and d:FindFirstChild("transpVal") then
			d.Transparency = d:FindFirstChild("transpVal").Value
			d:FindFirstChild("transpVal"):Destroy()
		end
	end
  end, {text = "Stop Xray"})

  ModGraphics:Cheat("Button", "Improve Graphics", function()
  -- Roblox Graphics Enhancher
  local light = game.Lighting
  for i, v in pairs(light:GetChildren()) do
    v:Destroy()
  end

  local ter = workspace.Terrain
  local color = Instance.new("ColorCorrectionEffect")
  local bloom = Instance.new("BloomEffect")
  local sun = Instance.new("SunRaysEffect")
  local blur = Instance.new("BlurEffect")

  color.Parent = light
  bloom.Parent = light
  sun.Parent = light
  blur.Parent = light

  -- enable or disable shit

  local config = {

    Terrain = true;
    ColorCorrection = true;
    Sun = true;
    Lighting = true;
    BloomEffect = true;

  }

  -- settings {

  color.Enabled = false
  color.Contrast = 0.15
  color.Brightness = 0.1
  color.Saturation = 0.25
  color.TintColor = Color3.fromRGB(255, 222, 211)

  bloom.Enabled = false
  bloom.Intensity = 0.1

  sun.Enabled = false
  sun.Intensity = 0.2
  sun.Spread = 1

  bloom.Enabled = false
  bloom.Intensity = 0.05
  bloom.Size = 32
  bloom.Threshold = 1

  blur.Enabled = false
  blur.Size = 6

  -- settings }


  if config.ColorCorrection then
    color.Enabled = true
  end


  if config.Sun then
    sun.Enabled = true
  end


  if config.Terrain then
    -- settings {
    ter.WaterColor = Color3.fromRGB(10, 10, 24)
    ter.WaterWaveSize = 0.1
    ter.WaterWaveSpeed = 22
    ter.WaterTransparency = 0.9
    ter.WaterReflectance = 0.05
    -- settings }
  end


  if config.Lighting then
    -- settings {
    light.Ambient = Color3.fromRGB(0, 0, 0)
    light.Brightness = 4
    light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
    light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
    light.ExposureCompensation = 0
    light.FogColor = Color3.fromRGB(132, 132, 132)
    light.GlobalShadows = true
    light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
    light.Outlines = false
    -- settings }
  end
  end, {text = "Improve"})

 ModGraphics:Cheat("Button", "HD Graphics", function()
_G.BlurSize = 3

_G.ColorCorrectionBrightness = 0.03
_G.ColorCorrectionContrast = 0.3
_G.ColorCorrectionSaturation = 0.01
_G.ColorCorrectionTintColor = Color3.fromRGB(244,244,244)

_G.SunRaysIntensity = 0.2
_G.SunRaysSpread = 1

-- Lighting settings:
_G.GlobalShadows = true
_G.Brightness = 0.9
_G.GeographicLatitude = 350
_G.TimeOfDay = 17
_G.ExposureCompensation = 0.03


spawn(function()
_,i = pcall(function()
Lighting = game:GetService("Lighting")
Blur = Instance.new("BlurEffect",Lighting)
Color = Instance.new("ColorCorrectionEffect",Lighting)
Sun = Instance.new("SunRaysEffect",Lighting)
-- Setting the mood:
Blur.Enabled=not false;Blur.Size=_G.BlurSize
Color.Enabled=not false;Color.Brightness=_G.ColorCorrectionBrightness;Color.Contrast=_G.ColorCorrectionContrast;
Color.Saturation=_G.ColorCorrectionSaturation;Color.TintColor=_G.ColorCorrectionTintColor
Sun.Enabled=not false;Sun.Intensity=_G.SunRaysIntensity;Sun.Spread=_G.SunRaysSpread
print("Finished setting mood")
-- Setting Lighting:
function loadLighting()
Lighting.GlobalShadows = _G.GlobalShadows;
Lighting.Brightness = _G.Brightness
Lighting.GeographicLatitude =  _G.GeographicLatitude
Lighting.TimeOfDay = _G.TimeOfDay
Lighting.ExposureCompensation = _G.ExposureCompensation
end
loadLighting()
end) if i and not _ then print("ERROR: "..i) else print("Loaded HD Graphics") end
end)
end, {text = "HD"})


----Car Tools------------------------------------------
 
CarTools:Cheat("Textbox", "Fast Car", function(Value)
	speed = Value
end,{placeholder = "Set Speed 1 - 5"})

CarTools:Cheat("Checkbox", "Fast Car (Must Respawn Truck To Work)", function(State)
	game.Workspace.PlayerModels.ChildAdded:connect(function(ADDED)
 wait(0.5)
if ADDED:FindFirstChild('Configuration') then
 if ADDED.Configuration:FindFirstChild('MaxSpeed') then
  ADDED.Configuration.MaxSpeed.Value = speed
 end
 end
end)
end)

CarTools:Cheat("Button", "(Hackers) Color Car Spawn", function()
loadstring(game:HttpGet("https://pastebin.com/raw/jY7q55ih"))()
end, {text = "Load Spawner"})

CarTools:Cheat("Button", "Car Rotater", function()
	local Turn = game:GetService("Players").LocalPlayer:GetMouse()
	function Turn2(key)
        	if (key == "r") then
			function RotateCar()
    if game.Players.LocalPlayer.Character then 
        Character = game.Players.LocalPlayer.Character
        if Character.Humanoid.SeatPart ~= nil then 
            Car = Character.Humanoid.SeatPart.Parent
            spawn(function()
            local Pos = CFrame.new(Car.Main.Position)
                for i=1,5 do
                    wait()
                    Car:SetPrimaryPartCFrame(Pos * CFrame.Angles(math.rad(Character.HumanoidRootPart.Orientation.x), math.rad(Character.HumanoidRootPart.Orientation.y), 0))
                    game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Car.Main)
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Car.Main)
                end
            end)
        end
    end
end
RotateCar()
			end
		end
Turn.KeyDown:connect(Turn2)
end, {text = "Press (R)"})

CarTools:Cheat("Button", "Car Fly", function()
game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 250
local speed = 0
 
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = false
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+125.0+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-250
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "z" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
wait(5)
hint:Destroy()
end)
Fly()
end, {text = "(Z) to Toggle"})



local BridgeD = false
CarTools:Cheat("Button", "Bridge Down", function()
	if BridgeD == false then
			for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
			v.CFrame = v.CFrame + Vector3.new(0, -26, 0)
			end
		BridgeD = true
	end
end, {text = "Down"})

CarTools:Cheat("Button", "Bridge Up", function()
	if BridgeD == true then

			for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
			v.CFrame = v.CFrame + Vector3.new(0, 26, 0)
			end
		BridgeD = false
	end
end, {text = "Up"})

function TeleportCar(Pos)
    if game.Players.LocalPlayer.Character then 
        Character = game.Players.LocalPlayer.Character
        if Character.Humanoid.SeatPart ~= nil then 
            Car = Character.Humanoid.SeatPart.Parent
            spawn(function()
                for i=1,5 do
                    wait()
                    Car:SetPrimaryPartCFrame(Pos * CFrame.Angles(math.rad(Character.HumanoidRootPart.Orientation.x), math.rad(Character.HumanoidRootPart.Orientation.y), 0))
                    game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Car.Main)
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Car.Main)
                end
            end)
        end
    end
end
-------------------------------------------------------
CarToolsb:Cheat("Button", "SpawnPoint", function()
TeleportCar(CFrame.new(155, 3, 74))
end, {text = "SpawnPoint"})

CarToolsb:Cheat("Button", "Store 1", function()
TeleportCar(CFrame.new(236, 3.4, 57))
end, {text = "Wood RU s"})

CarToolsb:Cheat("Button", "Store 2", function()
TeleportCar(CFrame.new(232.3, 3.2, -95.4))
end, {text = "Land Store"})

CarToolsb:Cheat("Button", "Store 3", function()
TeleportCar(CFrame.new(4615, 3, -708))
end, {text = "Links Logic"})

CarToolsb:Cheat("Button", "Store 4", function()
TeleportCar(CFrame.new(509.1, 4.3, -1674.1))
end, {text = "Fancy Furnishings"})

CarToolsb:Cheat("Button", "Store 5", function()
TeleportCar(CFrame.new(509, 3.4, -1497))
end, {text = "Boxed Cars"})

CarToolsb:Cheat("Button", "Store 6", function()
TeleportCar(CFrame.new(5207, -166.5, 719))
end, {text = "Fine Arts Shop"})

CarToolsb:Cheat("Button", "Store 7", function()
TeleportCar(CFrame.new(222, 9.4, -2530))
end, {text = "Bobs Shack"})

-------------------------------------------------------

CarToolsa:Cheat("Button", "Ticktatwert", function()
TeleportCar(CFrame.new(-1065, -4.3, -942))
end, {text = "Snowglow Wood"})

CarToolsa:Cheat("Button", "Taiga Peak", function()
TeleportCar(CFrame.new(1464, 413, 3245))
end, {text = "Frost Wood"})

CarToolsa:Cheat("Button", "Volcano Peak", function()
TeleportCar(CFrame.new(-1604, 625, 1120))
end, {text = "Lava Wood"})

CarToolsa:Cheat("Button", "Swamp", function()
TeleportCar(CFrame.new(-1209, 138, -801))
end, {text = "Green + Gold Wood"})

CarToolsa:Cheat("Button", "Sand Islands", function()
TeleportCar(CFrame.new(2604, -4.2, -23))
end, {text = "Palm Wood"})

CarToolsa:Cheat("Button", "Taiga", function()
TeleportCar(CFrame.new(1284.9, 59.8, 2136.1))
end, {text = "Pine & Fir Wood"})

CarToolsa:Cheat("Button", "Safari", function()
TeleportCar(CFrame.new(-282.3, 8, -1555.8))
end, {text = "Walnut Wood"})

CarToolsa:Cheat("Button", "Meadow", function()
TeleportCar(CFrame.new(220.9, 59.8, 1305.8))
end, {text = "Cherry Wood"})

CarToolsa:Cheat("Button", "Mountainside", function()
TeleportCar(CFrame.new(-395.5, 244.8, 1275.4))
end, {text = "Birch Wood"})

CarToolsa:Cheat("Button", "Cavecrawler Cavern", function()
TeleportCar(CFrame.new(3488.1, -199.8, 519.1))
end, {text = "Cavecrawler Wood"})

CarToolsa:Cheat("Button", "Tropics", function()
TeleportCar(CFrame.new(5022.4, 6.1, -503.1))
end, {text = "Koa Wood"})

-----------------------------------------
CarToolsc:Cheat("Button", "Den", function()
TeleportCar(CFrame.new(323, 49, 1930))
end, {text = "The Den"})

CarToolsc:Cheat("Button", "Shrine", function()
TeleportCar(CFrame.new(-1600, 205, 919))
end, {text = "Shrine Of Sight"})

CarToolsc:Cheat("Button", "Ski", function()
TeleportCar(CFrame.new(1244, 59.8, 2279.3))
end, {text = "Ski Lodge"})

CarToolsc:Cheat("Button", "Stranger", function()
TeleportCar(CFrame.new(1071, 17.9, 1148.8))
end, {text = "Stranger"})

CarToolsc:Cheat("Button", "Light House", function()
TeleportCar(CFrame.new(1464.8, 356.3, 3257.2))
end, {text = "Light House"})

CarToolsc:Cheat("Button", "Bird Axe Cave", function()
TeleportCar(CFrame.new(4813.1, 33.5, -978.8))
end, {text = "Bird Axe Cave"})

CarToolsc:Cheat("Button", "Bridge", function()
TeleportCar(CFrame.new(113, 15, -977))
end, {text = "Bridge"})

CarToolsc:Cheat("Button", "Dock", function()
TeleportCar(CFrame.new(1114, 3.2, -197))
end, {text = "Dock"})

------------------------------------------
---- Troll---------------------------------------------

_G.rf = false
_G.n = false
_G.d = false


local invisnum = 0;
FunTime:Cheat("Checkbox", "Invisible", function(State)
if State then
invisnum = 1;
else
invisnum = 0;
end
game.Players.LocalPlayer.Character.Torso.Transparency = invisnum
game.Players.LocalPlayer.Character.Head.Transparency  = invisnum
game.Players.LocalPlayer.Character["Left Arm"].Transparency = invisnum
game.Players.LocalPlayer.Character["Right Arm"].Transparency = invisnum
game.Players.LocalPlayer.Character["Left Leg"].Transparency = invisnum
game.Players.LocalPlayer.Character["Right Leg"].Transparency = invisnum
if game.Players.LocalPlayer.Character.Head:FindFirstChild("face") then
game.Players.LocalPlayer.Character.Head:FindFirstChild("face").Transparency = invisnum
end
for _, item in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
-- If the item is a part (This means that this is probably a body part), set the transparency to 1 (100% Transparent)
if item.ClassName == "Accessory" or item.ClassName == "Tool" then
for _, accessoryPart in pairs (item:GetChildren()) do
  --If it finds a part, set it to transparent
  if accessoryPart.ClassName == "Part" then
    accessoryPart.Transparency = invisnum
  end
end
end

end
end)

FunTime:Cheat("ColorPicker", "Land Color", function(Color)
for _,v in pairs(workspace.Properties:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
  for _,k in pairs(v:GetChildren()) do
    if k:IsA("Part") then
      k.Color = Color
    end
  end
end
end
end)

FunTime:Cheat("Button", "Reset Land Color", function()

for _,v in pairs(workspace.Properties:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
  for _,k in pairs(v:GetChildren()) do
    if k:IsA("Part") then
      k.Color = Color3.fromRGB(124, 92, 70)
    end
  end
end
end
end, {text = "Reset"})



FunTime:Cheat("Button", "Minecraft", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/cCSkZq0K'),true))()

end, {text = "Q + 1-9 to change blocks"})

FunTime:Cheat("Button", "Pee Script", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/R57FiKfW'),true))()

end, {text = "Thats Better"})

FunTime:Cheat("Button", "Big Ben Clock Tower", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/ZFSTSi9T'),true))()

end, {text = "Run"})

FunTime:Cheat("Button", "Thomas The Tank", function()
loadstring(game:HttpGet(('http://pastebin.com/raw/tMr759X7'),true))()

end, {text = "Run"})

FunTime:Cheat("Button", "Police Man", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/FR9Fzcqw'),true))()

end, {text = "Run"})

FunTime:Cheat("Button", "Spray Can", function()
loadstring(game:HttpGet(('http://pastebin.com/raw/raYkCjyy'),true))()

end, {text = "Run"})

FunTime:Cheat("Button", "Coca Cola", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/nMu90Kdq'),true))()

end, {text = "Run"})


FunTime:Cheat("Button", "Leaked Items", function()
game.ReplicatedStorage.Purchasables:Clone().Parent = game.Workspace.PlayerModels

end, {text = "Run"})

FunTime:Cheat("Button", "OP Finality", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/hkQ5HfV5'),true))()

end, {text = "Run"})

  game.Lighting.Changed:connect(function()
  if _G.d then
    game.Lighting.TimeOfDay = "12:00:00"
    game.Lighting.Brightness = 1
  end
  if _G.n then
    game.Lighting.TimeOfDay = "24:00:00"
    game.Lighting.Brightness = 0
  end
  if _G.rf then
    game.Lighting.FogEnd = 9999

  end
  end)