local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "AnfermusScriptsUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Main background
local main = Instance.new("Frame")
main.Size = UDim2.new(0.4, 0, 1, 0)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
main.Parent = gui

-- Sidebar
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 220, 1, 0)
sidebar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
sidebar.Parent = main

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "Anfermus Scripts"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.ArialBold
title.TextSize = 18
title.Parent = sidebar

-- Sidebar buttons
local sidebarItems = {
"⭐ Main",
"🌐 Universal",
"⚙ Settings",
"ℹ Info"
}

for i, text in ipairs(sidebarItems) do
local btn = Instance.new("TextButton")
btn.Size = UDim2.new(1, -20, 0, 35)
btn.Position = UDim2.new(0, 10, 0, 50 + (i - 1) * 40)
btn.BackgroundTransparency = 1
btn.Text = text
btn.TextColor3 = Color3.fromRGB(200, 200, 200)
btn.Font = Enum.Font.Arial
btn.TextSize = 14
btn.Parent = sidebar
end

-- Content area
local content = Instance.new("ScrollingFrame")
content.Position = UDim2.new(0, 220, 0, 0)
content.Size = UDim2.new(1, -220, 1, 0)
content.CanvasSize = UDim2.new(0, 0, 0, 0)
content.ScrollBarImageTransparency = 0.5
content.BackgroundTransparency = 1
content.Parent = main

local games = {
"Fling Things and People",
"Blade Ball",
"Natural Disaster Survival",
"Fisch",
"3008",
"Muscle Legends",
"Car Driving Ultimate",
"Bee Swarm Simulator",
"Plants vs Brainrots",
"Blox Fruits",
"Dig to Earth’s Core",
"Gunfight Arena",
"Untitled Tag Game",
"Driving Empire",
"Blind Shot",
"Rivals",
"Murder Mystery 2",
"Evade",
"Jailbreak",
"99 Nights in the Forest",
"Dusty Trip"
}

local y = 10

for _, name in ipairs(games) do
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 260, 0, 45)
button.Position = UDim2.new(0, 20, 0, y)
button.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
button.Text = name
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.Arial
button.TextSize = 14
button.AutoButtonColor = true
button.Parent = content

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = button

y += 55
end

content.CanvasSize = UDim2.new(0, 0, 0, y)
