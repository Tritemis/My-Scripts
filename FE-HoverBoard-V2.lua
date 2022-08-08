-- FE Hoverboard
--[[ 
Hats required :
2646473721 - Roblox Visor https://www.roblox.com/catalog/2646473721/Roblox-Visor
376526673 - Stylish Aviators https://www.roblox.com/catalog/376526673/Stylish-Aviators
376527500 - Orange Shades https://www.roblox.com/catalog/376527500/Orange-Shades
]]
local sethiddenproperty = sethiddenproperty or set_hidden_property
local char = game:GetService("Players").LocalPlayer.Character
char.Archivable = true
local clone = char:Clone()
clone.Parent = workspace
local hum = char.Humanoid
local hat1 = char:WaitForChild("RobloxVisor2019")
local hat3 = char:WaitForChild("VarietyShades10")
local hat4 = char:WaitForChild("VarietyShades02")
local ahah = hum.RootPart:Clone()
ahah:ClearAllChildren()
ahah.Name = "HBPart"
ahah.Parent = hum
local w = Instance.new("Weld")
w.Parent = ahah
w.Part0 = char.Torso
w.Part1 = ahah
w.C0 = CFrame.Angles(0,math.rad(90),0)
for i,v in pairs({hat1,hat3,hat4}) do
	for i,v in pairs(v:GetDescendants()) do
		if v:IsA("SpecialMesh") then
			v:Destroy()
		end
	end
end
function attach(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1)
	AlignPos.ApplyAtCenterOfMass = true
	AlignPos.MaxForce = 67752
	AlignPos.MaxVelocity = math.huge/9e110
	AlignPos.ReactionForceEnabled = false
	AlignPos.Responsiveness = 200
	AlignPos.RigidityEnabled = false
	local AlignOri = Instance.new('AlignOrientation', Part1)
	AlignOri.MaxAngularVelocity = math.huge/9e110
	AlignOri.MaxTorque = 67752
	AlignOri.PrimaryAxisOnly = false
	AlignOri.ReactionTorqueEnabled = false
	AlignOri.Responsiveness = 200
	AlignOri.RigidityEnabled = false
	local AttachmentA=Instance.new('Attachment',Part1)
	local AttachmentB=Instance.new('Attachment',Part0)
	local AttachmentC=Instance.new('Attachment',Part1)
	local AttachmentD=Instance.new('Attachment',Part0)
	AttachmentC.Orientation = Angle or Vector3.new()
	AttachmentA.Position = Position or Vector3.new()
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
end
attach(hum.RootPart,clone.HumanoidRootPart,Vector3.new(),Vector3.new(0,-90,0))
local pos = {
	{Vector3.new(0,-3.2,-.1),Vector3.new()};
	{Vector3.new(1.1,-3.2,-.1),Vector3.new()};
	{Vector3.new(-1.1,-3.2,-.1),Vector3.new()};
}
local chat1 = clone:WaitForChild("RobloxVisor2019")
local chat3 = clone:WaitForChild("VarietyShades10")
local chat4 = clone:WaitForChild("VarietyShades02")
for i,v in pairs({chat1,chat3,chat4}) do
	v.Handle:BreakJoints()
	attach(v.Handle,char.Torso,pos[i][1],pos[i][2])
	game:GetService("RunService").Heartbeat:Connect(function()
		if v:FindFirstChild'Handle' then
			v:FindFirstChild'Handle'.Velocity = Vector3.new(-30,35,0)
			wait(.5)
		end
	end)
end

attach(hat1.Handle,chat1.Handle,Vector3.new(),Vector3.new())
attach(hat3.Handle,chat3.Handle,Vector3.new(),Vector3.new())
attach(hat4.Handle,chat4.Handle,Vector3.new(),Vector3.new())

for i,v in pairs({hat1,hat3,hat4}) do
	v.Handle:BreakJoints()
	game:GetService("RunService").Heartbeat:Connect(function()
		if v:FindFirstChild'Handle' then
			v:FindFirstChild'Handle'.Velocity = Vector3.new(-30,35,0)
			wait(.5)
		end
	end)
end

local anim = Instance.new("Animation")
anim.AnimationId = "http://www.roblox.com/Asset?ID=21698666"
anim.Parent = hum
local ollie = Instance.new("Animation")
ollie.Parent = hum
ollie.AnimationId = "rbxassetid://21700751"
local o = hum.Animator:LoadAnimation(ollie)
hum.Animator:LoadAnimation(anim):Play()

hum.HipHeight = 2

char.ChildAdded:Connect(function(child)
	if child:IsA("Tool") then
		hum:UnequipTools()
	end
end)

clone.ChildAdded:Connect(function(child)
	if child:IsA("Tool") then
		hum:UnequipTools()
	end
end)

game:GetService("Players").LocalPlayer.Character = clone
clone.Humanoid.HipHeight = 2
clone.Humanoid.Died:Connect(function()
	clone:Destroy()
	game:GetService("Players").LocalPlayer.Character = char
	char:BreakJoints()
end)
hum.Died:Connect(function()
	clone:Destroy()
	game:GetService("Players").LocalPlayer.Character = char
	char:BreakJoints()
end)
local con
for i,v in pairs(clone:GetDescendants()) do
	if v:IsA("BasePart") or v:IsA("Decal") then
		v.Transparency = 1
	end
end
if _G.net == nil then
	_G.net = true
	game:GetService("RunService").Stepped:Connect(function()
		if sethiddenproperty then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v == game:GetService("Players").LocalPlayer == false then
					sethiddenproperty(v,"MaximumSimulationRadius",.001)
					sethiddenproperty(v,"SimulationRadius",.001)
				end
			end
			sethiddenproperty(game:GetService("Players").LocalPlayer,"MaximumSimulationRadius",math.pow(math.huge,math.huge))
			sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.pow(math.huge,math.huge))
			settings().Physics.AllowSleep = false
			settings().Physics.PhysicsEnvironmentalThrottle = "Disabled"
			game:GetService("Players").LocalPlayer.ReplicationFocus = workspace
		else
			settings().Physics.AllowSleep = false
			settings().Physics.PhysicsEnvironmentalThrottle = "Disabled"
			game:GetService("Players").LocalPlayer.ReplicationFocus = workspace
		end
	
	end)
end
con = game:GetService("RunService").Stepped:Connect(function()
	if clone:IsDescendantOf(workspace) == false then con:Disconnect() end
	pcall(function()
		clone.Humanoid.HipHeight = 2 - 1 * math.sin(tick())
	end)
	
	for i,v in pairs(clone:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
		end
	end
	for i,v in pairs(char:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
		end
	end
end)
local walking = false
local vel = 0
clone.Humanoid.Jumping:Connect(function(active)
	o:Play()
	o:AdjustSpeed(5)
end)
hum.Running:Connect(function(spd)
	if spd > .01 then
		walking = true
		while walking do
			game:GetService("RunService").Heartbeat:wait()
			vel = vel + .1
			if vel > 35 then
				vel = 35
			end
			clone.Humanoid.WalkSpeed = 15 + vel
		end
	else
		walking = false
		vel = 0
		clone.Humanoid.WalkSpeed = 2
	end
end)

game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(";executescript Tritemis/FE-HoverBoard-V2.lua", "All")
