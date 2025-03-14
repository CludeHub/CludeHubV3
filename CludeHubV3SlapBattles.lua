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
-- Get the local player and their PlayerGui
local localPlayer = game.Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui and parent it to PlayerGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Create the first frame and set its properties
local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)  -- Set background color
frame.Size = UDim2.new(0, 50, 0, 50)  -- Set size
frame.Position = UDim2.new(0, 53, 0, 0)  -- Set position
frame.Parent = screenGui  -- Parent frame to ScreenGui
frame.BackgroundTransparency = 0.7

-- Add UICorner to the first frame to round its corners
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 10)  -- Set corner radius
frameCorner.Parent = frame  -- Parent UICorner to the frame

-- Create ImageButton, set its properties, and parent it to the frame
local imageButton = Instance.new("ImageButton")
imageButton.Size = UDim2.new(0, 50, 0, 50)  -- Set size of the button
imageButton.Position = UDim2.new(0, 0, 0, 0)  -- Set position of the button
imageButton.Image = "rbxassetid://15315284749"  -- Set image for the button
imageButton.Transparency = 1 -- Make the button transparent
imageButton.Parent = frame  -- Parent imageButton to the frame

-- Create the second frame (initially hidden above the screen)
local frame2 = Instance.new("Frame")
frame2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)  -- Set background color
frame2.Size = UDim2.new(0, 500, 0, 300)  -- Set size
frame2.Position = UDim2.new(0, 153, 0, -300)  -- Initially place it above the screen (hidden)
frame2.Parent = screenGui  -- Parent frame2 to ScreenGui
frame2.Visible = false  -- Make frame2 initially invisible
frame2.BackgroundTransparency = 0.8

-- Add UICorner to the second frame to round its corners
local frame2Corner = Instance.new("UICorner")
frame2Corner.CornerRadius = UDim.new(0, 10)  -- Set corner radius
frame2Corner.Parent = frame2  -- Parent UICorner to frame2

-- Create a UIStroke to give a border to frame2
local uiStroke = Instance.new("UIStroke")
uiStroke.Parent = frame2
uiStroke.Thickness = 3  -- Set thickness of the border
uiStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
uiStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border by cycling through colors
local function setRainbowBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            uiStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow border effect
coroutine.wrap(setRainbowBorder)()

-- Create a UIStroke to give a border to frame
local uiStroke1 = Instance.new("UIStroke")
uiStroke1.Parent = frame
uiStroke1.Thickness = 2 -- Set thickness of the border
uiStroke1.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
uiStroke1.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border by cycling through colors
local function setRainbowBorder1()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            uiStroke1.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow border effect
coroutine.wrap(setRainbowBorder1)()

-- Create a TextLabel for the rainbow border at the top of frame2
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0, 30)  -- Set size (full width, 30px height)
textLabel.Position = UDim2.new(0, -182, 0, 0)  -- Position at the top of frame2
textLabel.Text = "Slap Battle"  -- Set the text
textLabel.BackgroundTransparency = 1  -- Make the background transparent
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
textLabel.TextSize = 16  -- Set text size
textLabel.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
textLabel.Parent = frame2  -- Parent the TextLabel to frame2

-- Create a rainbow effect for the border of the TextLabel
local uiStroke2 = Instance.new("UIStroke")
uiStroke2.Parent = textLabel
uiStroke2.Thickness = 1 -- Set thickness of the border
uiStroke2.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
uiStroke2.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the TextLabel
local function setRainbowTextLabelBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            uiStroke2.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the TextLabel's border
coroutine.wrap(setRainbowTextLabelBorder)()

-- Create a TextLabel for the rainbow border at the top of frame2
local textLabel2 = Instance.new("TextLabel")
textLabel2.Size = UDim2.new(1, 0, 0, 30)  -- Set size (full width, 30px height)
textLabel2.Position = UDim2.new(0, 0, 0, 5)  -- Position at the top of frame2
textLabel2.Text = "_________________________________________"  -- Set the text
textLabel2.BackgroundTransparency = 1  -- Make the background transparent
textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
textLabel2.TextSize = 16  -- Set text size
textLabel2.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
textLabel2.Parent = frame2  -- Parent the TextLabel to frame2

