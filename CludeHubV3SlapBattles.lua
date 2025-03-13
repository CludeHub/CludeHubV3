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
mainButton.BackgroundTransparency = 1 -- Make the background transparent
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
cmButton.BackgroundTransparency = 1 -- Make the background transparent
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

-- Set ZIndex values for proper layering order

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
end)

cmButton.MouseButton1Click:Connect(function()
end)

msButton.MouseButton1Click:Connect(function()
end)

bdButton.MouseButton1Click:Connect(function()
end)

plButton.MouseButton1Click:Connect(function()
end)
