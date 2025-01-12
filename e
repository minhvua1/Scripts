-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Up = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Close = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local New = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local Down = Instance.new("Frame")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local ExecuteButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local Clear = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local Source = Instance.new("TextBox")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local CopyButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local PasteButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local Capy = Instance.new("Frame")
local ConsoleButton = Instance.new("TextButton")
local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
local CapyHub = Instance.new("TextButton")
local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
local InfiniteYeild = Instance.new("TextButton")
local UITextSizeConstraint_11 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
local Fly = Instance.new("TextButton")
local UITextSizeConstraint_12 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")
local DarkDexV4 = Instance.new("TextButton")
local UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_17 = Instance.new("UIAspectRatioConstraint")
local Toogle = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UITextSizeConstraint_14 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_18 = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.180171594, 0, 0.233064413, 0)
Main.Size = UDim2.new(0.639656842, 0, 0.637450218, 0)

Up.Name = "Up"
Up.Parent = Main
Up.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Up.BorderColor3 = Color3.fromRGB(0, 0, 0)
Up.BorderSizePixel = 0
Up.Size = UDim2.new(1, 0, 0.096874997, 0)

Name.Name = "Name"
Name.Parent = Up
Name.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Size = UDim2.new(0.13443698, 0, 1, 0)
Name.Font = Enum.Font.SourceSans
Name.Text = "Pro Executor"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 20.000
Name.TextWrapped = true

UIAspectRatioConstraint.Parent = Name
UIAspectRatioConstraint.AspectRatio = 2.910

UITextSizeConstraint.Parent = Name
UITextSizeConstraint.MaxTextSize = 20

UIAspectRatioConstraint_2.Parent = Up
UIAspectRatioConstraint_2.AspectRatio = 21.645

Close.Name = "Close"
Close.Parent = Up
Close.BackgroundColor3 = Color3.fromRGB(184, 184, 184)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.904619992, 0, 0.193548381, 0)
Close.Size = UDim2.new(0.0327868834, 0, 0.612903237, 0)
Close.Font = Enum.Font.SourceSans
Close.Text = "-"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 30.000
Close.TextWrapped = true

UITextSizeConstraint_2.Parent = Close
UITextSizeConstraint_2.MaxTextSize = 30

UIAspectRatioConstraint_3.Parent = Close
UIAspectRatioConstraint_3.AspectRatio = 1.158

New.Name = "New"
New.Parent = Up
New.BackgroundColor3 = Color3.fromRGB(184, 184, 184)
New.BorderColor3 = Color3.fromRGB(0, 0, 0)
New.BorderSizePixel = 0
New.Position = UDim2.new(0.952309966, 0, 0.193548381, 0)
New.Size = UDim2.new(0.0327868834, 0, 0.612903237, 0)
New.Font = Enum.Font.SourceSans
New.Text = "..."
New.TextColor3 = Color3.fromRGB(0, 0, 0)
New.TextScaled = true
New.TextSize = 30.000
New.TextWrapped = true
New.TextYAlignment = Enum.TextYAlignment.Bottom

UITextSizeConstraint_3.Parent = New
UITextSizeConstraint_3.MaxTextSize = 30

UIAspectRatioConstraint_4.Parent = New
UIAspectRatioConstraint_4.AspectRatio = 1.158

UIAspectRatioConstraint_5.Parent = Main
UIAspectRatioConstraint_5.AspectRatio = 2.097

Down.Name = "Down"
Down.Parent = Main
Down.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Down.BorderColor3 = Color3.fromRGB(0, 0, 0)
Down.BorderSizePixel = 0
Down.Position = UDim2.new(0, 0, 0.853124976, 0)
Down.Size = UDim2.new(1, 0, 0.146874994, 0)

UIAspectRatioConstraint_6.Parent = Down
UIAspectRatioConstraint_6.AspectRatio = 14.277

ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = Down
ExecuteButton.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
ExecuteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.BorderSizePixel = 0
ExecuteButton.Position = UDim2.new(0.0134128164, 0, 0.0851063803, 0)
ExecuteButton.Size = UDim2.new(0.169895679, 0, 0.829787254, 0)
ExecuteButton.Font = Enum.Font.SourceSans
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.TextScaled = true
ExecuteButton.TextSize = 30.000
ExecuteButton.TextWrapped = true