-- Create a rainbow effect for the border of the TextLabel
local uiStroke3 = Instance.new("UIStroke")
uiStroke3.Parent = textLabel2
uiStroke3.Thickness = 1 -- Set thickness of the border
uiStroke3.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
uiStroke3.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the TextLabel
local function setRainbowTextLabelBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            uiStroke3.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the TextLabel's border
coroutine.wrap(setRainbowTextLabelBorder)()

-- Create a TextLabel for the rainbow border at the top of frame2
local textLabel3 = Instance.new("TextLabel")
textLabel3.Size = UDim2.new(1, 0, 0, 30)  -- Set size (full width, 30px height)
textLabel3.Position = UDim2.new(0, -109, 0, 134)  -- Position at the top of frame2
textLabel3.Text = "_________________________"  -- Set the tex
textLabel3.BackgroundTransparency = 1  -- Make the background transparent
textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
textLabel3.TextSize = 16 -- Set text size
textLabel3.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
textLabel3.Parent = frame2  -- Parent the TextLabel to frame2

-- Create a rainbow effect for the border of the TextLabel
local uiStroke4 = Instance.new("UIStroke")
uiStroke4.Parent = textLabel3
uiStroke4.Thickness = 2 -- Set thickness of the border
uiStroke4.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
uiStroke4.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the TextLabel
local function setRainbowTextLabelBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            uiStroke4.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the TextLabel's border
coroutine.wrap(setRainbowTextLabelBorder)()

-- Create a TextLabel for the FPS counter
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(0, 200, 0, 30)  -- Set size (200px width, 30px height)
fpsLabel.Position = UDim2.new(0, 90, 0, 0)  -- Position inside frame2
fpsLabel.Text = "FPS: 0"  -- Initial text (will be updated)
fpsLabel.BackgroundTransparency = 1  -- Make the background transparent
fpsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
fpsLabel.TextSize = 16  -- Set text size
fpsLabel.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
fpsLabel.Parent = frame2  -- Parent the FPS label to frame2

-- Create a UIStroke to give a rainbow border effect to the FPS label
local fpsLabelStroke = Instance.new("UIStroke")
fpsLabelStroke.Parent = fpsLabel
fpsLabelStroke.Thickness = 1 -- Set thickness of the border
fpsLabelStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
fpsLabelStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Function to apply the rainbow effect to the FPS label's text and its border
local function setRainbowEffectForFPS()
    while true do
        -- Cycle through the colors in rainbow effect for the text
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            -- Apply the rainbow color effect to the text and the border at once
            fpsLabelStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the FPS label and its border
coroutine.wrap(setRainbowEffectForFPS)()

-- Function to update FPS count and set it on the label
local function updateFPS()
    while true do
        local fps = math.floor(1 / game:GetService("RunService").Heartbeat:Wait())  -- Calculate FPS
        fpsLabel.Text = "FPS: " .. fps  -- Update the text with the current FPS
        wait(0.1)  -- Update the FPS label every 0.1 seconds
    end
end

-- Start updating FPS counter
coroutine.wrap(updateFPS)()

-- Create a TextLabel for the player count
local playerCountLabel = Instance.new("TextLabel")
playerCountLabel.Size = UDim2.new(0, 200, 0, 30)  -- Set size (200px width, 30px height)
playerCountLabel.Position = UDim2.new(0, 215, 0, 0)  -- Position inside frame2 (adjust this as needed)
playerCountLabel.Text = "Players: 0/0"  -- Initial text (will be updated)
playerCountLabel.BackgroundTransparency = 1  -- Make the background transparent
playerCountLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
playerCountLabel.TextSize = 16  -- Set text size
playerCountLabel.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
playerCountLabel.Parent = frame2  -- Parent the player count label to frame2

