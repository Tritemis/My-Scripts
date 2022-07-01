--Jacket: 
local thing = game.Players.LocalPlayer.Character
local originalpos = thing.HumanoidRootPart.CFrame
thing.HumanoidRootPart.CFrame = CFrame.new(math.huge,math.huge,math.huge)

wait(15)
thing.RightLowerLeg.RightKnee:Destroy()
wait(0.5)
thing.LeftLowerLeg.LeftKnee:Destroy()

wait(0.5)
thing.UpperTorso.Waist:Destroy()
wait(0.3)

thing.HumanoidRootPart.CFrame = originalpos

wait(0.1)

wait()

thing.UpperTorso.Anchored=true
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(";executescript Tritemis/FE-Clothing-Spider.lua", "All")
