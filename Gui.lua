local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 140)
frame.Position = UDim2.new(0, 500, 0, 200)
frame.Parent = screenGui

frame.Active = true
frame.Draggable = true

local invisible = Instance.new("TextButton")
invisible.Size = UDim2.new(0, 150, 0, 20)
invisible.Position = UDim2.new(0, 25, 0, 20)
invisible.Text = "Server-side Invisible"
invisible.Parent = frame

local particles = Instance.new("TextButton")
particles.Size = UDim2.new(0, 150, 0, 20)
particles.Position = UDim2.new(0, 25, 0, 40)
particles.Text = "Server-side particle spam"
particles.Parent = frame

local tp = Instance.new("TextButton")
tp.Size = UDim2.new(0, 150, 0, 20)
tp.Position = UDim2.new (0, 25, 0, 60)
tp.Text = "Tp near coolant"
tp.Parent = frame

local click = Instance.new("TextButton")
click.Size = UDim2.new(0, 150, 0, 20)
click.Position = UDim2.new(0, 25, 0, 80)
click.Text = "Unlock / lock door"
click.Parent = frame

local title = Instance.new("TextButton")
title.Size = UDim2.new(0, 170, 0, 20)
title.Position = UDim2.new(0, 15, 0, 100)
title.Text = "Script development by Dmjsj987aIt"
title.Parent = frame

invisible.MouseButton1Click:Connect(function()
        game:GetService('ReplicatedStorage'):WaitForChild('TP'):FireServer()
end)

particles.MouseButton1Click:Connect(function()
        while true do
    game:GetService('ReplicatedStorage'):WaitForChild('TP'):FireServer()
    wait(0.1)     
end
end)

click.MouseButton1Click:Connect(function()
        while true do 
        local Event = workspace.LockingDoor.ActiveButton.ClickDetect:FireServer()
        wait(0.1)
end
end)

tp.MouseButton1Click:Connect(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(939, 20, 60)
end)
