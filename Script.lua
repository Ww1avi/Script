local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DaHood Paid Script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Paid Script",
   LoadingSubtitle = "by Avi",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Unlock Animation Pack",
   Callback = function()
 -- Animation Pack --


repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack")

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lean") then
    game.ReplicatedStorage.ClientAnimations.Lean:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lay") then
    game.ReplicatedStorage.ClientAnimations.Lay:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance1") then
    game.ReplicatedStorage.ClientAnimations.Dance1:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance2") then
    game.ReplicatedStorage.ClientAnimations.Dance2:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Greet") then
    game.ReplicatedStorage.ClientAnimations.Greet:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Chest Pump") then
    game.ReplicatedStorage.ClientAnimations["Chest Pump"]:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Praying") then
    game.ReplicatedStorage.ClientAnimations.Praying:Destroy()
end

local Animations = game.ReplicatedStorage.ClientAnimations

local LeanAnimation = Instance.new("Animation", Animations)
LeanAnimation.Name = "Lean"
LeanAnimation.AnimationId = "rbxassetid://3152375249"

local LayAnimation = Instance.new("Animation", Animations)
LayAnimation.Name = "Lay"
LayAnimation.AnimationId = "rbxassetid://3152378852"

local Dance1Animation = Instance.new("Animation", Animations)
Dance1Animation.Name = "Dance1"
Dance1Animation.AnimationId = "rbxassetid://3189773368"

local Dance2Animation = Instance.new("Animation", Animations)
Dance2Animation.Name = "Dance2"
Dance2Animation.AnimationId = "rbxassetid://3189776546"

local GreetAnimation = Instance.new("Animation", Animations)
GreetAnimation.Name = "Greet"
GreetAnimation.AnimationId = "rbxassetid://3189777795"

local ChestPumpAnimation = Instance.new("Animation", Animations)
ChestPumpAnimation.Name = "Chest Pump"
ChestPumpAnimation.AnimationId = "rbxassetid://3189779152"

local PrayingAnimation = Instance.new("Animation", Animations)
PrayingAnimation.Name = "Praying"
PrayingAnimation.AnimationId = "rbxassetid://3487719500"

function AnimationPack(Character)
    Character:WaitForChild'Humanoid'
    repeat
        wait()
    until game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack")

    local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
    local ScrollingFrame = AnimationPack.ScrollingFrame
    local CloseButton = AnimationPack.CloseButton

    local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

    local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

    local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

    local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

    local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

    local ChestPump = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ChestPumpAnimation)

    local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

    AnimationPack.Visible = true

    AnimationPack.ScrollingFrame.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lean" then
                v.Name = "LeanButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lay" then
                v.Name = "LayButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance1" then
                v.Name = "Dance1Button"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance2" then
                v.Name = "Dance2Button"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Greet" then
                v.Name = "GreetButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Chest Pump" then
                v.Name = "ChestPumpButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Praying" then
                v.Name = "PrayingButton"
            end
        end
    end

    function Stop()
        Lean:Stop()
        Lay:Stop()
        Dance1:Stop()
        Dance2:Stop()
        Greet:Stop()
        ChestPump:Stop()
        Praying:Stop()
    end

    local LeanTextButton = ScrollingFrame.LeanButton
    local LayTextButton = ScrollingFrame.LayButton
    local Dance1TextButton = ScrollingFrame.Dance1Button
    local Dance2TextButton = ScrollingFrame.Dance2Button
    local GreetTextButton = ScrollingFrame.GreetButton
    local ChestPumpTextButton = ScrollingFrame.ChestPumpButton
    local PrayingTextButton = ScrollingFrame.PrayingButton

    AnimationPack.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == false then
            ScrollingFrame.Visible = true
            CloseButton.Visible = true
        end
    end)
    CloseButton.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == true then
            ScrollingFrame.Visible = false
            CloseButton.Visible = false
        end
    end)
    LeanTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lean:Play()
    end)
    LayTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lay:Play()
    end)
    Dance1TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance1:Play()
    end)
    Dance2TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance2:Play()
    end)
    GreetTextButton.MouseButton1Click:Connect(function()
        Stop()
        Greet:Play()
    end)
    ChestPumpTextButton.MouseButton1Click:Connect(function()
        Stop()
        ChestPump:Play()
    end)
    PrayingTextButton.MouseButton1Click:Connect(function()
        Stop()
        Praying:Play()
    end)

    game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
        Stop()
    end)

    game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
        Stop()
    end)
end
AnimationPack(game.Players.LocalPlayer.Character)
game.Players.LocalPlayer.CharacterAdded:Connect(AnimationPack)
   end,
})

local Button = Tab:CreateButton({
   Name = "Anti-Bag",
   Callback = function()
   if game.PlaceId == 2788229376 then
    local LP = game.Players.LocalPlayer;
    for i,v in ipairs(LP.Character:GetDescendants()) do
        if v.Name == "Christmas_Sock" then v:Destroy()
        end;
    end;
    LP.Character.ChildAdded:Connect(function()
        wait(0.5)
        for i,v in ipairs(LP.Character:GetDescendants()) do
            if v.Name == "Christmas_Sock" then v:Destroy()
            end;
        end;
    end);
end
   end,
})

local Button = Tab:CreateButton({
   Name = "Chat-Logs",
   Callback = function()
   local ChatLogs = true

if game.PlaceId == 2788229376 then
    if ChatLogs == true then
        game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
        game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
    end

    if ChatLogs == false then
        game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 0, 0)
        game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
    end
end
   end,
})

