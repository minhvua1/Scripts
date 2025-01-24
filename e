-- Synapse X Remake made by @chillz_azy (yt)

local synversion = "2.23.11"

-- this shit function makes my script fucked
--[[pcall(function()
    local HttpService = game:GetService("HttpService")
    local response = game:HttpGet("https://api.whatexploitsare.online/status")
    local data = HttpService:JSONDecode(response)

    for _, item in pairs(data) do
        if item.Synapse then
            synversion = item.Synapse.exploit_version
	end
    end
end)]]

-- Instances: 150 | Scripts: 8 | Modules: 4
local G2L = {};
G2L["16"] = Instance.new("Folder", G2L["a"]);
G2L["16"]["Name"] = [[Textboxes]];


				local newYOffset
				if lineNumber then
					newYOffset = (lineNumber - 10) * lineHeight
				else
					newYOffset = lineIndicatorFrame.Position.Y.Offset + 14
				end

				lineIndicatorFrame.Position = UDim2.new(0, 0, 0, newYOffset)
			end

			local function onMouseMove()
				if textBox:IsFocused() then
					UserInputService.InputBegan:Connect(function(input)
						if  input == Enum.UserInputType.MouseButton1 or input == Enum.UserInputType.Touch then
							local mouse = UserInputService:GetMouseLocation()
							local y = mouse.Y
							local lineHeight = lineIndicatorFrame.LineText.TextSize -- Adjust this value as per your line indicator's line height

							local lineNumber = math.floor(y / lineHeight) + 1
							moveLineIndicatorFrame(lineNumber)
						end
					end)
				end
			end

			UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					onMouseMove()
				end
			end)

			UserInputService.InputBegan:Connect(function(input)
            pcall(function() -- i hate the errors, so yes
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
					local mouse = UserInputService:GetMouseLocation()
					local y = mouse.Y
					pcall(function() lineHeight = lineIndicatorFrame:FindFirstChild("LineText").TextSize end)

					local lineNumber = math.floor(y / lineHeight) + 1
					moveLineIndicatorFrame(lineNumber)
				elseif input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Return and textBox:IsFocused() then
					moveLineIndicatorFrame(nil)
				end
            end)
            end)

			textBox.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					local lineNumber = textBox.CursorPosition.Y
					moveLineIndicatorFrame(lineNumber)
				end
			end)
		end)





		updateLineIndicator()


		TextBox.Changed:Connect(function(property)
			if property == "Text" then
				updateLineIndicator()
			end
		end)


		textBox:GetPropertyChangedSignal("Text"):Connect(function()
			NewTextbox.Frame.Size = UDim2.new(script.Parent.Size.X.Scale, script.Parent.Size.X.Offset, script.Parent.Parent.Size.Y.Scale, script.Parent.Parent.Size.Y.Offset + 150)
			NewTextbox.Frame.Highlighted.Size = UDim2.new(0, script.Parent.Parent.Size.X.Offset + 150,0, 13)
		end)














	end

	script.Parent.Tabs.AddScript.Button.MouseButton1Up:Connect(function()
		AddTab()
	end)
	AddTab()
end;
task.spawn(C_44);
-- StarterGui.SynapseX.Main.ButtonsHandler
local function C_49()
	local script = G2L["49"];
	local buttons = script.Parent
	local title = buttons.TitleSynapse
	local injected =  script.Parent.Parent.Injected.Value


	local function GetTextbox()
		for _,textbox in pairs(script.Parent.MainFunc.Textboxes:GetChildren()) do
			if textbox.Visible then
				return textbox
			end
		end
	end
	buttons.Clear.MouseButton1Up:Connect(function()
		for _, textbox in pairs(buttons.MainFunc.Textboxes:GetChildren()) do
			if textbox.Visible then
				textbox.Frame.Textbox.Text = ''
			end
		end
	end)
	buttons.Execute.MouseButton1Up:Connect(function()
		if not injected then
			title.Text = "Synapse X - "..synversion.." (not injected! press attach)"
		elseif injected == true then

			local textbox = GetTextbox()

			loadstring(textbox.Frame.Textbox.Text)()
		end
	end)
	buttons.Attach.MouseButton1Up:Connect(function()
		if not injected then
			title.Text = "Synapse X - "..synversion.." (checking...)"
			task.wait(0.8)
			title.Text = "Synapse X - "..synversion.." (injecting...)"
			task.wait(2.3)
			title.Text = "Synapse X - "..synversion.." (checking whitelist...)"
			task.wait(1.6)
			title.Text = "Synapse X - "..synversion.." (scanning...)"
			task.wait(1.3)
			title.Text = "Synapse X - "..synversion.." (ready!)"
			injected = true
			task.wait(1)
			title.Text = "Synapse X - "..synversion
		else
			title.Text = "Synapse X - "..synversion.." (already injected!)"
			task.wait(1)
			title.Text = "Synapse X - "..synversion
		end
	end)

	buttons.Options.MouseButton1Up:Connect(function()
		script.Parent.Parent.OptionMenu.Position = UDim2.new(0.367, -11,0.317, -6)
		script.Parent.Parent.OptionMenu.Visible = true
	end)

	buttons.OpenFile.MouseButton1Up:Connect(function()
		script.Parent.Parent.OpenScript.Visible = true
	end)
	buttons.SaveFile.MouseButton1Up:Connect(function()
		script.Parent.Parent.SaveScript.Visible = true
	end)
	buttons.Close.MouseButton1Up:Connect(function()
		script.Parent.Parent:Destroy()
	end)
	buttons.Maximize.MouseButton1Up:Connect(function()
		--idkkk
	end)
	buttons.Minimize.MouseButton1Up:Connect(function()
		buttons.Visible = false
		script.Parent.Parent.FloatingIcon.Visible = true
	end)

	script.Parent.Parent.FloatingIcon.MouseButton1Up:Connect(function()
		buttons.Visible = true
		script.Parent.Parent.FloatingIcon.Visible = false
	end)

	buttons.ScriptHub.MouseButton1Up:Connect(function()
		script.Parent.Parent.ScriptHubMenu.Visible = true
	end)
