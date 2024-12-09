--[[

        Capy Executor
        By ChatGPT
        Version 2.0.0

]]

-- Instances

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Upper = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local MinimizeButton = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local LineNumbers = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Down = Instance.new("Frame")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local CopyButton = Instance.new("TextButton")
local MinimizedFrame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Xám tối
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 600, 0, 350)
MainFrame.Active = true
MainFrame.Visible = true
MainFrame.ClipsDescendants = true

-- Upper Bar
Upper.Name = "Upper"
Upper.Parent = MainFrame
Upper.BackgroundColor3 = Color3.fromRGB(55, 55, 55)  -- Xám đậm hơn
Upper.BorderSizePixel = 0
Upper.Size = UDim2.new(1, 0, 0, 25)

TitleLabel.Parent = Upper
TitleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TitleLabel.BorderSizePixel = 0
TitleLabel.Size = UDim2.new(0, 100, 0, 25)
TitleLabel.Font = Enum.Font.SourceSans
TitleLabel.Text = "Capy"
TitleLabel.TextColor3 = Color3.fromRGB(230, 230, 230) -- Chữ màu trắng xám
TitleLabel.TextSize = 18
TitleLabel.TextWrapped = false
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

MinimizeButton.Parent = Upper
MinimizeButton.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(0.95, -20, 0, 0)
MinimizeButton.Size = UDim2.new(0, 20, 0, 25)
MinimizeButton.Font = Enum.Font.SourceSans
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.new(1, 1, 1)
MinimizeButton.TextSize = 18

-- Scrolling Frame
ScrollingFrame.Parent = MainFrame
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.083, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 0.7, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 8
ScrollingFrame.ScrollingEnabled = true

LineNumbers.Name = "LineNumbers"
LineNumbers.Parent = ScrollingFrame
LineNumbers.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
LineNumbers.BorderSizePixel = 0
LineNumbers.Size = UDim2.new(0, 30, 1, 0)
LineNumbers.Font = Enum.Font.SourceSans
LineNumbers.Text = "1"
LineNumbers.TextColor3 = Color3.fromRGB(200, 200, 200)
LineNumbers.TextSize = 14
LineNumbers.TextXAlignment = Enum.TextXAlignment.Right
LineNumbers.TextYAlignment = Enum.TextYAlignment.Top

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 35, 0, 0)
TextBox.Size = UDim2.new(1, -35, 1, 0)
TextBox.Font = Enum.Font.Code
TextBox.Text = "-- print(\"hello world\")"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14
TextBox.ClearTextOnFocus = false
TextBox.MultiLine = true
TextBox.TextWrapped = false -- Cho phép kéo ngang
TextBox.TextXAlignment = Enum.TextXAlignment.Left  -- Căn trái
TextBox.TextYAlignment = Enum.TextYAlignment.Top   -- Căn trên

-- Down Bar
Down.Name = "Down"
Down.Parent = MainFrame
Down.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Down.Position = UDim2.new(0, 0, 0.8, 0)
Down.Size = UDim2.new(1, 0, 0.2, 0)

-- Reposition Execute, Clear, and Copy buttons closer
ExecuteButton.Parent = Down
ExecuteButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
ExecuteButton.Size = UDim2.new(0, 85, 0, 30)
ExecuteButton.Position = UDim2.new(0.05, 0, 0.5, -15)
ExecuteButton.Font = Enum.Font.SourceSans
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.TextSize = 14

ClearButton.Parent = Down
ClearButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
ClearButton.Size = UDim2.new(0, 85, 0, 30)
ClearButton.Position = UDim2.new(0.20, 0, 0.5, -15)
ClearButton.Font = Enum.Font.SourceSans
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextSize = 14

CopyButton.Parent = Down
CopyButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
CopyButton.Size = UDim2.new(0, 85, 0, 30)
CopyButton.Position = UDim2.new(0.35, 0, 0.5, -15)
CopyButton.Font = Enum.Font.SourceSans
CopyButton.Text = "Copy"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 14

-- Minimized Frame
MinimizedFrame.Name = "MinimizedFrame"
MinimizedFrame.Parent = ScreenGui
MinimizedFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MinimizedFrame.BorderSizePixel = 0
MinimizedFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
MinimizedFrame.Size = UDim2.new(0, 60, 0, 60)
MinimizedFrame.Visible = false
MinimizedFrame.Active = true

ImageButton.Parent = MinimizedFrame
ImageButton.BackgroundTransparency = 1
ImageButton.Size = UDim2.new(1, 0, 1, 0)
ImageButton.Image = "rbxassetid://12345678" -- Thay bằng ID ảnh Roblox

-- Functions
local function updateLineNumbers()
    local lines = string.split(TextBox.Text, "\n")
    LineNumbers.Text = ""
    for i = 1, #lines do
        LineNumbers.Text = LineNumbers.Text .. tostring(i) .. "\n"
    end
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #lines * 20)
end

TextBox:GetPropertyChangedSignal("Text"):Connect(updateLineNumbers)

MinimizeButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    MinimizedFrame.Visible = true
end)

ImageButton.MouseButton1Click:Connect(function()
    MinimizedFrame.Visible = false
    MainFrame.Visible = true
end)

-- Drag Functions
local function enableDrag(frame)
    local dragToggle, dragStart, dragPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragToggle = true
            dragStart = input.Position
            dragPos = frame.Position
        end
    end)

    frame.InputChanged:Connect(function(input)
        if dragToggle and input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(dragPos.X.Scale, dragPos.X.Offset + delta.X, dragPos.Y.Scale, dragPos.Y.Offset + delta.Y)
        end
    end)

    frame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragToggle = false
        end
    end)
end

enableDrag(MainFrame)
enableDrag(MinimizedFrame)

ExecuteButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(TextBox.Text)()
    end)
    if not success then
        print("Error executing script: " .. err)
    end
end)

ClearButton.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

CopyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(TextBox.Text)
    else
        print("Clipboard not supported.")
    end
end)
