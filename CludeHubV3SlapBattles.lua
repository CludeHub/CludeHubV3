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
["Extended"] = "b",
["T H I C K"] = GeneralHit,
["Squid"] = GeneralHit,
["Gummy"] = GeneralHit,
["RNG"] = GeneralHit,
["Tycoon"] = GeneralHit,
["Charge"] = GeneralHit,
["Baller"] = GeneralHit,
["Tableflip"] = GeneralHit,
["Booster"] = GeneralHit,
["Shield"] = GeneralHit,
["Track"] = GeneralHit,
["Goofy"] = GeneralHit,
["Confusion"] = GeneralHit,
["Elude"] = GeneralHit,
["Glitch"] = GeneralHit,
["Snowball"] = GeneralHit,
["🗿"] = GeneralHit,
["Obby"] = GeneralHit,
["Voodoo"] = GeneralHit,
["Leash"] = GeneralHit,
["Flamarang"] = GeneralHit,
["Berserk"] = GeneralHit,
["Sparky"] = GeneralHit,
["Rattlebones"] = GeneralHit,
["Chain"] = GeneralHit,
["Ping Pong"] = GeneralHit,
["Psycho"] = GeneralHit,
["Kraken"] = GeneralHit,
["Quake"] = GeneralHit,
["Counter"] = GeneralHit,
["Hammer"] = GeneralHit,
["Excavator"] = GeneralHit,
["Slicer"] = GeneralHit,
["Whirlwind"] = GeneralHit,
["Home Run"] = GeneralHit,
["Gravity"] = GeneralHit,
["Jebaited"] = GeneralHit,
["Meteor"] = GeneralHit,
["Guardian Angel"] = GeneralHit,
["Tinkerer"] = GeneralHit,
["Sun"] = GeneralHit,
["Necromancer"] = GeneralHit,
["Dual"] = GeneralHit,
["Alchemist"] = GeneralHit,
["Parry"] = GeneralHit,
["Druid"] = GeneralHit,
["Oven"] = GeneralHit,
["Jester"] = GeneralHit,
["Ferryman"] = GeneralHit,
["Scythe"] = GeneralHit,
["Blackhole"] = GeneralHit,
----------------------------------------
["Diamond"] = DiamondHit,
["ZZZZZZZ"] = ZZZZZZZHit,
["Brick"] = BrickHit,
["Snow"] = SnowHit,
["Pull"] = PullHit,
["Flash"] = FlashHit,
["Spring"] = springhit,
["Swapper"] = HitSwapper,
["Bull"] = BullHit,
["Dice"] = DiceHit,
["Ghost"] = GhostHit,
["Thanos"] = ThanosHit,
["Stun"] = HtStun,
["Za Hando"] = zhramt,
["Fort"] = Fort,
["Magnet"] = MagnetHIT,
["Pusher"] = PusherHit,
["Anchor"] = hitAnchor,
["Space"] = HtSpace,
["Boomerang"] = BoomerangH,
["Speedrun"] = Speedrunhit,
["Mail"] = MailHit,
["Golden"] = GoldenHit,
["Cheeky"] = CheekyHit,
["Reaper"] = ReaperHit,
["Defense"] = DefenseHit,
["Killstreak"] = KSHit,
["Reverse"] = ReverseHit,
["Shukuchi"] = ShukuchiHit,
["Duelist"] = DuelistHit,
["Woah"] = woahHit,
["Ice"] = IceHit,
["Adios"] = hitAdios,
["Blocked"] = BlockedHit,
["Engineer"] = engiehit,
["Rocky"] = RockyHit,
["Conveyor"] = ConvHit,
["STOP"] = STOP,
["Custom"] = CustomHit,
["Phantom"] = PhantomHit,
["Wormhole"] = WormHit,
["Acrobat"] = AcHit,
["Plague"] = PlagueHit,
["Megarock"] = DiamondHit,
["[REDACTED]"] = ReHit,
["bus"] = hitbus,
["Phase"] = PhaseH,
["Warp"] = WarpHt,
["Bomb"] = BombHit,
["Bubble"] = BubbleHit,
["Jet"] = JetHit,
["Shard"] = ShardHIT,
["potato"] = potatohit,
["Cult"] = CULTHit,
["bob"] = bobhit,
["Buddies"] = buddiesHIT,
["Moon"] = CelestialHit,
["Jupiter"] = CelestialHit,
["Spy"] = SpyHit,
["Detonator"] = DetonatorHit,
["Rage"] = GRRRR,
["Trap"] = traphi,
["Orbit"] = Orbihit,
["Hybrid"] = HybridCLAP,
["Slapple"] = SlappleHit,
["Disarm"] = DisarmH,
["Dominance"] = DominanceHit,
["Nightmare"] = nightmarehit,
["rob"] = robhit,
["Link"] = LinkHit,
["Rhythm"] = rhythmhit,
["Hitman"] = HitmanHit,
["Rojo"] = RojoHit,
["Thor"] = ThorHit,
["Cloud"] = CloudHit,
["Retro"] = RetroHit,
["Null"] = NullHit,
----------------------------------------
["Mitten"] = MittenHit,
["Hallow Jack"] = HallowHIT,
----------------------------------------
["Boogie"] = HtStun,
["Balloony"] = HtStun,
["Kinetic"] = HtStun,
----------------------------------------
["OVERKILL"] = Overkillhit,
["The Flex"] = FlexHit,
["God's Hand"] = Godshand,
["Error"] = "Errorhit",
["Iceskate"] = "GeneralHit"
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