end;
task.spawn(C_49);
-- StarterGui.SynapseX.SaveScript.Handler
local function C_51()
	local script = G2L["51"];
	script.Parent.savescript.MouseButton1Up:Connect(function()
		local module = require(script.Parent.Parent.Module)
		module:AddScriptTabSave(script.Parent.scriptname.Text..".lua", module:GetActiveTextbox().Frame.Textbox.Text)
		script.Parent.Visible = false
		script.Parent.scriptname.Text = ''
		makefolder("SynapseSavedScripts")
		writefile("SynapseSavedScripts/"..script.Parent.scriptname.Text..".lua", module:GetActiveTextbox().Frame.Textbox.Text)
	end)

	script.Parent.Close.MouseButton1Up:Connect(function()
		script.Parent.Visible = false
		script.Parent.scriptname.Text = ''
	end)
end;
task.spawn(C_51);
-- StarterGui.SynapseX.ScriptHubMenu.ScriptHubHandler
local function C_71()
	local script = G2L["71"];
	local yes = script.Parent
	yes.Background.ScrollingFrame.Dex.MouseButton1Up:Connect(function()
		for i,v in pairs(script.Parent:GetChildren()) do
			if v.Name ~= script.Parent.Background.ScrollingFrame.Dex.Name and v:IsA("Frame") then
				pcall(function() v.Visible = false end)
			else
				pcall(function() v.Visible = true end)
			end
		end
		script.Parent.Description.Text = [[A version of the popular Dex explorer with
		patches specifically for Synapse X.]]
	end)

	yes.Background.ScrollingFrame.RemoteSpy.MouseButton1Up:Connect(function()
		for i,v in pairs(script.Parent:GetChildren()) do
			if v.Name ~= script.Parent.Background.ScrollingFrame.RemoteSpy.Name and v:IsA("Frame") then
				pcall(function() v.Visible = false end)
			else
				pcall(function() v.Visible = true end)
			end
		end
		script.Parent.Description.Text = [[Allows you to view RemoteEvents and
		RemoteFunctions calleld.]]
	end)

	yes.Background.ScrollingFrame.UnnamedESP.MouseButton1Up:Connect(function()
		for i,v in pairs(script.Parent:GetChildren()) do
			if v.Name ~= script.Parent.Background.ScrollingFrame.UnnamedESP.Name and v:IsA("Frame") then
				pcall(function() v.Visible = false end)
			else
				pcall(function() v.Visible = true end)
			end
		end
		script.Parent.Description.Text = [[ESP made by ic3w0lf using the Drawing API.]]
	end)

	yes.Background.ScrollingFrame.ScriptDumper.MouseButton1Up:Connect(function()
		for i,v in pairs(script.Parent:GetChildren()) do
			if v.Name ~= script.Parent.Background.ScrollingFrame.ScriptDumper.Name and v:IsA("Frame") then
				pcall(function() pcall(function() v.Visible = false end) end)
			else
				pcall(function() v.Visible = true end)
			end
		end
		script.Parent.Description.Text = [[Dumps all LocalScripts an ModuleScripts.]]
	end)

	yes.Execute.MouseButton1Up:Connect(function()
		for i,v in pairs(yes:GetChildren()) do
			if v.Visible then
				if v.Name == "Dex" then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
			elseif v.Name == "RemoteSpy" then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
			elseif v.Name == "UnnamedESP" then
				pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
			elseif v.Name == "ScriptDumper" then
				saveinstance()
			end
			end
		end
	end)

	yes.Close.MouseButton1Up:Connect(function()
		script.Parent.Visible = false
	end)

	yes.Minimize.MouseButton1Up:Connect(function()
		script.Parent.Visible = false
	end)