-- Create a UIStroke to give a rainbow border effect to the player count label
local playerCountLabelStroke = Instance.new("UIStroke")
playerCountLabelStroke.Parent = playerCountLabel
playerCountLabelStroke.Thickness = 1 -- Set thickness of the border
playerCountLabelStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
playerCountLabelStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Function to apply the rainbow effect to the player count label's text and its border
local function setRainbowEffectForPlayerCount()
    while true do
        -- Cycle through the colors in rainbow effect for the text
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            -- Apply the rainbow color effect to the text and the border at once
            playerCountLabelStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the player count label and its border
coroutine.wrap(setRainbowEffectForPlayerCount)()

-- Function to update player count and set it on the label
local function updatePlayerCount()
    while true do
        local currentPlayerCount = game.Players.NumPlayers  -- Get the current player count
        local maxPlayerCount = game.Players.MaxPlayers  -- Get the maximum player count
        playerCountLabel.Text = "Players: " .. currentPlayerCount .. "/" .. maxPlayerCount  -- Update the text with the current player count and max players
        wait(1)  -- Update the player count label every 1 second
    end
end

-- Start updating player count
coroutine.wrap(updatePlayerCount)()

-- Create a TextLabel for the timer
local timerLabel = Instance.new("TextLabel")
timerLabel.Size = UDim2.new(0, 200, 0, 30)  -- Set size (200px width, 30px height)
timerLabel.Position = UDim2.new(0, 325, 0, 0)  -- Position inside frame2 (adjusted to avoid overlap)
timerLabel.Text = "0:00"  -- Initial text (starting from 0)
timerLabel.BackgroundTransparency = 1  -- Make the background transparent
timerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
timerLabel.TextSize = 16  -- Set text size
timerLabel.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
timerLabel.Parent = frame2  -- Parent the timer label to frame2

-- Create a UIStroke to give a rainbow border effect to the timer label
local timerLabelStroke = Instance.new("UIStroke")
timerLabelStroke.Parent = timerLabel
timerLabelStroke.Thickness = 1 -- Set thickness of the border
timerLabelStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
timerLabelStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Function to apply the rainbow effect to the timer label's text and its border
local function setRainbowEffectForTimer()
    while true do
        -- Cycle through the colors in rainbow effect for the text
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            -- Apply the rainbow color effect to the text and the border at once
            timerLabelStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the timer label and its border
coroutine.wrap(setRainbowEffectForTimer)()

-- Timer variables
local startTime = tick()  -- Capture the start time
local elapsedTime = 0     -- Time elapsed since start

-- Function to update the timer
local function updateTimer()
    while true do
        elapsedTime = tick() - startTime  -- Calculate elapsed time

        -- Calculate minutes and seconds
        local minutes = math.floor(elapsedTime / 60)
        local seconds = math.floor(elapsedTime % 60)

        -- Format the time as mm:ss, ensuring two digits for seconds
        local formattedTime = string.format("%d:%02d", minutes, seconds)

        -- Update the timer label with the formatted time
        timerLabel.Text = formattedTime

        wait(1)  -- Update the timer every second
    end
end

-- Start updating the timer
coroutine.wrap(updateTimer)()

-- Create the TextButton
local mainButton = Instance.new("TextButton")
mainButton.Size = UDim2.new(0, 105, 0, 40)  -- Set size of the button (200px width, 50px height)
mainButton.Position = UDim2.new(0, 10, 0, 30)  -- Position inside frame2 (adjust position as needed)
mainButton.Text = "Info"  -- Set text of the button
mainButton.BackgroundTransparency = 0.9 -- Make the background transparent
mainButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
mainButton.TextSize = 15.9  -- Set text size
mainButton.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
mainButton.Parent = frame2  -- Parent the TextButton to frame2

