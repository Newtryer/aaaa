-- Create a ScreenGui to hold the GUI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame to contain the elements
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 250)  -- Increased size to add more buttons
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Add rounded corners to the frame
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

-- Create the title label
local title = Instance.new("TextLabel")
title.Text = "Skai Pet Spawner"
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 10)
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24
title.Parent = frame

-- Create the text box for entering the pet name
local textBox = Instance.new("TextBox")
textBox.PlaceholderText = "Enter Pet Name to Spawn"
textBox.Size = UDim2.new(0.8, 0, 0, 40)
textBox.Position = UDim2.new(0.1, 0, 0.4, 0)
textBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.Font = Enum.Font.SourceSans
textBox.TextSize = 18
textBox.Parent = frame

-- Add rounded corners to the text box
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 8)
textBoxCorner.Parent = textBox

-- Create the spawn button
local spawnButton = Instance.new("TextButton")
spawnButton.Text = "Start Spawning"
spawnButton.Size = UDim2.new(0.8, 0, 0, 40)
spawnButton.Position = UDim2.new(0.1, 0, 0.7, 0)
spawnButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.8)
spawnButton.TextColor3 = Color3.new(1, 1, 1)
spawnButton.Font = Enum.Font.SourceSansBold
spawnButton.TextSize = 18
spawnButton.Parent = frame

-- Add rounded corners to the button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = spawnButton

-- Create a toggle button for enabling/disabling autofarm
local toggleButton = Instance.new("TextButton")
toggleButton.Text = "Enable Autofarm"
toggleButton.Size = UDim2.new(0.8, 0, 0, 40)
toggleButton.Position = UDim2.new(0.1, 0, 0.85, 0)
toggleButton.BackgroundColor3 = Color3.new(0.3, 0.8, 0.3)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 18
toggleButton.Parent = frame

-- Add rounded corners to the toggle button
local toggleButtonCorner = Instance.new("UICorner")
toggleButtonCorner.CornerRadius = UDim.new(0, 8)
toggleButtonCorner.Parent = toggleButton

-- Variable to track autofarm status
local isAutofarmEnabled = false

-- Function to handle toggle button click
toggleButton.MouseButton1Click:Connect(function()
    isAutofarmEnabled = not isAutofarmEnabled
    if isAutofarmEnabled then
        toggleButton.Text = "Disable Autofarm"
        print("Autofarm Enabled")
    else
        toggleButton.Text = "Enable Autofarm"
        print("Autofarm Disabled")
    end
end)

-- Function to start autofarming
local function autofarm()
    while isAutofarmEnabled do
        task.wait(0.25)
        -- Look for hearts
        for _,b in pairs(game:GetService("Workspace").StaticMap.Valentines2025.Hearts:GetChildren()) do
            if b.Name == "CupidHeart" then
                if b.Collider then
                    game:GetService("Workspace").PlayerCharacters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(b.Collider.Position)
                end
            end
        end
        
        -- Look for roses
        for _,b in pairs(game:GetService("Workspace").StaticMap.Valentines2025.Roses:GetChildren()) do
            if b.Name == "Rose" then
                if b.Collider then
                    game:GetService("Workspace").PlayerCharacters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(b.Collider.Position)
                end
            end
        end
    end
end

-- Start autofarming in the background when enabled
game:GetService("RunService").Heartbeat:Connect(function()
    if isAutofarmEnabled then
        autofarm()
    end
end)

-- Make the frame draggable
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input == dragInput) then
        update(input)
    end
end)