end;
task.spawn(C_71);
-- StarterGui.SynapseX.OptionMenu.Optionhandler
local function C_83()
	local script = G2L["83"];
	local stuff  =script.Parent

	stuff.Buttons.Discord.MouseButton1Up:Connect(function()
		setclipboard("XYFXYNmG4D")
	end)
	stuff.Buttons.Rejoin.MouseButton1Up:Connect(function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
	end)

	stuff.Close.MouseButton1Up:Connect(function()
		script.Parent.Visible = false
	end)



	-- Toggles
	stuff.ToggleAutoExec.MouseButton1Up:Connect(function()
		if stuff.ToggleAutoExec.Text == '' then
			stuff.ToggleAutoExec.BackgroundColor3 = Color3.fromRGB(112,112,112)
			stuff.ToggleAutoExec.Text = 'x'



		else
			stuff.ToggleAutoExec.BackgroundColor3 = Color3.fromRGB(166,166,166)
			stuff.ToggleAutoExec.Text = ''



		end
	end)

	stuff.ToggleFPSUnlocker.MouseButton1Up:Connect(function()
		if stuff.ToggleFPSUnlocker.Text == '' then
			stuff.ToggleFPSUnlocker.BackgroundColor3 = Color3.fromRGB(112,112,112)
			stuff.ToggleFPSUnlocker.Text = 'x'

			setfpscap(math.huge)

		else
			stuff.ToggleFPSUnlocker.BackgroundColor3 = Color3.fromRGB(166,166,166)
			stuff.ToggleFPSUnlocker.Text = ''

			setfpscap(60)

		end
	end)

	stuff.ToggleInternalUI.MouseButton1Up:Connect(function()
		if stuff.ToggleInternalUI.Text == '' then
			stuff.ToggleInternalUI.BackgroundColor3 = Color3.fromRGB(112,112,112)
			stuff.ToggleInternalUI.Text = 'x'

			-- idk

		else
			stuff.ToggleInternalUI.BackgroundColor3 = Color3.fromRGB(166,166,166)
			stuff.ToggleInternalUI.Text = ''

			-- idk

		end
	end)

	stuff.ToggleTopMost.MouseButton1Up:Connect(function()
		if stuff.ToggleTopMost.Text == '' then
			stuff.ToggleTopMost.BackgroundColor3 = Color3.fromRGB(112,112,112)
			stuff.ToggleTopMost.Text = 'x'

			-- idk

		else
			stuff.ToggleTopMost.BackgroundColor3 = Color3.fromRGB(166,166,166)
			stuff.ToggleTopMost.Text = ''

			-- idk

		end
	end)
end;
task.spawn(C_83);
-- StarterGui.SynapseX.GetSavedScripts
local function C_84()

	local script = G2L["84"];
	local module = require(script.Parent.Module)
    
	for index, value in pairs(listfiles("SynapseSavedScripts")) do
    	print(value)
		if isfile(value) then
			task.wait(0.05)
            local editedString = string.gsub(value, [[SynapseSavedScripts\]], "")
			module:AddScriptTabSave(editedString, readfile(value))
		end
	end
end;
task.spawn(C_84);
-- StarterGui.SynapseX.OpenScript.Handler
local function C_92()
	local script = G2L["92"];
	script.Parent.savescript.MouseButton1Up:Connect(function()
		local module = require(script.Parent.Parent.Module)
		if isfile(script.Parent.scriptname.Text) then
			local a = script.Parent.scriptname.Text
			script.Parent.Visible = false
			script.Parent.scriptname.Text = ''
			module:AddTab(script.Parent.scriptname.Text, readfile(a))
		else
			script.Parent.Title.Text = "Synapse X - Open File (File not found!)"
			task.wait(1)
			script.Parent.Title.Text = "Synapse X - Open File"
		end
	end)

	script.Parent.Close.MouseButton1Up:Connect(function()
		script.Parent.Visible = false
		script.Parent.scriptname.Text = ''
	end)