-- Create a UIStroke to give a rainbow border effect to the TextButton
local mainButtonStroke = Instance.new("UIStroke")
mainButtonStroke.Parent = mainButton
mainButtonStroke.Thickness = 2  -- Set thickness of the border
mainButtonStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
mainButtonStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the TextButton
local function setRainbowMainButtonBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            mainButtonStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the TextButton's border
coroutine.wrap(setRainbowMainButtonBorder)()

-- Create a TextButton for the "Close" button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 50, 0, 30)  -- Set the size of the button (50px width, 30px height)
closeButton.Position = UDim2.new(0, 450, 0, 1)  -- Position inside frame2 (adjust as needed)
closeButton.Text = "-"  -- Set the text to "-"
closeButton.BackgroundTransparency = 1  -- Make the background transparent
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
closeButton.TextSize = 20  -- Set text size
closeButton.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
closeButton.Parent = frame2  -- Parent the close button to frame2

-- Create a UIStroke to give a rainbow border effect to the close button
local closeButtonStroke = Instance.new("UIStroke")
closeButtonStroke.Parent = closeButton
closeButtonStroke.Thickness = 2  -- Set the thickness of the border (2)
closeButtonStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
closeButtonStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the close button
local function setRainbowCloseButtonBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            closeButtonStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the close button's border
coroutine.wrap(setRainbowCloseButtonBorder)()

-- Create the TextButton
local cmButton = Instance.new("TextButton")
cmButton.Size = UDim2.new(0, 105, 0, 40)  
cmButton.Position = UDim2.new(0, 10, 0, 68) 
cmButton.Text = "Combat"  -- Set text of the button
cmButton.BackgroundTransparency = 0.9 -- Make the background transparent
cmButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
cmButton.TextSize = 15.9  -- Set text size
cmButton.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
cmButton.Parent = frame2  -- Parent the TextButton to frame2

-- Create a UIStroke to give a rainbow border effect to the TextButton
local cbStroke = Instance.new("UIStroke")
cbStroke.Parent = cmButton
cbStroke.Thickness = 2  -- Set thickness of the border
cbStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
cbStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the TextButton
local function setRainbowMainButtonBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            cbStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the TextButton's border
coroutine.wrap(setRainbowMainButtonBorder)()

-- Create the TextButton
local msButton = Instance.new("TextButton")
msButton.Size = UDim2.new(0, 105, 0, 40)  
msButton.Position = UDim2.new(0, 10, 0, 109) 
msButton.Text = "misc"  -- Set text of the button
msButton.BackgroundTransparency = 0.9 -- Make the background transparent
msButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
msButton.TextSize = 15.9  -- Set text size
msButton.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
msButton.Parent = frame2  -- Parent the TextButton to frame2

-- Create a UIStroke to give a rainbow border effect to the TextButton
local smStroke = Instance.new("UIStroke")
smStroke.Parent = msButton
smStroke.Thickness = 2  -- Set thickness of the border
smStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
smStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the TextButton
local function setRainbowMainButtonBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            smStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the TextButton's border
coroutine.wrap(setRainbowMainButtonBorder)()

-- Create the TextButton
local bdButton = Instance.new("TextButton")
bdButton.Size = UDim2.new(0, 105, 0, 40)  
bdButton.Position = UDim2.new(0, 10, 0, 146) 
bdButton.Text = "Badge"  -- Set text of the button
bdButton.BackgroundTransparency = 0.9 -- Make the background transparent
bdButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
bdButton.TextSize = 15.9  -- Set text size
bdButton.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
bdButton.Parent = frame2  -- Parent the TextButton to frame2

-- Create a UIStroke to give a rainbow border effect to the TextButton
local dbStroke = Instance.new("UIStroke")
dbStroke.Parent = bdButton
dbStroke.Thickness = 2  -- Set thickness of the border
dbStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
dbStroke.Transparency = 0  -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the TextButton
local function setRainbowMainButtonBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            dbStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the TextButton's border
coroutine.wrap(setRainbowMainButtonBorder)()

