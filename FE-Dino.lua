--[[
hats:
https://www.roblox.com/catalog/376524487/Blonde-Spiked-Hair
https://www.roblox.com/catalog/63690008/Pal-Hair
https://www.roblox.com/catalog/62234425/Brown-Hair
https://www.roblox.com/catalog/3302591859/Godzilla-Spine-Backpack
https://www.roblox.com/catalog/3302593407/Rodans-Head
https://www.roblox.com/catalog/9661543986/Nike-Shoebox-Costume
https://www.roblox.com/catalog/62724852/Chestnut-Bun
https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
https://www.roblox.com/catalog/451220849/Lavender-Updo
]]--
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

HumanDied = false for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~= 'Torso' and v.Name ~= 'Head' then  _G.netless=game:GetService("RunService").Heartbeat:connect(function() v.AssemblyLinearVelocity = Vector3.new(-30,0,0) sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999) end) end end  local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {}  char.Archivable = true local reanim = char:Clone() reanim.Name = 'Nexo '..plr.Name..'' fl=Instance.new('Folder',char) fl.Name ='Nexo' reanim.Animate.Disabled=true char.HumanoidRootPart:Destroy() char.Humanoid:ChangeState(16)  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  function create(part, parent, p, r) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignOrientation.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] part.AlignOrientation.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part[part.Name].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  char.Torso['Left Shoulder']:Destroy() char.Torso['Right Shoulder']:Destroy() char.Torso['Left Hip']:Destroy() char.Torso['Right Hip']:Destroy()  create(char['Torso'],reanim['Torso']) create(char['Left Arm'],reanim['Left Arm']) create(char['Right Arm'],reanim['Right Arm']) create(char['Left Leg'],reanim['Left Leg']) create(char['Right Leg'],reanim['Right Leg'])  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  reanim.Parent = fl  table.insert(ct,srv.Heartbeat:Connect(function() char.Torso.CFrame=reanim.Torso.CFrame char.Torso.Velocity=Vector3.new(40000,40000,0) end))  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  table.insert(ct,reanim.Humanoid.Died:Connect(function() plr.Character = char char:BreakJoints() reanim:Destroy() game.Players:Chat('-gr') _G.netless:Disconnect() HumanDied = true for _,v in pairs(ct) do v:Disconnect() end end))  plr.Character = reanim workspace.CurrentCamera.CameraSubject = reanim.Humanoid

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

Mode = 'Normal'
mode=m.KeyDown:Connect(function(a)
if Mode == 'Normal' and a == 'q' then
Mode = '1'
elseif Mode == '1' and a == 'q' then
Mode = 'Normal'
end
end)

