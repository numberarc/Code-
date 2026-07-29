-- Title: FE SOUND SPAM
-- Only works when Respect Filtering Enabled is FALSE

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 80)
frame.Position = UDim2.new(0, 500, 0, 200)
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextButton")
title.Size = UDim2.new(0, 170, 0, 20)
title.Position = UDim2.new(0, 15, 0, 20)
title.Text = "Script development by Dmjsj987aIt"
title.Parent = frame

local fss = Instance.new("TextButton")
fss.Size = UDim2.new(0, 150, 0, 20)
fss.Position = UDim2.new(0, 25, 0, 40)
fss.Text = "FE Sound"
fss.Parent = frame

fss.MouseButton1Click:Connect(function()
        for _, v in workspace:GetDescendants() do
    if v:IsA("Sound") then
        v:Play()
    end
end
end)

-- Script developed by Dmjsj987aIt and Team Sersku