-- Create the TextButton
local plButton = Instance.new("TextButton")
plButton.Size = UDim2.new(0, 105, 0, 40)  
plButton.Position = UDim2.new(0, 10, 0, 188) 
plButton.Text = "Player"  -- Set text of the button
plButton.BackgroundTransparency = 0.9 -- Make the background transparent
plButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Set text color (white)
plButton.TextSize = 15.9  -- Set text size
plButton.TextStrokeTransparency = 0.5  -- Add stroke to text for better visibility
plButton.Parent = frame2  -- Parent the TextButton to frame2

-- Create a UIStroke to give a rainbow border effect to the TextButton
local lpStroke = Instance.new("UIStroke")
lpStroke.Parent = plButton
lpStroke.Thickness = 2  -- Set thickness of the border
lpStroke.LineJoinMode = Enum.LineJoinMode.Round  -- Round the corners of the border
lpStroke.Transparency = 0 -- Set transparency (0 is fully visible)

-- Create a rainbow effect for the border of the TextButton
local function setRainbowMainButtonBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Make the hue cycle over time
            lpStroke.Color = Color3.fromHSV(hue % 1, 1, 1)  -- Apply the hue as a rainbow color to the border
            wait(0.05)  -- Adjust speed of the rainbow effect
        end
    end
end

-- Start the rainbow effect on the TextButton's border
coroutine.wrap(setRainbowMainButtonBorder)()

-- Create the TextButton
local arButton = Instance.new("TextButton")
arButton.Size = UDim2.new(0, 105, 0, 40)
arButton.Position = UDim2.new(0, 350, 0, 35)
arButton.Text = "Slap Aura: OFF"
arButton.BackgroundTransparency = 0.9
arButton.TextColor3 = Color3.fromRGB(255, 255, 255)
arButton.TextSize = 15.9
arButton.Visible = false
arButton.TextStrokeTransparency = 0.5
arButton.Parent = frame2  -- Make sure `frame2` exists before running this script

-- Create UIStroke for the rainbow effect
local arButtonStroke = Instance.new("UIStroke")
arButtonStroke.Parent = arButton
arButtonStroke.Thickness = 2
arButtonStroke.LineJoinMode = Enum.LineJoinMode.Round
arButtonStroke.Transparency = 0

-- Rainbow effect using RenderStepped for smooth updates
local function setRainbowMainButtonBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Fast rainbow effect
            arButtonStroke.Color = Color3.fromHSV(hue % 1, 1, 1)
            wait(0.05)  -- Faster color change speed
        end
    end
end

coroutine.wrap(setRainbowMainButtonBorder)() -- Run the rainbow effect in a separate thread

-- Game Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:FindFirstChild("HumanoidRootPart")

-- Slap Events Mapped to Glove Names
local slapEvents = {
    ["Default"] = "b",
    ["Extended"] = "b",
    ["Diamond"] = "DiamondHit",
    ["Brick"] = "BrickHit",
    ["ZZZZZZZ"] = "ZZZZZZZHit",
    ["Snow"] = "SnowHit",
    ["Pusher"] = "PusherHit",
    ["Magnet"] = "MagnetHIT",
    ["Fort"] = "Fort",
    ["General"] = "GeneralHit",
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
    ["Golden"] = "GoldenHit",
    ["Boomerang"] = "BoomerangH",
    ["Speedrun"] = "Speedrunhit",
    ["Plague"] = "PlagueHit"
}

local slapAuraEnabled = false
local slapCooldown = {} -- Table to track cooldown per player
local slapAuraLoop

-- Function to Get Current Glove Name
local function getEquippedGlove()
    local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
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

        if slapEvent then
            for _, otherPlayer in pairs(Players:GetPlayers()) do
                if otherPlayer ~= player and otherPlayer.Character then
                    local otherHRP = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if otherHRP and (hrp.Position - otherHRP.Position).Magnitude <= 20 then -- Range
                        
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

