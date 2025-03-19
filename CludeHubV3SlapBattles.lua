local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/CludeHub/SourceOfNewOrion/refs/heads/main/Fiendorion')))()

local Window = OrionLib:MakeWindow({Name = "Slap Battle", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab1 = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab4 = Window:MakeTab({
	Name = "Badges",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab5 = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab1:AddLabel("Slap Battle Script made by Paul Paras as Clude Subscribe to him on Youtube")

Tab1:AddButton({
	Name = "Infinite yield",
	Callback = function()
      		print("button pressed")
  	end    
})

-- Game Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer

-- Slap Events Mapped to Glove Names
local slapEvents = {
    ["Default"] = "b",
    ["Dual"] = "GeneralHit",
    ["Extended"] = "b",
    ["Diamond"] = "DiamondHit",
    ["Brick"] = "BrickHit",
    ["ZZZZZZZ"] = "ZZZZZZZHit",
    ["Snow"] = "SnowHit",
    ["Pusher"] = "PusherHit",
    ["Magnet"] = "MagnetHIT",
    ["Fort"] = "Fort",
    ["General"] = "GeneralHit",
    ["Golden"] = "GoldenHit",
    ["Ghost"] = "GhostHit",
    ["Dice"] = "DiceHit",
    ["Bull"] = "BullHit",
    ["Swapper"] = "HitSwapper",
    ["Flash"] = "FlashHit",
    ["Spring"] = "springhit",
    ["Pull"] = "PullHit",
    ["Reverse"] = "ReverseHit",
    ["Shukuchi"] = "ShukuchiHit",
    ["Defense"] = "DefenseHit",
    ["KS"] = "KSHit",
    ["Reaper"] = "ReaperHit",
    ["Replica"] = "ReplicaHit",
    ["Mister"] = "MisterHit",
    ["Mail"] = "MailHit",
    ["Boomerang"] = "BoomerangH",
    ["Speedrun"] = "Speedrunhit",
    ["Plague"] = "PlagueHit",
    ["Elude"] = "GeneralHit",
    ["Counter"] = "GeneralHit",
    ["Shard"] = "ShardHIT",
    ["Jet"] = "JetHit",
    ["Phase"] = "PhaseH",
    ["Obby"] = "GeneralHit",
    ["Iceskate"] = "GeneralHit",
    ["Booster"] = "GeneralHit",
    ["Ping Pong"] = "GeneralHit",
    ["Baller"] = "GeneralHit",
    ["Chain"] = "GeneralHit",
    ["Spy"] = "SpyHit",
    ["Orbit"] = "Orbihit",
    ["Charge"] = "GeneralHit",
    ["Detonator"] = "DetonatorHit"
}

local slapAuraEnabled = false
local slapCooldown = {} -- Table to track cooldown per player
local slapAuraLoop
local char, hrp

-- Function to Update Character Info
local function updateCharacter()
    char = player.Character or player.CharacterAdded:Wait()
    hrp = char:WaitForChild("HumanoidRootPart")
end

-- Function to Get Current Glove Name
local function getEquippedGlove()
    local tool = char and char:FindFirstChildOfClass("Tool")
    return tool and tool.Name or nil
end

-- Function to Get the Corresponding Slap Event
local function getSlapEvent(gloveName)
    local eventName = slapEvents[gloveName]
    return eventName and ReplicatedStorage:FindFirstChild(eventName) or nil
end

-- Function to Slap Closest Player with Cooldown
local function slapClosestPlayer()
    while slapAuraEnabled do
        local equippedGlove = getEquippedGlove()
        local slapEvent = getSlapEvent(equippedGlove)

        if slapEvent and hrp then
            for _, otherPlayer in pairs(Players:GetPlayers()) do
                if otherPlayer ~= player and otherPlayer.Character then
                    local otherHRP = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if otherHRP and (hrp.Position - otherHRP.Position).Magnitude <= 25 then -- Range
                        
                        -- Check if the player is on cooldown
                        if not slapCooldown[otherPlayer.UserId] then
                            slapEvent:FireServer(otherHRP)

                            -- Set cooldown for this player (2 seconds)
                            slapCooldown[otherPlayer.UserId] = true
                            task.delay(2, function()
                                slapCooldown[otherPlayer.UserId] = nil
                            end)
                        end
                    end
                end
            end
        end

        task.wait(0.10) -- Slap aura speed (adjust if needed)
    end
end

-- Function to Toggle Slap Aura
local function toggleSlapAura(value)
    slapAuraEnabled = value
    if slapAuraEnabled then
        slapAuraLoop = task.spawn(slapClosestPlayer)
    else
        if slapAuraLoop then
            task.cancel(slapAuraLoop)
        end
    end
end

-- Update Character When Respawning
player.CharacterAdded:Connect(updateCharacter)

-- GUI Toggle Button
Tab2:AddToggle({
	Name = "Slap Aura",
	Default = false,
	Callback = function(value)
		toggleSlapAura(value)
	end    
})

-- Initialize Character
updateCharacter()

Tab2:AddButton({
	Name = "GodMode",
	Callback = function()
game:GetService("Players").LocalPlayer.Reset:FireServer()
wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
      		print("button pressed")
  	end    
})

Tab3:AddToggle({
	Name = "Slapple Farm",
	Default = false,
	Callback = function(Value)
SlapAura = Value
                while SlapAura do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if 25 >= Magnitude then
game.ReplicatedStorage.KSHit:FireServer(v.Character:WaitForChild("HumanoidRootPart"))
                    end
end
end
                end
task.wait()
end
		print(Value)
	end    
})

Tab4:AddButton({
	Name = "Get Bob",
	Callback = function()
if  game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then
     game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Nice!",Text = "Congratulations, you got bob ;)" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
     fireclickdetector(game:GetService("Workspace").Lobby.bob.ClickDetector)
     return 
end

fireclickdetector(workspace.Lobby["God's Hand"].ClickDetector)
task.wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
wait(1)
game:GetService("ReplicatedStorage").TimestopJump:FireServer()
game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
game:GetService("ReplicatedStorage").Timestop:FireServer()
game.Players.LocalPlayer.Character.Humanoid.Health = 0

task.wait(8)
fireclickdetector(game:GetService("Workspace").Lobby.Replica.ClickDetector)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
task.wait(1)
for i = 1, 75000 do
        game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack({[1] = true}))
end
wait(2)
--[[ This script isn't mine but idk how to create one so i use this instead ]]-- 
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local S_T = game:GetService("TeleportService")
local S_H = game:GetService("HttpService")
local Players = game:GetService("Players")

local File = pcall(function()
    AllIDs = S_H:JSONDecode(readfile("server-hop-temp.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    pcall(function()
        writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
    end)
end

local function TPReturner(placeId)
    local Site
    if foundAnything == "" then
        Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end

    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end

    local num = 0
    local foundServer = false 

    for i, v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _, Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("server-hop-temp.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                foundServer = true
                wait()
                pcall(function()
                    writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
                    wait()
                    S_T:TeleportToPlaceInstance(placeId, ID, Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end

    -- if not found server
    if not foundServer then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end

local module = {}
function module:Teleport(placeId)
    while wait() do
        pcall(function()
            TPReturner(placeId)
            if foundAnything ~= "" then
                TPReturner(placeId)
            end
        end)
    end
end


module:Teleport(game.PlaceId)
      		print("button pressed")
  	end    
})

Tab4:AddButton({
	Name = "Get Elude and Counter",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport 
if teleportFunc then     
    teleportFunc([[         
        if not game:IsLoaded() then             
            game.Loaded:Wait()         
        end         
        repeat wait() until game.Players.LocalPlayer         
        wait(3) 
        Time = 121 
        fireclickdetector(game.Workspace.CounterLever.ClickDetector) 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0) 
        wait(0.2) 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true 

        for i = 1, Time do 
            Time = Time - 1 
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Error",
                Text = "You wait time [ "..Time.." ] receive.",
                Icon = "rbxassetid://7733658504",
                Duration = 1
            }) 
            wait(1) 
        end 

        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        wait(0.5) 

        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 0) 
        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 1) 

        for i, v in pairs(workspace.Maze:GetDescendants()) do 
            if v:IsA("ClickDetector") then 
                fireclickdetector(v) 
            end 
        end     
    ]]) 
end 

game:GetService("TeleportService"):Teleport(11828384869)
      		print("button pressed")
  	end    
})

Tab4:AddButton({
	Name = "Get Trap",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
for i = 1, 200 do
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.5,1.75))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.5,1.75))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.5,1.75))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.5,1.75))
game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
wait(Random.new():NextNumber(1.5,1.75))
end
else
print("Equip Bricks First")
end
      		print("button pressed")
  	end    
})

Tab4:AddButton({
	Name = "Get iceskate",
	Callback = function()
local args = {
    [1] = "touched_ice"
}

game:GetService("ReplicatedStorage").IceSkate:FireServer(unpack(args))

local args = {
    [1] = "Freeze"
}

game:GetService("ReplicatedStorage").IceSkate:FireServer(unpack(args))

      		print("button pressed")
  	end    
})

Tab4:AddToggle({
	Name = "Jet Farm",
	Default = false,
	Callback = function(Value)
Jetfarm = Value
while Jetfarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "JetOrb" and v:FindFirstChild("TouchInterest") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
task.wait()
end
	end    
})

Tab4:AddToggle({
	Name = "Phase Farm",
	Default = false,
	Callback = function(Value)
Phasefarm = Value
while Phasefarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "PhaseOrb" and v:FindFirstChild("TouchInterest") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
task.wait()
end
	end    
})

Tab2:AddToggle({
                    Name = "Auto Enter Arena",
                    Default = false,
                    Callback = function(Value)
AutoEnterArena = Value
while AutoEnterArena do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
    end
task.wait()
end
end
                })