Tab4:AddButton({
	Name = "Get Brazil badge",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
                    end    
                })

Tab4:AddButton({
	Name = "Get court evidence badge",
	Callback = function()
fireclickdetector(game.Workspace.Lobby.Scene.knofe.ClickDetector)
                    end    
                })

Tab4:AddButton({
	Name = "Get duck badge",
	Callback = function()
fireclickdetector(game.Workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
                    end    
                })

Tab4:AddButton({
	Name = "Get The Lone Orange badge",
	Callback = function()
fireclickdetector(game.Workspace.Arena.island5.Orange.ClickDetector)
                    end    
                })

Tab4:AddButton({
	Name = "Get Kinetic",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Stun" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i = 1,150 do
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
wait(0.05)
end
wait(1.5)
repeat
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character.Humanoid.Health ~= 0
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0,-20,0)
wait(0.25)
game.ReplicatedStorage.StunR:FireServer(game.Players.LocalPlayer.Character.Stun)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
wait(0.5)
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("EMPStunBadgeCounter") then
OrionLib:MakeNotification({Name = "Error",Content = "Counter Stun [ "..game.Players.LocalPlayer.Character.EMPStunBadgeCounter.Value.." ]",Image = "rbxassetid://7733658504",Time = 5})
end
wait(12.3)
until game.Players.LocalPlayer.Character:FindFirstChild("EMPStunBadgeCounter") and game.Players.LocalPlayer.Character.EMPStunBadgeCounter.Value >= 50
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Stun equipped, or you aren't in the arena",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab4:AddButton({
	Name = "Win Obby Pyscho",
	Callback = function()
if game.Workspace:FindFirstChild("RepressedMemoriesMap") ~= nil then
OGL = game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame
OGL1 = game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame
wait(0.5)
game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(2.5)
game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame = OGL
wait(2.5)
game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(2.5)
game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame = OGL1
else
OrionLib:MakeNotification({Name = "Error",Content = "You have enter limbo [ don't show all, not work ]",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab4:AddButton({
	Name = "Get Bomb",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Warp" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124919840) then
OldTouch = workspace.DEATHBARRIER.CanTouch
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("Ragdolled").Value == false
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame
task.wait(0.2)
game.ReplicatedStorage.WarpHt:FireServer(Target.Character:WaitForChild("HumanoidRootPart"))
task.wait(0.15)
if workspace.DEATHBARRIER.CanTouch == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DEATHBARRIER.CFrame
else
workspace.DEATHBARRIER.CanTouch = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DEATHBARRIER.CFrame
end
wait(0.1)
game:GetService("ReplicatedStorage").WLOC:FireServer()
wait(0.2)
workspace.DEATHBARRIER.CanTouch = OldTouch
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Warp equipped, or you have owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab4:AddButton({
	Name = "Get Warp",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Swapper" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124914780) then
if _G.ClosestMagnitude == nil then
_G.ClosestMagnitude = 999999
end
repeat
for _, v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") then
local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
if Magnitude <= _G.ClosestMagnitude then
if v.Character:FindFirstChild("entered") == nil or v.Character.Humanoid.Health == 0 then
_G.ClosestMagnitude = 999999
RandomPlayer = nil
else
_G.ClosestMagnitude = Magnitude
RandomPlayer = v
end
end
end
end
if RandomPlayer and _G.ClosestMagnitude ~= 999999 then
if RandomPlayer ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RandomPlayer.Character:FindFirstChild("Head").CFrame
wait(0.17)
game.ReplicatedStorage.HitSwapper:FireServer(RandomPlayer.Character:WaitForChild("Head"))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
end
end
end
task.wait(0.15)
until RandomPlayer.Character.HumanoidRootPart.Position.Y < -10
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
wait(0.15)
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(0.2)
if _G.ClosestMagnitude and RandomPlayer then
_G.ClosestMagnitude = nil
RandomPlayer = nil
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Swapper equipped, or you have owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab4:AddButton({
	Name = "Get Plank",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 4031317971987872) then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 97, 4)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.3)
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 106, -6)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Fort equipped, or you have owner badge [ Don't turn on shiftlock ]",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab4:AddButton({
	Name = "Get Blasphemy",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "bus" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 3335299217032061) then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
repeat
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
break
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character:FindFirstChild("entered")
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
task.wait(0.34)
game:GetService("ReplicatedStorage").busmoment:FireServer()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
wait(1.5)
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
wait(0.8)
for i = 1,50 do
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "BusModel" then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
task.wait()
end
end
task.wait(3.5)
until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 3335299217032061)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have bus equipped, or you have owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab4:AddButton({
	Name = "Auto Get FrostBite",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56)
wait(0.7)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
]])
end
game:GetService("TeleportService"):Teleport(17290438723)
  	end    
})

Tab4:AddButton({
	Name = "Get Chain (Needs 1k slaps)",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 1000 then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
 repeat wait() until game.Workspace:FindFirstChild("Map"):FindFirstChild("CodeBrick")
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "1st" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    first = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    first = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    first = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    first = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "2nd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    second = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    second = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    second = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    second = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "3rd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    third = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    third = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    third = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    third = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "4th" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    fourth = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    fourth = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    fourth = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    fourth = "2"
                end
                    end
                end
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
game:GetService("TeleportService"):Teleport(6403373529)
    ]])