local Button = Tab:CreateButton({
   Name = "Infinite Stamina",
   Callback = function()
   local LP = game.Players.LocalPlayer

function InfStamina(Character)
    Character:WaitForChild'BodyEffects'
    game:GetService('RunService').Stepped:Connect(function()
        pcall(function()
            LP.Character.BodyEffects.Movement:ClearAllChildren()
            LP.Character.BodyEffects.Reload.Value = false
            LP.Character.BodyEffects.Defense.Value = 9e9
        end)
    end)
end
InfStamina(game.Players.LocalPlayer.Character)
game.Players.LocalPlayer.CharacterAdded:Connect(InfStamina)
   end,
})

local Button = Tab:CreateButton({
   Name = "Speed Glitch",
   Callback = function()
   if game.PlaceId == 2788229376 then
    setfpscap(360)

    local Notification = true
    local AutoMacro = true
    local Macro = true
    local AutoMacroKey = Enum.KeyCode.Z
    local MacroKey = Enum.KeyCode.X

    if AutoMacro == true then
        game:GetService("UserInputService").InputBegan:Connect(function(input,chatting)
            if input.UserInputType == Enum.UserInputType.Keyboard then
                if chatting then IsChatting = true else IsChatting = false end
                if input.KeyCode == AutoMacroKey then
                    if IsChatting ~= false then return end
                    if not AutoMacroToggle then
                        if Notification == true then
                            game.StarterGui:SetCore("SendNotification", {
                                Title = "AutoMacro";
                                Text = "AutoMacro: On";
                                Duration = 3;
                            })
                        end
                        AutoMacroToggle = true
                        Instance.new("Animation", game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations")).Name = 'Greet'
                        game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet").AnimationId = 'rbxassetid://3189777795'
                        local Greet = game.ReplicatedStorage.ClientAnimations.Greet
                        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
                        local Animation = Humanoid:LoadAnimation(Greet)
                        Animation:Play()
                        wait(1.6)
                        for i, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                            if v:IsA("Tool") and v.Name ~= "Combat" or v.Name ~= "[Boombox]" then
                                game:GetService("Players").LocalPlayer.Character:findFirstChildOfClass'Humanoid':EquipTool(v)
                            end
                        end
                        wait()
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "S", false, game)
                        spawn(function()
                            while AutoMacroToggle == true do wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0)
                            end
                        end)
                        Animation:Stop()
                        Macro =
                            game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid'.Running:Connect(function()
                                Animation:Stop()
                            end)
                    else
                        if Notification == true then
                            game.StarterGui:SetCore("SendNotification", {
                                Title = "AutoMacro";
                                Text = "AutoMacro: Off";
                                Duration = 3;
                            })
                        end
                        AutoMacroToggle = false
                        local Greet = game.ReplicatedStorage.ClientAnimations.Greet
                        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
                        local Animation = Humanoid:LoadAnimation(Greet)
                        Animation:Stop()
                        game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet"):Remove()
                        Macro:Disconnect()
                    end
                end
            end
        end)
    end

    if Macro == true then
        game:GetService("UserInputService").InputBegan:Connect(function(input,chatting)
            if input.UserInputType == Enum.UserInputType.Keyboard then
                if chatting then IsChatting = true else IsChatting = false end
                if input.KeyCode == MacroKey then
                    if IsChatting ~= false then return end
                    if not MacroToggle then
                        if Notification == true then
                            game.StarterGui:SetCore("SendNotification", {
                                Title = "Macro";
                                Text = "Macro: On";
                                Duration = 3;
                            })
                        end
                        MacroToggle = true
                        spawn(function()
                            while MacroToggle == true do wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0)
                            end
                        end)
                    else
                        if Notification == true then
                            game.StarterGui:SetCore("SendNotification", {
                                Title = "Macro";
                                Text = "Macro: Off";
                                Duration = 3;
                            })
                            MacroToggle = false
                        end
                    end
                end
            end
        end)
    end
end
   end,
})

local Button = Tab:CreateButton({
   Name = "No Jump Cooldowm",
   Callback = function()
   if game.PlaceId == 2788229376 then
    local gmt = getrawmetatable(game)
    setreadonly(gmt, false)
    local old = gmt.__newindex

    gmt.__newindex = newcclosure(function(t,i,v)
        if i == "JumpPower" then
            return old(t,i,50)
        end
        return old(t,i,v)
    end)
end
   end,
})

local Tab = Window:CreateTab("Teleports", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Teleport to the Bank",
   Callback = function()
   local teleportPosition = Vector3.new(-374.35, 22.16, -338.99)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

if character and character:FindFirstChild("HumanoidRootPart") then
    character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
end
   end,
})

local Button = Tab:CreateButton({
   Name = "Teleport to the Club",
   Callback = function()
   local teleportPosition = Vector3.new(-264.72, 0.94, -421.26)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

if character and character:FindFirstChild("HumanoidRootPart") then
    character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
end
   end,
})

local Tab = Window:CreateTab("Cash", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Cash Drops",
   Callback = function()
   local function sendNotification(content)
    Rayfield:Notify({
        Title = "Dropped Cash Found!",
        Content = content,
        Duration = 6.5,
        Image = 4483362458,
    })
end

local function findDroppedCash()
    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Part") and obj:FindFirstChild("BillboardGui") then
            local pos = obj.Position
            local cashMessage = string.format("Cash at X: %.2f | Y: %.2f | Z: %.2f", pos.X, pos.Y, pos.Z)
            sendNotification(cashMessage)
            wait(3) -- Prevent spam
        end
    end
end

while wait(5) do
    findDroppedCash()
end
   end,
})

local Tab = Window:CreateTab("Cash Chekcer", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Cash Checker",
   Callback = function()
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
   end,
})