UICorner.Parent = ExecuteButton

UITextSizeConstraint_4.Parent = ExecuteButton
UITextSizeConstraint_4.MaxTextSize = 20

UIAspectRatioConstraint_7.Parent = ExecuteButton
UIAspectRatioConstraint_7.AspectRatio = 2.923

-- Hàm thực thi script
ExecuteButton.MouseButton1Click:Connect(function()
    local scriptToExecute = Source.Text
    if scriptToExecute ~= "" then
        local success, result = pcall(function()
            loadstring(scriptToExecute)()
        end)
        if not success then
            warn("Script execution failed: " .. result)
        end
    else
        warn("No script provided!")
    end
end)

Clear.Name = "Clear"
Clear.Parent = Down
Clear.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.199701935, 0, 0.0851063803, 0)
Clear.Size = UDim2.new(0.169895679, 0, 0.829787254, 0)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextScaled = true
Clear.TextSize = 30.000
Clear.TextWrapped = true

UICorner_2.Parent = Clear

UITextSizeConstraint_5.Parent = Clear
UITextSizeConstraint_5.MaxTextSize = 20

UIAspectRatioConstraint_8.Parent = Clear
UIAspectRatioConstraint_8.AspectRatio = 2.923

Clear.MouseButton1Click:Connect(function()
    Source.Text = ""
end)

Source.Name = "Source"
Source.Parent = Down
Source.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Source.BorderColor3 = Color3.fromRGB(0, 0, 0)
Source.BorderSizePixel = 0
Source.Position = UDim2.new(0.0163933523, 0, -4.92068148, 0)
Source.Size = UDim2.new(0.819497049, 0, 4.75046873, 0)
Source.Font = Enum.Font.SourceSans
Source.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Source.PlaceholderText = "Code Here"
Source.Text = ""
Source.TextColor3 = Color3.fromRGB(0, 0, 0)
Source.TextScaled = false
Source.TextSize = 20.000
Source.TextWrapped = false
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

UIAspectRatioConstraint_9.Parent = Source
UIAspectRatioConstraint_9.AspectRatio = 2.404

UITextSizeConstraint_6.Parent = Source
UITextSizeConstraint_6.MaxTextSize = 10

CopyButton.Name = "CopyButton"
CopyButton.Parent = Down
CopyButton.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderSizePixel = 0
CopyButton.Position = UDim2.new(0.387481362, 0, 0.0851063803, 0)
CopyButton.Size = UDim2.new(0.169895679, 0, 0.829787254, 0)
CopyButton.Font = Enum.Font.SourceSans
CopyButton.Text = "Copy"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextScaled = true
CopyButton.TextSize = 30.000
CopyButton.TextWrapped = true

UICorner_3.Parent = CopyButton

UITextSizeConstraint_7.Parent = CopyButton
UITextSizeConstraint_7.MaxTextSize = 20

UIAspectRatioConstraint_10.Parent = CopyButton
UIAspectRatioConstraint_10.AspectRatio = 2.923

-- Hàm copy text
CopyButton.MouseButton1Click:Connect(function()
    setclipboard(Source.Text)
end)


PasteButton.Name = "PasteButton"
PasteButton.Parent = Down
PasteButton.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
PasteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PasteButton.BorderSizePixel = 0
PasteButton.Position = UDim2.new(0.573770463, 0, 0.0851063803, 0)
PasteButton.Size = UDim2.new(0.169895679, 0, 0.829787254, 0)
PasteButton.Font = Enum.Font.SourceSans
PasteButton.Text = "Paste"
PasteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PasteButton.TextScaled = true
PasteButton.TextSize = 30.000
PasteButton.TextWrapped = true

UICorner_4.Parent = PasteButton

UITextSizeConstraint_8.Parent = PasteButton
UITextSizeConstraint_8.MaxTextSize = 20

