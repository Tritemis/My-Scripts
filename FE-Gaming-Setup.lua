--HATS NEEDED FOR SCRIPT:
-- https://www.roblox.com/catalog/376526673/Stylish-Aviators

-- https://www.roblox.com/catalog/376524487/Blonde-Spiked-Hair

-- https://www.roblox.com/catalog/6470135113/Fan-Hand-Sign-Why-Dont-We-WDW

-- https://www.roblox.com/catalog/62724852/Chestnut-Bun

-- https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair

-- https://www.roblox.com/catalog/376527500/Orange-Shades

-- https://www.roblox.com/catalog/9350274205/Vans-Black-White-Checkerboard-Umbrella

-- [  You can get this from https://www.roblox.com/games/6679274937/Vans-World-S2 game, goto the beach and seaech umbrella ] --

-- https://www.roblox.com/catalog/9661543986/Nike-Shoebox-Costume

-- [join to this game : https://www.roblox.com/games/7462526249/NIKELAND-UPDATE and search for cake > eat > get rewarded or watch tutorials on YouTube] --

-- https://www.roblox.com/catalog/2309346267/Classic-PC-Hat

-- [ get this hat from https://www.roblox.com/games/2546610365/Roblox-Creator-Challenge and complete all challenges by answering 3-4 questions correctly in every stage.]
function rmesh(a)
if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
old=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
for i = 1 , 2 do
game.Players.LocalPlayer.Character=old
end
end

HumanDied = false for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") then  _G.netless=game:GetService("RunService").Heartbeat:connect(function() v.AssemblyLinearVelocity = Vector3.new(-30,0,0) sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999) end) end end  local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {}  char.Archivable = true local reanim = char:Clone() reanim.Name = 'Nexo '..plr.Name..'' fl=Instance.new('Folder',char) fl.Name ='Nexo' reanim.Animate.Disabled=true char.HumanoidRootPart:Destroy() char.Humanoid:ChangeState(16)  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  function create(part, parent, p, r) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignOrientation.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] part.AlignOrientation.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part[part.Name].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  char.Torso['Left Shoulder']:Destroy() char.Torso['Right Shoulder']:Destroy() char.Torso['Left Hip']:Destroy() char.Torso['Right Hip']:Destroy()  create(char['Torso'],reanim['Torso']) create(char['Left Arm'],reanim['Left Arm']) create(char['Right Arm'],reanim['Right Arm']) create(char['Left Leg'],reanim['Left Leg']) create(char['Right Leg'],reanim['Right Leg'])  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  reanim.Parent = fl  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  table.insert(ct,reanim.Humanoid.Died:Connect(function() plr.Character = char char:BreakJoints() reanim:Destroy() game.Players:Chat('-gr') _G.netless:Disconnect() HumanDied = true for _,v in pairs(ct) do v:Disconnect() end end))  plr.Character = reanim workspace.CurrentCamera.CameraSubject = reanim.Humanoid

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

-- for modes u can go in this link : https://Nexo.notxeneon15.repl.co/nexo/modes.lua
Mode = 'Normal'
mode=m.KeyDown:Connect(function(a)
if Mode == 'Normal' and a == 'e' then
Mode = 'TV'
elseif Mode == 'TV' and a == 'e' then
Mode = 'Normal'
elseif Mode == 'Normal' and a == 'q' then
Mode = 'Type'
elseif Mode == 'Type' and a == 'q' then
Mode = 'Normal'
end
end)


coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == 'Normal' then
reanim.Humanoid.WalkSpeed = 5
reanim.Humanoid.JumpPower = 0
if Root.Velocity.y < -1 or reanim.Humanoid.Jump then -- fall and jump
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle

hat('VarietyShades02','Torso',CFrame.new(-0.5,-100,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('VarietyShades10','Torso',CFrame.new(0.5,-100,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('VANS_Umbrella','HumanoidRootPart',CFrame.new(0,-1,1),CFrame.new(0+0*math["cos"](sine/10),3.51+0*math["cos"](sine/10),1.79+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Nike Shoebox Costume','HumanoidRootPart',CFrame.new(0,-1,1),CFrame.new(0+0*math["cos"](sine/10),1.7+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('MessyHair','HumanoidRootPart',CFrame.new(2,-2.65,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','HumanoidRootPart',CFrame.new(-2,-2.65,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Kate Hair','HumanoidRootPart',CFrame.new(1,-2,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('WDW_FoamFinger','HumanoidRootPart',CFrame.new(0,-1,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','HumanoidRootPart',CFrame.new(-1,-2,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('LUAhEAD','HumanoidRootPart',CFrame.new(0,0,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(180+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-2.08+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(49.59+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(49.59+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk

hat('VarietyShades02','Torso',CFrame.new(-0.5,-100,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('VarietyShades10','Torso',CFrame.new(0.5,-100,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('VANS_Umbrella','HumanoidRootPart',CFrame.new(0,-1,1),CFrame.new(0+0*math["cos"](sine/10),3.51+0*math["cos"](sine/10),1.79+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Nike Shoebox Costume','HumanoidRootPart',CFrame.new(0,-1,1),CFrame.new(0+0*math["cos"](sine/10),1.7+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('MessyHair','HumanoidRootPart',CFrame.new(2,-2.65,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','HumanoidRootPart',CFrame.new(-2,-2.65,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Kate Hair','HumanoidRootPart',CFrame.new(1,-2,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('WDW_FoamFinger','HumanoidRootPart',CFrame.new(0,-1,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','HumanoidRootPart',CFrame.new(-1,-2,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('LUAhEAD','HumanoidRootPart',CFrame.new(0,0,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(180+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-2.08+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(86.59+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(49.91+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
--walk clerp here
end
-------------
elseif Mode == 'Type' then
reanim.Humanoid.WalkSpeed = 0
reanim.Humanoid.JumpPower = 0

hat('VarietyShades02','Torso',CFrame.new(-0.5,-0.4,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('VarietyShades10','Torso',CFrame.new(0.5,-0.4,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('VANS_Umbrella','HumanoidRootPart',CFrame.new(0,-1,1),CFrame.new(0+0*math["cos"](sine/10),3.51+0*math["cos"](sine/10),1.79+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Nike Shoebox Costume','HumanoidRootPart',CFrame.new(0,-1,1),CFrame.new(0+0*math["cos"](sine/10),1.7+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('MessyHair','HumanoidRootPart',CFrame.new(2,-2.65,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','HumanoidRootPart',CFrame.new(-2,-2.65,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Kate Hair','HumanoidRootPart',CFrame.new(1,-2,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('WDW_FoamFinger','HumanoidRootPart',CFrame.new(0,-1,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','HumanoidRootPart',CFrame.new(-1,-2,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('LUAhEAD','HumanoidRootPart',CFrame.new(0,0,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(180+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-2.08+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(71.3+5*math.cos(sine/1)),math.rad(0+0*math.cos(sine/10)),math.rad(-20.4+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(71+-5*math.cos(sine/1)),math.rad(0+0*math.cos(sine/10)),math.rad(22.4+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

--------------
elseif Mode == 'TV' then
reanim.Humanoid.WalkSpeed = 0
reanim.Humanoid.JumpPower = 0

hat('VarietyShades02','Torso',CFrame.new(-0.5,-100,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('VarietyShades10','Torso',CFrame.new(0.5,-100,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('VANS_Umbrella','HumanoidRootPart',CFrame.new(0,-1,1),CFrame.new(0+0*math["cos"](sine/10),3.51+0*math["cos"](sine/10),1.79+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Nike Shoebox Costume','HumanoidRootPart',CFrame.new(0,-1,1),CFrame.new(0+0*math["cos"](sine/10),1.7+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('MessyHair','HumanoidRootPart',CFrame.new(2,-2.65,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','HumanoidRootPart',CFrame.new(-2,-2.65,-1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Kate Hair','HumanoidRootPart',CFrame.new(1,-2,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('WDW_FoamFinger','HumanoidRootPart',CFrame.new(0,-1,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','HumanoidRootPart',CFrame.new(-1,-2,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('LUAhEAD','HumanoidRootPart',CFrame.new(0,0,-10),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(180+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-2.08+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(86.59+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(49.91+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator V4
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(";executescript Tritemis/FE-Gaming-Setup.lua", "All")
