local KeyScreenGui = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local KeyTitle = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local GetKeyButton = Instance.new("TextButton")
local VerifyKeyButton = Instance.new("TextButton")

local function addUICorner(parent, cornerRadius)
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(cornerRadius, 0)
    uiCorner.Parent = parent
end

KeyScreenGui.Parent = game.CoreGui

KeyFrame.Parent = KeyScreenGui
KeyFrame.BackgroundTransparency = 0.7
KeyFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
KeyFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
KeyFrame.Position = UDim2.new(0.35, 0, 0.35, 0)
addUICorner(KeyFrame, 0.1)

-- UIStroke for KeyFrame
local frameStroke = Instance.new("UIStroke", KeyFrame)
frameStroke.Thickness = 3
frameStroke.LineJoinMode = Enum.LineJoinMode.Round
frameStroke.Transparency = 0

KeyTitle.Parent = KeyFrame
KeyTitle.Text = "Key System"
KeyTitle.Size = UDim2.new(1, 0, 0.2, 0)
KeyTitle.BackgroundTransparency = 1
KeyTitle.TextSize = 20
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
addUICorner(KeyTitle, 0.1)

-- UIStroke for KeyTitle
local titleStroke = Instance.new("UIStroke", KeyTitle)
titleStroke.Thickness = 2
titleStroke.LineJoinMode = Enum.LineJoinMode.Round
titleStroke.Transparency = 0

KeyBox.Parent = KeyFrame
KeyBox.Size = UDim2.new(0.8, 0, 0.2, 0)
KeyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyBox.BackgroundTransparency = 0.7
KeyBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.PlaceholderText = "Enter Key"
KeyBox.TextSize = 16
addUICorner(KeyBox, 0.2)

GetKeyButton.Parent = KeyFrame
GetKeyButton.Text = "Get Key"
GetKeyButton.Size = UDim2.new(0.4, 0, 0.2, 0)
GetKeyButton.Position = UDim2.new(0.05, 0, 0.6, 0)
GetKeyButton.BackgroundTransparency = 0.9
GetKeyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
addUICorner(GetKeyButton, 0.2)

-- UIStroke for GetKeyButton
local getKeyStroke = Instance.new("UIStroke", GetKeyButton)
getKeyStroke.Thickness = 2
getKeyStroke.LineJoinMode = Enum.LineJoinMode.Round
getKeyStroke.Transparency = 0

VerifyKeyButton.Parent = KeyFrame
VerifyKeyButton.Text = "Verify Key"
VerifyKeyButton.Size = UDim2.new(0.4, 0, 0.2, 0)
VerifyKeyButton.Position = UDim2.new(0.55, 0, 0.6, 0)
VerifyKeyButton.BackgroundTransparency = 0.9
VerifyKeyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
VerifyKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
addUICorner(VerifyKeyButton, 0.2)

-- UIStroke for VerifyKeyButton
local verifyKeyStroke = Instance.new("UIStroke", VerifyKeyButton)
verifyKeyStroke.Thickness = 2
verifyKeyStroke.LineJoinMode = Enum.LineJoinMode.Round
verifyKeyStroke.Transparency = 0

-- Rainbow effect for UIStroke (Borders only) & Fake Text Border
local function setRainbowEffect()
    while true do
        for i = 0, 1, 0.01 do
            local color = Color3.fromHSV((tick() * 0.1 + i) % 1, 1, 1)
            frameStroke.Color = color
            titleStroke.Color = color
            getKeyStroke.Color = color
            verifyKeyStroke.Color = color
            KeyBoxBorder.TextColor3 = color -- Apply rainbow to fake border text
            wait(0.05)
        end
    end
end

coroutine.wrap(setRainbowEffect)()

local correctKey = "C-L-U-D-E-10k"

VerifyKeyButton.MouseButton1Click:Connect(function()
    if KeyBox.Text == correctKey then
KeyFrame:Destroy()
        print("Correct Key!")
loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/CludeHubV3/refs/heads/main/CludeHubV3SlapBattles.lua"))()
end
end)