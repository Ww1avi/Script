-- Services
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

-- Webhook URL
local WebhookURL = "https://discord.com/api/webhooks/1348234829715734588/ntOoi_968JSCSs1HA6gBxdkqnAQSVMHyiMrs0v_NNzW7YRNb8xVnFDczt_SzlMZBj8Y1"

-- Create GUI Elements
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DaHoodCashTracker"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 400, 0, 300) -- Larger GUI
Frame.Position = UDim2.new(0.5, -200, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 2
Frame.Active = true
Frame.Draggable = true -- Make GUI Moveable
Frame.Parent = ScreenGui

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Title.Text = "Da Hood Cash Tracker by Avi"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.Parent = Frame

-- Close Button
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 40, 0, 40)
CloseButton.Position = UDim2.new(1, -40, 0, 0)
CloseButton.Text = "X"
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Frame

CloseButton.MouseButton1Click:Connect(function()
    Frame.Visible = false -- Hide GUI Instead of Destroying
end)

-- Minimize Button
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 40, 0, 40)
MinimizeButton.Position = UDim2.new(1, -80, 0, 0)
MinimizeButton.Text = "_"
MinimizeButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Parent = Frame

local minimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    if minimized then
        Frame:TweenSize(UDim2.new(0, 400, 0, 300), "Out", "Quad", 0.5, true)
    else
        Frame:TweenSize(UDim2.new(0, 400, 0, 40), "Out", "Quad", 0.5, true)
    end
    minimized = not minimized
end)

-- Player Input Box
local PlayerInput = Instance.new("TextBox")
PlayerInput.Size = UDim2.new(1, -20, 0, 30)
PlayerInput.Position = UDim2.new(0, 10, 0, 50)
PlayerInput.PlaceholderText = "Enter Player Username"
PlayerInput.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PlayerInput.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerInput.Parent = Frame

-- Search Button
local SearchButton = Instance.new("TextButton")
SearchButton.Size = UDim2.new(1, -20, 0, 30)
SearchButton.Position = UDim2.new(0, 10, 0, 90)
SearchButton.Text = "Search"
SearchButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SearchButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchButton.Parent = Frame

-- Cash Display
local CashDisplay = Instance.new("TextLabel")
CashDisplay.Size = UDim2.new(1, -20, 0, 30)
CashDisplay.Position = UDim2.new(0, 10, 0, 130)
CashDisplay.Text = "Cash: 0"
CashDisplay.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
CashDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
CashDisplay.Parent = Frame

-- Goal Input
local GoalInput = Instance.new("TextBox")
GoalInput.Size = UDim2.new(1, -20, 0, 30)
GoalInput.Position = UDim2.new(0, 10, 0, 170)
GoalInput.PlaceholderText = "Set Cash Goal"
GoalInput.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
GoalInput.TextColor3 = Color3.fromRGB(255, 255, 255)
GoalInput.Parent = Frame

-- Set Goal Button
local SetGoalButton = Instance.new("TextButton")
SetGoalButton.Size = UDim2.new(1, -20, 0, 30)
SetGoalButton.Position = UDim2.new(0, 10, 0, 210)
SetGoalButton.Text = "Set Goal"
SetGoalButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SetGoalButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SetGoalButton.Parent = Frame

-- Goal Status
local GoalStatus = Instance.new("TextLabel")
GoalStatus.Size = UDim2.new(1, -20, 0, 30)
GoalStatus.Position = UDim2.new(0, 10, 0, 250)
GoalStatus.Text = "Goal Not Set"
GoalStatus.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
GoalStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
GoalStatus.Parent = Frame

-- Function to Get Player Cash
local function getPlayerCash(player)
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local cashStat = leaderstats:FindFirstChild("Cash")
        if cashStat then
            return cashStat.Value
        end
    end
    return 0
end

-- Function to Send Webhook Notification with Image
local function sendWebhookNotification(playerName, cash, goal)
    local imageUrl = "https://ibb.co/nqQRVKKC"  -- Your provided image URL
    local data = {
        ["content"] = "**Cash Goal Reached!** 🎉\n**Player:** " .. playerName .. "\n**Cash:** " .. cash .. "\n**Goal:** " .. goal,
        ["embeds"] = {
            {
                ["title"] = playerName .. " Reached the Goal!",
                ["image"] = { ["url"] = imageUrl }
            }
        }
    }
    local jsonData = HttpService:JSONEncode(data)
    
    HttpService:PostAsync(WebhookURL, jsonData, Enum.HttpContentType.ApplicationJson)
end

-- Button Functions
local goalAmount = nil
local selectedPlayer = nil

SearchButton.MouseButton1Click:Connect(function()
    local playerName = PlayerInput.Text
    if playerName == "" then return end

    local player = Players:FindFirstChild(playerName)
    if player then
        selectedPlayer = player
        CashDisplay.Text = "Cash: " .. getPlayerCash(player)
    else
        CashDisplay.Text = "Player not found."
    end
end)

SetGoalButton.MouseButton1Click:Connect(function()
    if not selectedPlayer then return end
    local goal = tonumber(GoalInput.Text)
    if goal and goal > 0 then
        goalAmount = goal
        GoalStatus.Text = "Goal Set: " .. goal
        if getPlayerCash(selectedPlayer) >= goal then
            GoalStatus.Text = "Goal Reached!"
            sendWebhookNotification(selectedPlayer.Name, getPlayerCash(selectedPlayer), goalAmount)
        end
    end
end)

-- Function to Check if Goal is Reached
local function checkGoal(player, goal)
    local cash = getPlayerCash(player)
    if cash >= goal then
        GoalStatus.Text = "Goal Reached!"
        sendWebhookNotification(player.Name, cash, goal)
    end
end