UIAspectRatioConstraint_11.Parent = PasteButton
UIAspectRatioConstraint_11.AspectRatio = 2.923

PasteButton.MouseButton1Click:Connect(function()
    Source.Text = getclipboard()
end)

Capy.Name = "Capy"
Capy.Parent = Main
Capy.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Capy.BorderColor3 = Color3.fromRGB(0, 0, 0)
Capy.BorderSizePixel = 0
Capy.Position = UDim2.new(1.01192248, 0, 0, 0)
Capy.Size = UDim2.new(0.149031296, 0, 1, 0)
Capy.Visible = false

ConsoleButton.Name = "ConsoleButton"
ConsoleButton.Parent = Capy
ConsoleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
ConsoleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleButton.BorderSizePixel = 0
ConsoleButton.Position = UDim2.new(0.100000001, 0, 0.0187500007, 0)
ConsoleButton.Size = UDim2.new(0.800000012, 0, 0.109375, 0)
ConsoleButton.Font = Enum.Font.SourceSans
ConsoleButton.Text = "Console"
ConsoleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleButton.TextScaled = true
ConsoleButton.TextSize = 14.000
ConsoleButton.TextWrapped = true

UITextSizeConstraint_9.Parent = ConsoleButton
UITextSizeConstraint_9.MaxTextSize = 14

UIAspectRatioConstraint_12.Parent = ConsoleButton
UIAspectRatioConstraint_12.AspectRatio = 2.286

CapyHub.Name = "Capy Hub"
CapyHub.Parent = Capy
CapyHub.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
CapyHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
CapyHub.BorderSizePixel = 0
CapyHub.Position = UDim2.new(0.100000001, 0, 0.178124994, 0)
CapyHub.Size = UDim2.new(0.800000012, 0, 0.109375, 0)
CapyHub.Font = Enum.Font.SourceSans
CapyHub.Text = "Capy Hub"
CapyHub.TextColor3 = Color3.fromRGB(255, 255, 255)
CapyHub.TextScaled = true
CapyHub.TextSize = 14.000
CapyHub.TextWrapped = true

UITextSizeConstraint_10.Parent = CapyHub
UITextSizeConstraint_10.MaxTextSize = 14

UIAspectRatioConstraint_13.Parent = CapyHub
UIAspectRatioConstraint_13.AspectRatio = 2.286

InfiniteYeild.Name = "Infinite Yeild"
InfiniteYeild.Parent = Capy
InfiniteYeild.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
InfiniteYeild.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfiniteYeild.BorderSizePixel = 0
InfiniteYeild.Position = UDim2.new(0.100000001, 0, 0.340624988, 0)
InfiniteYeild.Size = UDim2.new(0.800000012, 0, 0.109375, 0)
InfiniteYeild.Font = Enum.Font.SourceSans
InfiniteYeild.Text = "Infinite Yeild"
InfiniteYeild.TextColor3 = Color3.fromRGB(255, 255, 255)
InfiniteYeild.TextScaled = true
InfiniteYeild.TextSize = 14.000
InfiniteYeild.TextWrapped = true

UITextSizeConstraint_11.Parent = InfiniteYeild
UITextSizeConstraint_11.MaxTextSize = 14

UIAspectRatioConstraint_14.Parent = InfiniteYeild
UIAspectRatioConstraint_14.AspectRatio = 2.286

Fly.Name = "Fly"
Fly.Parent = Capy
Fly.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Fly.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.100000001, 0, 0.5, 0)
Fly.Size = UDim2.new(0.800000012, 0, 0.109375, 0)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true

UITextSizeConstraint_12.Parent = Fly
UITextSizeConstraint_12.MaxTextSize = 14

UIAspectRatioConstraint_15.Parent = Fly
UIAspectRatioConstraint_15.AspectRatio = 2.286