coroutine.wrap(function()
while true do 
if HumanDied then mode:Disconnect() break end
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
if reanim.Humanoid.Jump then -- jump

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(48.38+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.55+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-50+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0*math.cos(sine/10))*CFrame.Angles(math.rad(72.83+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(72+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(48.38+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.55+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-200+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0*math.cos(sine/10))*CFrame.Angles(math.rad(72.83+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(72+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

elseif Root.Velocity.Magnitude < 2 then -- idle


hat('Nike Shoebox Costume','Torso',CFrame.new(0,-1.5,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10))),true)

hat('RoHead','Torso',CFrame.new(0,3,0.2),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-80+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

hat('Hat1','Torso',CFrame.new(0,2.1,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(10+0*math["cos"](sine/10))),true)

hat('Kate Hair','Torso',CFrame.new(0.2,2.1,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(-10+0*math["cos"](sine/10))),true)

hat('LavanderHair','Torso',CFrame.new(0,-4,0.7),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','Torso',CFrame.new(0,-5.8,1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(110+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('ZillaBackpack','Torso',CFrame.new(0,-7,1.3),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pal Hair','Torso',CFrame.new(0,-1.2,-0.3),CFrame.new(1.3+0*math["cos"](sine/10),-1.76+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(50+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('MessyHair','Torso',CFrame.new(0,-1.2,-0.3),CFrame.new(-1.3+0*math["cos"](sine/10),-1.76+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(50+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)


NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(48.38+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.82+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-70+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0*math.cos(sine/10))*CFrame.Angles(math.rad(72.83+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(72+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)


elseif Root.Velocity.Magnitude < 30 then -- walk

hat('Nike Shoebox Costume','Torso',CFrame.new(0,-1.5,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10))),true)

hat('RoHead','Torso',CFrame.new(0,3,0.2),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-80+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

hat('Hat1','Torso',CFrame.new(0,2.1,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(10+0*math["cos"](sine/10))),true)

hat('Kate Hair','Torso',CFrame.new(0.2,2.1,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(-10+0*math["cos"](sine/10))),true)

hat('LavanderHair','Torso',CFrame.new(0,-4,0.7),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','Torso',CFrame.new(0,-5.8,1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(110+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('ZillaBackpack','Torso',CFrame.new(0,-7,1.3),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pal Hair','Torso',CFrame.new(0,-1.2,-0.3),CFrame.new(1.3+0*math["cos"](sine/10),-1.76+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(50+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('MessyHair','Torso',CFrame.new(0,-1.2,-0.3),CFrame.new(-1.3+0*math["cos"](sine/10),-1.76+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(50+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(48.38+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.82+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-80+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/10))*CFrame.Angles(math.rad(115+40*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/10))*CFrame.Angles(math.rad(115+-40*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0*math.cos(sine/10))*CFrame.Angles(math.rad(60+40*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0.02*math.cos(sine/10))*CFrame.Angles(math.rad(60+-40*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

end
--------------

elseif Mode == '1' then
--First Mode--
if reanim.Humanoid.Jump then -- jump

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(48.38+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.55+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-50+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0*math.cos(sine/10))*CFrame.Angles(math.rad(72.83+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(72+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

--jump clerp here

elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(48.38+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.55+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-200+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0*math.cos(sine/10))*CFrame.Angles(math.rad(72.83+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(72+2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

--fall clerp here

elseif Root.Velocity.Magnitude < 2 then -- idle


hat('Nike Shoebox Costume','Torso',CFrame.new(0,-1.5,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10))),true)

hat('RoHead','Torso',CFrame.new(0,3,0.2),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-80+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

hat('Hat1','Torso',CFrame.new(0,2.1,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(10+0*math["cos"](sine/10))),true)

hat('Kate Hair','Torso',CFrame.new(0.2,2.1,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(-10+0*math["cos"](sine/10))),true)

hat('LavanderHair','Torso',CFrame.new(0,-4,0.7),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','Torso',CFrame.new(0,-5.8,1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(110+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('ZillaBackpack','Torso',CFrame.new(0,-7,1.3),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pal Hair','Torso',CFrame.new(0,-1.2,-0.3),CFrame.new(1.3+0*math["cos"](sine/10),-1.76+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(50+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('MessyHair','Torso',CFrame.new(0,-1.2,-0.3),CFrame.new(-1.3+0*math["cos"](sine/10),-1.76+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(50+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)


NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(48.38+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.82+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-80+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(115+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0*math.cos(sine/10))*CFrame.Angles(math.rad(72.83+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0.02*math.cos(sine/90))*CFrame.Angles(math.rad(72+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk


hat('Nike Shoebox Costume','Torso',CFrame.new(0,-1.5,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10))),true)

hat('RoHead','Torso',CFrame.new(0,3,0.2),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-80+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

hat('Hat1','Torso',CFrame.new(0,2.1,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(10+0*math["cos"](sine/10))),true)

hat('Kate Hair','Torso',CFrame.new(0.2,2.1,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(-10+0*math["cos"](sine/10))),true)

hat('LavanderHair','Torso',CFrame.new(0,-4,0.7),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pink Hair','Torso',CFrame.new(0,-5.8,1),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(110+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('ZillaBackpack','Torso',CFrame.new(0,-7,1.3),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('Pal Hair','Torso',CFrame.new(0,-1.2,-0.3),CFrame.new(1.3+0*math["cos"](sine/10),-1.76+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(50+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

hat('MessyHair','Torso',CFrame.new(0,-1.2,-0.3),CFrame.new(-1.3+0*math["cos"](sine/10),-1.76+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(50+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(48.38+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.82+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-80+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/10))*CFrame.Angles(math.rad(115+40*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3.5+0*math.cos(sine/10),-0.5+0.02*math.cos(sine/10))*CFrame.Angles(math.rad(115+-40*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0*math.cos(sine/10))*CFrame.Angles(math.rad(60+40*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.6+0*math.cos(sine/10),-3+0*math.cos(sine/10),-1.6+0.02*math.cos(sine/10))*CFrame.Angles(math.rad(60+-40*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
-------------
end
-------------
srv.RenderStepped:Wait()
end
end)()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(";executescript Tritemis/FE-Dino.lua", "All")
