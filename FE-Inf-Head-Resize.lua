--[[
wear RHTRO, use this:
https://www.roblox.com/catalog/2493712577/The-High-Seas-Beatrix-The-Pirate-Queen-Right-Arm and
https://www.roblox.com/catalog/2493710171/The-High-Seas-Beatrix-The-Pirate-Queen-Left-Arm
from https://www.roblox.com/bundles/339/The-High-Seas-Beatrix-The-Pirate-Queen
https://www.roblox.com/catalog/3669152260/Vanessa-Head
from https://www.roblox.com/bundles/572/Summer
https://www.roblox.com/catalog/4381817635/Junkbot-Left-Leg and
https://www.roblox.com/catalog/4381821661/Junkbot-Right-Leg
from https://www.roblox.com/bundles/589/Junkbot
https://www.roblox.com/catalog/6494056892/Linlin-Torso
from https://www.roblox.com/bundles/741/Linlin

BODY TYPE 75%
HEIGHT 100%
WIDTH 100%
HEAD 100%
PROPORTIONS 100%

]]--
while true do task.wait()
   fireclickdetector(workspace.ClothingRacks.ClothingRack.Hitbox.ClickDetector)
   for _,v in ipairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
       if v.Name == "OriginalSize" then v:Destroy() end
   end
   for _,v in ipairs(game:GetService("Players").LocalPlayer.Character.Humanoid:GetChildren()) do
       if string.find(v.Name,"Scale") then v:Destroy() end
   end
end