DarkDexV4.Name = "Dark Dex V4"
DarkDexV4.Parent = Capy
DarkDexV4.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
DarkDexV4.BorderColor3 = Color3.fromRGB(0, 0, 0)
DarkDexV4.BorderSizePixel = 0
DarkDexV4.Position = UDim2.new(0.100000001, 0, 0.665624976, 0)
DarkDexV4.Size = UDim2.new(0.800000012, 0, 0.109375, 0)
DarkDexV4.Font = Enum.Font.SourceSans
DarkDexV4.Text = "Dark Dex V4"
DarkDexV4.TextColor3 = Color3.fromRGB(255, 255, 255)
DarkDexV4.TextScaled = true
DarkDexV4.TextSize = 14.000
DarkDexV4.TextWrapped = true

UITextSizeConstraint_13.Parent = DarkDexV4
UITextSizeConstraint_13.MaxTextSize = 14

UIAspectRatioConstraint_16.Parent = DarkDexV4
UIAspectRatioConstraint_16.AspectRatio = 2.286

UIAspectRatioConstraint_17.Parent = Capy
UIAspectRatioConstraint_17.AspectRatio = 0.312

Toogle.Name = "Toogle"
Toogle.Parent = ScreenGui
Toogle.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
Toogle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toogle.BorderSizePixel = 0
Toogle.Position = UDim2.new(0.0243088659, 0, 0.28369385, 0)
Toogle.Size = UDim2.new(0.0495710187, 0, 0.08652246, 0)
Toogle.Font = Enum.Font.SourceSans
Toogle.Text = "Toogle"
Toogle.TextColor3 = Color3.fromRGB(12, 255, 101)
Toogle.TextScaled = true
Toogle.TextSize = 14.000
Toogle.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = Toogle

UITextSizeConstraint_14.Parent = Toogle
UITextSizeConstraint_14.MaxTextSize = 14

UIAspectRatioConstraint_18.Parent = Toogle

-- Scripts:

local function GAHAOAV_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	local player = game.Players.LocalPlayer
	
	script.Parent.MouseButton1Click:Connect(function()
		player.PlayerGui.ScreenGui.Main.Visible = false
	end)
end
coroutine.wrap(GAHAOAV_fake_script)()
local function LQZGS_fake_script() -- New.LocalScript 
	local script = Instance.new('LocalScript', New)

	local player = game.Players.LocalPlayer
	
	script.Parent.MouseButton1Click:Connect(function()
		-- Tìm ScreenGui
		local screenGui = player:WaitForChild("PlayerGui"):FindFirstChild("ScreenGui")
		if screenGui then
			-- Tìm Main (Frame)
			local main = screenGui:FindFirstChild("Main")
			if main then
				-- Tìm Capy (phần tử con trong Main)
				local capy = main:FindFirstChild("Capy")
				if capy then
					capy.Visible = not capy.Visible -- Đảo trạng thái Visible
				else
					warn("Capy not found in Main")
				end
			else
				warn("Main not found in ScreenGui")
			end
		else
			warn("ScreenGui not found in PlayerGui")
		end
	end)
	
end
coroutine.wrap(LQZGS_fake_script)()
local function ZHVADBM_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	script.Parent.Active = true
	script.Parent.Draggable= true
end
coroutine.wrap(ZHVADBM_fake_script)()
local function WXCE_fake_script() -- Toogle.LocalScript 
	local script = Instance.new('LocalScript', Toogle)

	local player = game.Players.LocalPlayer
	
	script.Parent.MouseButton1Click:Connect(function()
		-- Tìm ScreenGui
		local screenGui = player:WaitForChild("PlayerGui"):FindFirstChild("ScreenGui")
		if screenGui then
			-- Tìm Main (Frame)
			local main = screenGui:FindFirstChild("Main")
			if main then
				main.Visible = not main.Visible -- Đảo trạng thái Visible
			else
				warn("Main not found in ScreenGui")
			end
		else
			warn("ScreenGui not found in PlayerGui")
		end
	end)
	
end
coroutine.wrap(WXCE_fake_script)()
local function XYPWPG_fake_script() -- Toogle.LocalScript 
	local script = Instance.new('LocalScript', Toogle)

	script.Parent.Active = true
	script.Parent.Draggable= true
end
coroutine.wrap(XYPWPG_fake_script)()