end
game:GetService("TeleportService"):Teleport(9431156611)
end
  	end    
})

Tab4:AddButton({
                    Name = "Get [REDACTED] (Needs 5k slaps)",
Callback = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
Door = 0
for i = 1, 10 do
Door = Door + 1
        if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) then
        else
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door], 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door], 1)
wait(3.75)
end
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You need 5000+ slaps.",Image = "rbxassetid://7733658504",Time = 5})
            end
end
                    })

Tab4:AddButton({
	Name = "Get Free Lamp",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 490455814138437) then
repeat task.wait()
game:GetService("ReplicatedStorage").nightmare:FireServer("LightBroken")
until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 490455814138437)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have ZZZZZZZ equipped, or Owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab4:AddToggle({
	Name = "Siphon Farm",
	Default = false,
	Callback = function(Value)
_G.Siphonfarm = Value
while _G.Siphonfarm do
if game.Workspace:FindFirstChild("SiphonOrb") then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "SiphonOrb" then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
                end
task.wait()
end
	end    
})

Tab2:AddButton({
	Name = "Sbeve All Player",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Sbeve" or game.Players.LocalPlayer.Character:FindFirstChild("stevebody") then
for i,v in pairs(game.Players:GetChildren()) do
         if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
              if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Ragdolled.Value == false then
                 v.Character.HumanoidRootPart.CanCollide = false
                 v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.stevebody.CFrame
              end
          end
     end
 end
  	end    
})