end;
task.spawn(C_92);
-- StarterGui.SynapseX.SetDraggable
local function C_93()
	local script = G2L["93"];
	local yes =  script.Parent
	yes.Main.Draggable = true
	yes.OpenScript.Draggable = true
	yes.OptionMenu.Draggable = true
	yes.SaveScript.Draggable = true
	yes.ScriptHubMenu.Draggable = true
	yes.ScriptLog.Draggable = true
	yes.FloatingIcon.Draggable = true
	
	
	
	yes.Main.MainFunc.ScriptHub.ChildAdded:Connect(function(v)
		
		if v:IsA("TextButton") then
        		local color = v.BackgroundColor3
            	local bordercolor = v.BorderColor3
            	local bordersize = v.BorderSizePixel
            	v.MouseEnter:Connect(function()
               	 	v.BackgroundColor3 = Color3.fromRGB(0,47,80)
               	 	v.BorderColor3 = Color3.fromRGB(91,139,168)
               	 	v.BorderSizePixel = 1
            	end)
           		 v.MouseLeave:Connect(function()
               		 v.BackgroundColor3 = color
               	 	v.BorderColor3 = bordercolor
               	 	v.BorderSizePixel = bordersize
           		 end)
           	end
	
	end)
	
	yes.Main.MainFunc.ScriptHub.ChildAdded:Connect(function(v)
		if yes:IsA("TextButton") then
			v.ChildAdded:Connect(function(RClick)
			print(RClick.Name)
			local del = RCLick.Delete
				local color = del.BackgroundColor3
            	local bordercolor = del.BorderColor3
            	local bordersize = del.BorderSizePixel
            	del.MouseEnter:Connect(function()
               	 	del.BackgroundColor3 = Color3.fromRGB(0,47,80)
               	 	del.BorderColor3 = Color3.fromRGB(91,139,168)
               	 	del.BorderSizePixel = 1
            	end)
           		 del.MouseLeave:Connect(function()
               		 del.BackgroundColor3 = color
               	 	del.BorderColor3 = bordercolor
               	 	del.BorderSizePixel = bordersize
           		 end)
           		 
           		 
           		 local exec = RCLick.Execute
				local color = exec.BackgroundColor3
            	local bordercolor = exec.BorderColor3
            	local bordersize = exec.BorderSizePixel
            	exec.MouseEnter:Connect(function()
               	 	exec.BackgroundColor3 = Color3.fromRGB(0,47,80)
               	 	exec.BorderColor3 = Color3.fromRGB(91,139,168)
               	 	exec.BorderSizePixel = 1
            	end)
           		exec.MouseLeave:Connect(function()
               		 exec.BackgroundColor3 = color
               	 	exec.BorderColor3 = bordercolor
               	 	exec.BorderSizePixel = bordersize
           		 end)
           		 
           		 local load = RCLick.Load
				local color = load.BackgroundColor3
            	local bordercolor = load.BorderColor3
            	local bordersize =load.BorderSizePixel
            	load.MouseEnter:Connect(function()
               	 	load.BackgroundColor3 = Color3.fromRGB(0,47,80)
               	 	load.BorderColor3 = Color3.fromRGB(91,139,168)
               	 	load.BorderSizePixel = 1
            	end)
           		load.MouseLeave:Connect(function()
               		load.BackgroundColor3 = color
               	 	load.BorderColor3 = bordercolor
               	 	load.BorderSizePixel = bordersize
           		 end)
		end)

		end
	end)
	
	
	
	task.spawn(function()
		
		for i,v in pairs(yes.Main.MainFunc.ScriptHub:GetChildren()) do
        	if v:IsA("TextButton") then
        		local color = v.BackgroundColor3
            	local bordercolor = v.BorderColor3
            	local bordersize = v.BorderSizePixel
            	v.MouseEnter:Connect(function()
               	 	v.BackgroundColor3 = Color3.fromRGB(0,47,80)
               	 	v.BorderColor3 = Color3.fromRGB(91,139,168)
               	 	v.BorderSizePixel = 1
            	end)
           		 v.MouseLeave:Connect(function()
               		 v.BackgroundColor3 = color
               	 	v.BorderColor3 = bordercolor
               	 	v.BorderSizePixel = bordersize
           		 end)
           	end
        end
	
	end)
   for i,v in pairs(G2L["1"]:GetDescendants()) do
        if (v:IsA("TextButton") and v.Parent.Parent.Name ~= "Tabs" and v.Parent.Name ~= "Tabs") or (v:IsA("ImageButton")) then
            task.spawn(function()
            	local color = v.BackgroundColor3
            	local bordercolor = v.BorderColor3
            	local bordersize = v.BorderSizePixel
            	v.BackgroundTransparency = 0
            	v.MouseEnter:Connect(function()
               	 	v.BackgroundColor3 = Color3.fromRGB(0,47,80)
               	 	v.BorderColor3 = Color3.fromRGB(91,139,168)
               	 	v.BorderSizePixel = 1
            	end)
           		 v.MouseLeave:Connect(function()
               		 v.BackgroundColor3 = color
               	 	v.BorderColor3 = bordercolor
               	 	v.BorderSizePixel = bordersize
           		 end)
            end)
        end
   end
   
end;
task.spawn(C_93);

return G2L["1"], require;