-- Function to Toggle Slap Aura and Update Button Text
local function toggleSlapAura()
    slapAuraEnabled = not slapAuraEnabled
    if slapAuraEnabled then
        arButton.Text = "Slap Aura: ON"
        slapAuraLoop = task.spawn(slapClosestPlayer)
    else
        arButton.Text = "Slap Aura: OFF"
        task.cancel(slapAuraLoop)
    end
end

-- Connect the Button Click to the Function
arButton.MouseButton1Click:Connect(toggleSlapAura)

local gdButton = Instance.new("TextButton")
gdButton.Size = UDim2.new(0, 105, 0, 40)
gdButton.Position = UDim2.new(0, 350, 0, 80)
gdButton.Text = "Godmode"
gdButton.BackgroundTransparency = 0.9
gdButton.TextColor3 = Color3.fromRGB(255, 255, 255)
gdButton.TextSize = 15.9
gdButton.Visible = false
gdButton.TextStrokeTransparency = 0.5
gdButton.Parent = frame2  -- Make sure `frame2` exists before running this script

-- Create UIStroke for the rainbow effect
local gdButtonStroke = Instance.new("UIStroke")
gdButtonStroke.Parent = gdButton
gdButtonStroke.Thickness = 2
gdButtonStroke.LineJoinMode = Enum.LineJoinMode.Round
gdButtonStroke.Transparency = 0

-- Rainbow effect using RenderStepped for smooth updates
local function setRainbowMainButtonBorder()
    while true do
        for i = 0, 1, 0.01 do
            local hue = tick() * 0.1 + i  -- Fast rainbow effect
            gdButtonStroke.Color = Color3.fromHSV(hue % 1, 1, 1)
            wait(0.05)  -- Faster color change speed
        end
    end
end

coroutine.wrap(setRainbowMainButtonBorder)() -- Run the rainbow effect in a separate thread  

gdButton.MouseButton1Click:Connect(function()
    game:GetService("Players").LocalPlayer.Reset:FireServer()
wait(3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
end)

textLabel3.Rotation = 90
local ZIndex = [[
frame2.ZIndex = 2
imageButton.ZIndex = 3
textLabel.ZIndex = 4
textLabel2.ZIndex = 5
textLabel3.ZIndex = 6
fpsLabel.ZIndex = 7
playerCountLabel.ZIndex = 8
timerLabel.ZIndex = 9
mainButton.ZIndex = 10 
cmButton.ZIndex = 10
msButton.ZIndex = 10
bdButton.ZIndex = 10
plButton.ZIndex = 10
]]

local TweenService = game:GetService("TweenService")
local isOpen = false  -- Track if frame2 is open

local normalPosition = UDim2.new(0, 153, 0, 00)  -- Position when open
local hiddenPosition = UDim2.new(0, 153, 0, -400)  -- Position when hidden

local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)  -- Smooth animation

imageButton.MouseButton1Click:Connect(function()
    if not isOpen then  -- Only open if it's closed
        isOpen = true
        local tween = TweenService:Create(frame2, tweenInfo, {Position = normalPosition})
        tween:Play()
        frame2.Visible = true
        frame.Visible = false
    end
end)

closeButton.MouseButton1Click:Connect(function()
    if isOpen then  -- Only close if it's open
        isOpen = false
        local tween = TweenService:Create(frame2, tweenInfo, {Position = hiddenPosition})
        tween:Play()
        
        -- Wait for animation to finish before hiding (optional)
        tween.Completed:Connect(function()
            frame2.Visible = false
            frame.Visible = true
        end)
    end
end)

mainButton.MouseButton1Click:Connect(function()
arButton.Visible = false
gdButton.Visible = false
end)

cmButton.MouseButton1Click:Connect(function()
arButton.Visible = true
gdButton.Visible = true
end)

msButton.MouseButton1Click:Connect(function()
arButton.Visible = false
gdButton.Visible = false
end)

bdButton.MouseButton1Click:Connect(function()
arButton.Visible = false
gdButton.Visible = false
end)

plButton.MouseButton1Click:Connect(function()
arButton.Visible = false
gdButton.Visible = false
end)
print("20k")
end
end)