Tab3:AddButton({
	Name = "Infinite Invisibility (Use in lobby) (Glove still visible)",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Slaps.Value >= 666 then
OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
else
OrionLib:MakeNotification({Name = "Error",Content = "You need to be in lobby and have 666+ slaps.",Image = "rbxassetid://7733658504",Time = 5})
end
                    end    
                })

Tab3:AddDropdown({
	Name = "Teleport",
	Default = "",
	Options = {"Safe spot", "Arena",  "Default Arena", "Lobby", "Tournament", "Moai Island", "Slapple Island", "Plate"},
	Callback = function(Value)
if Value == "Safe spot" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,28,0)
elseif Value == "Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Moai Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
elseif Value == "Slapple Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
elseif Value == "Plate" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
elseif Value == "Tournament" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
elseif Value == "Default Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
elseif Value == "Lobby" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)
end
	end    
})

Tab3:AddTextbox({
	Name = "Equip Glove (Only use in lobby)",
	Default = "Glove Name",
	TextDisappear = true,
	Callback = function(Value)
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
		fireclickdetector(workspace.Lobby[Value].ClickDetector)
else
OrionLib:MakeNotification({Name = "Error",Content = "You aren't in the lobby.",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab3:AddButton({
	Name = "Infinite Golden (Use in arena)",
	Callback = function()
game:GetService("ReplicatedStorage").Goldify:FireServer(true)
                    end    
                })

Tab3:AddToggle({
                    Name = "Auto Click Tycoon",
                    Default = false,
                    Callback = function(Value)
AutoTycoon = Value
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "End" and v.ClassName == "Part" then
            v.Size = Vector3.new(28, 0.3, 4)
        end
    end
while AutoTycoon do
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Click" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
    task.wait()
end
                    end    
                })

Tab3:AddButton({
	Name = "Destroy all tycoons",
	Callback = function()
for i = 1, 110 do
 for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Destruct" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
task.wait()
end
                    end    
                })

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TeleportActive = false  -- Toggle state
local DelayTime = 1.5  -- Delay between teleports
local BannedGloves = { "Rock", "Megarock", "Bob", "Rob", "Custom" }

-- Function to check if a player is in the arena
local function IsInArena(player)
    local Character = player.Character
    if Character and Character:FindFirstChild("HumanoidRootPart") then
        local Position = Character.HumanoidRootPart.Position
        return Position.Y < 20  -- Assuming the arena is below Y = 20
    end
    return false
end

-- Function to get the player's equipped glove
local function GetPlayerGlove(player)
    if player and player.Character then
        for _, v in pairs(player.Character:GetChildren()) do
            if v:IsA("Tool") then
                return v.Name  -- Glove name
            end
        end
    end
    return nil
end

-- Function to teleport to a random player (loop)
local function StartTeleportLoop()
    while TeleportActive do
        local EligiblePlayers = {}

        -- Find valid players in the arena
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and IsInArena(player) then
                local Glove = GetPlayerGlove(player)
                if not table.find(BannedGloves, Glove) then
                    table.insert(EligiblePlayers, player)
                end
            end
        end

        -- Teleport if we have valid players
        if #EligiblePlayers > 0 then
            local Target = EligiblePlayers[math.random(1, #EligiblePlayers)]
            if Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
            end
        end

        task.wait(DelayTime)  -- Wait before teleporting again
    end
end

-- Restart teleport loop after respawn
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)  -- Wait for character to load
    if TeleportActive then
        StartTeleportLoop()
    end
end)

-- UI Toggle Button
Tab2:AddToggle({
    Name = "Slap Farm (Teleport to random player)",
    Default = false,
    Callback = function(Value)
        TeleportActive = Value
        if TeleportActive then
            StartTeleportLoop()
        end
    end    
})

AR = Tab5:AddToggle({
                    Name = "Anti Ragdoll (Resets character)",
                    Default = false,
                    Callback = function(Value)
AntiRagdoll = Value
if AntiRagdoll then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end)
end)
end
                    end    
                })

game.Workspace.dedBarrier.Position =  Vector3.new(15, -17, 41.5)
ADB = Tab5:AddToggle({
                    Name = "Anti Death Barriers",
                    Default = false,
                    Callback = function(Value)
if Value == true then
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
workspace.ArenaBarrier.CanTouch = false
workspace.AntiDefaultArena.CanTouch = false
else
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
end
                    end    
                })

Tab5:AddToggle({
                    Name = "Anti Brazil",
                    Default = false,
                    Callback = function(Value)
if Value == true then
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        v.CanTouch = false
                end
else
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        v.CanTouch = true
                end
end
                    end    
                })

               Tab5:AddToggle({
                    Name = "Anti Cube of Death",
                    Default = false,
                    Callback = function(Value)
if Value == true then
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
        else
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
        end
                    end    
                })

Tab5:AddToggle({
                    Name = "Anti Timestop",
                    Default = false,
                    Callback = function(Value)
AntiTimestop = Value
while AntiTimestop do
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.Anchored = false
                    end
                end
task.wait()
end
                    end    
                })

               Tab5:AddToggle({
                    Name = "Anti Squid",
                    Default = false,
                    Callback = function(Value)
AntiSquid = Value
if AntiSquid == false then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
        end
while AntiSquid do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
end
task.wait()
end
                    end    
                })

               Tab5:AddToggle({
                    Name = "Anti Za Hando",
                    Default = false,
                    Callback = function(Value)
AntiZaHando = Value
            while AntiZaHando do
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "Part" then
                        v:Destroy()
                    end
                end
task.wait()
            end
                    end    
                })

Tab5:AddToggle({
                    Name = "Anti Reaper",
                    Default = false,
                    Callback = function(Value)
AntiReaper = Value
            while AntiReaper do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "DeathMark" then
                        game:GetService("ReplicatedStorage").ReaperGone:FireServer(v)
                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                    end
                end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "Anti Pusher",
                    Default = false,
                    Callback = function(Value)
AntiPusher = Value
            while AntiPusher do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "wall" then
                        v.CanCollide = false
                    end
                end
task.wait()
end
                    end    
                })

Tab5:AddToggle({
                    Name = "Anti Booster",
                    Default = false,
                    Callback = function(Value)
AntiBooster = Value
while AntiBooster do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "BoosterObject" then
                        v:Destroy()
                    end
                end
task.wait()
end
                    end    
                })

               Tab5:AddToggle({
                    Name = "Anti Mail",
                    Default = false,
                    Callback = function(Value)
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = Value
AntiMail = Value
while AntiMail do
if game.Players.LocalPlayer.Character:FindFirstChild("YouHaveGotMail") then
        game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = true
end
task.wait()
end
                    end    
                })

Tab5:AddToggle({
                    Name = "Anti Stun",
                    Default = false,
                    Callback = function(Value)
AntiStun = Value
while AntiStun do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Workspace:FindFirstChild("Shockwave") and game.Players.LocalPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
task.wait()
end
                    end    
                })

                Tab5:AddToggle({
                    Name = "Anti Megarock/Custom",
                    Default = false,
                    Callback = function(Value)
AntiRock = Value
while AntiRock do
for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "rock" then
                        v.CanTouch = false
                        v.CanQuery = false
                    end
                end
task.wait()
end
                    end    
                })

AntiSbeve = Tab5:AddToggle({
	Name = "Anti Sbeve",
	Default = false,
	Callback = function(Value)
		_G.AntiSbeve = Value
while _G.AntiSbeve do
for _,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("stevebody") then
                        v.Character:FindFirstChild("stevebody").CanTouch = false
                        v.Character:FindFirstChild("stevebody").CanQuery = false
                        v.Character:FindFirstChild("stevebody").CanCollide = false
                    end
                end
task.wait()
end
	end    
})

AntiBallBaller = Tab5:AddToggle({
	Name = "Anti Ball Baller",
	Default = false,
	Callback = function(Value)
		_G.AntiBallBaller = Value
while _G.AntiBallBaller do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "ClonedBall" then
                        v.CanTouch = false
                        v.CanCollide = true
                    end
                end
task.wait()
end
	end    
})

AntiBus = Tab5:AddToggle({
	Name = "Anti Bus",
	Default = false,
	Callback = function(Value)
		_G.AntiBus = Value
while _G.AntiBus do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "BusModel" then
                        v.CanTouch = false
                    end
                end
task.wait()
end
	end    
})

AntiLure = Tab5:AddToggle({
	Name = "Anti Lure",
	Default = false,
	Callback = function(Value)
		_G.AntiLure = Value
while _G.AntiLure do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "_lure") and v:FindFirstChild("Root") and v:FindFirstChild("watercircle") then
                        v.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        v.watercircle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
task.wait()
end
	end    
})

AntiJack = Tab5:AddToggle({
	Name = "Anti Hallow - Jack",
	Default = false,
	Callback = function(Value)
game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = Value
	end    
})

AntiNightmareAndPotion = Tab5:AddToggle({
	Name = "Anti Nightmare",
	Default = false,
	Callback = function(Value)
        if Value == true then
        game.Players.LocalPlayer.PlayerScripts.VFXListener.NightmareEffect.Parent = game.Lighting
    else
        game.Players.LocalPlayer.PlayerScripts.VFXListener.NightmareEffect.Parent = game.Players.LocalPlayer.PlayerScripts.VFXListener
    end
	end    
})

AntiIceAndPotion = Tab5:AddToggle({
	Name = "Anti Ice",
	Default = false,
	Callback = function(Value)
_G.AntiIce = Value
while _G.AntiIce do
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "Icecube" then
                v:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
            end
       end
task.wait()
end
	end    
})

AntiBrick = Tab5:AddToggle({
	Name = "Anti Brick",
	Default = false,
	Callback = function(Value)
_G.AntiBrick = Value
while _G.AntiBrick do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Union" then
                        v.CanTouch = false
                        v.CanQuery = false
                    end
                end
task.wait()
end
	end    
})

AntiAttackPlank = Tab5:AddToggle({
	Name = "Anti Plank",
	Default = false,
	Callback = function(Value)
	_G.AntiPlank = Value
while _G.AntiPlank do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "'s Plank") and v.ClassName == "Part" then
                         v.CanTouch = false
                         v.CanQuery = false
                     end
                end
task.wait()
end
	end    
})

AntiBubble = Tab5:AddToggle({
	Name = "Anti Bubble",
	Default = false,
	Callback = function(Value)
		 _G.AntiBubble = Value
while _G.AntiBubble do
for i,v in pairs(workspace:GetChildren()) do
                    if v.Name == "BubbleObject" and v:FindFirstChild("Weld") then
                        v:FindFirstChild("Weld"):Destroy()
                    end
               end
task.wait()
end
	end    
})

AutoTycoon = Tab4:AddToggle({
	Name = "Get Tycoon",
	Default = false,
	Callback = function(Value)
	   _G.AutoTpPlate = Value
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and #game.Players:GetPlayers() >= 7 then
while _G.AutoTpPlate do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") and #game.Players:GetPlayers() >= 7 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Plate.CFrame
end
task.wait()
end
elseif _G.AutoTpPlate == true then
OrionLib:MakeNotification({Name = "Error",Content = "You need enter erane, or 7 people the server",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoTycoon:Set(false)
end
	end    
})