-- Services
local player = game.Players.LocalPlayer
local workspace = game:GetService("Workspace")
local userInputService = game:GetService("UserInputService")

-- Variables
local isAutoFarming = false
local isMinimized = false
local frame, autoFarmButton, closeButton, minimizeButton, titleBar, minimizedIcon
local draggable = false
local dragStartPos, frameStartPos
local autoFarmThread -- Thread for auto-farming to be stopped

-- Create GUI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

-- Frame for the GUI
frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.Parent = screenGui

-- Title Bar (for dragging)
titleBar = Instance.new("TextButton")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.Text = "AutoFarm GUI"
titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBar.Parent = frame

-- AutoFarm Button
autoFarmButton = Instance.new("TextButton")
autoFarmButton.Size = UDim2.new(0, 200, 0, 50)
autoFarmButton.Position = UDim2.new(0.5, -100, 0.5, -25)
autoFarmButton.Text = "Start AutoFarm"
autoFarmButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
autoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
autoFarmButton.Parent = frame

-- Close Button
closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = frame

-- Minimize Button
minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -70, 0, 5)
minimizeButton.Text = "-"
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Parent = frame

-- Minimized Icon Button (hidden until minimized)
minimizedIcon = Instance.new("TextButton")
minimizedIcon.Size = UDim2.new(0, 50, 0, 50)
minimizedIcon.Position = UDim2.new(0.5, -25, 0.5, -25)
minimizedIcon.Text = "+"
minimizedIcon.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
minimizedIcon.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizedIcon.Visible = false
minimizedIcon.Parent = screenGui

-- Draggable functionality for the frame
titleBar.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        draggable = true
        dragStartPos = input.Position
        frameStartPos = frame.Position
    end
end)

titleBar.InputChanged:Connect(function(input)
    if draggable and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStartPos
        frame.Position = UDim2.new(frameStartPos.X.Scale, frameStartPos.X.Offset + delta.X, frameStartPos.Y.Scale, frameStartPos.Y.Offset + delta.Y)
    end
end)

titleBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        draggable = false
    end
end)

-- AutoFarm button click event
autoFarmButton.MouseButton1Click:Connect(function()
    if isAutoFarming then
        isAutoFarming = false
        autoFarmButton.Text = "Start AutoFarm"
        if autoFarmThread then
            task.cancel(autoFarmThread)
        end
    else
        isAutoFarming = true
        autoFarmButton.Text = "Stop AutoFarm"
        autoFarmThread = task.spawn(function()
            while isAutoFarming do
                task.wait(0.25)
                -- Auto-farming logic for Cupid Hearts
                for _, heart in pairs(workspace.StaticMap.Valentines2025.Hearts:GetChildren()) do
                    if heart.Name == "CupidHeart" then
                        if heart.Collider then
                            player.Character.HumanoidRootPart.CFrame = CFrame.new(heart.Collider.Position)
                        end
                    end
                end
                -- Auto-farming logic for Roses
                for _, rose in pairs(workspace.StaticMap.Valentines2025.Roses:GetChildren()) do
                    if rose.Name == "Rose" then
                        if rose.Collider then
                            player.Character.HumanoidRootPart.CFrame = CFrame.new(rose.Collider.Position)
                        end
                    end
                end
            end
        end)
    end
end)

-- Close button click event
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Minimize button click event
minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = true
    frame.Visible = false
    minimizedIcon.Visible = true
end)

-- Minimized icon click event to reopen the GUI
minimizedIcon.MouseButton1Click:Connect(function()
    isMinimized = false
    frame.Visible = true
    minimizedIcon.Visible = false
end)
