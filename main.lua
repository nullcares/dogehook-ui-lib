-- nulare#4408
-- kinda messy but its my first attempt

local ts = game:GetService('TweenService')
local sg = game:GetService('StarterGui')
local uis = game:GetService('UserInputService')

local function count_children(parent, classname)
	local i = 0
	for _, v in pairs(parent:GetChildren()) do
		if v.ClassName == classname then
			i = i + 1 -- WHY WONT SYNAPSE SUPPORT += GET OUT OF YOUR FUCKING ROCK!!!!!!!!!!!!!!!!!!!!!!!!!!!
		end
	end
	return i
end

local function switch_tabs(page, children)
	for _, v in pairs(page:GetChildren()) do
		if v:IsA('Frame') then
			v.Parent = nil
		end
	end

	for _, v in pairs(children) do
		v.Parent = page
	end
end

local function tween_frame(frame, pos)
	ts:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {Position = pos}):Play()
end

local Window = {}

function Window:CreateWindow(props)
	local toggled = true
	local gui_positions = {
		[true] = UDim2.new(0.326, 0,0.294, 0);
		[false] = UDim2.new(0.326, 0,-1, 0);
	}
	local toggle_positions = {
		[false] = UDim2.new(0.488349825, 0, 0.0407975465, 0);
		[true] = UDim2.new(0.488349825, 0, -0.1, 0);
	}
	
	local title = props['Name'] or '[ dogehook gui ]'
	--local bind = props['KeyBind'] or Enum.KeyCode.LeftControl

	local DH_GUI = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Navigation = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local ImageButton = Instance.new("ImageButton")
	local Tabs = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Page = Instance.new("ScrollingFrame")
	local UIListLayout_2 = Instance.new("UIListLayout")

	--Properties:

	DH_GUI.Name = "DH_GUI"
	DH_GUI.Parent = game:GetService('CoreGui')
	DH_GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	DH_GUI.ResetOnSpawn = false
	
	local GUI_TOGGLE = Instance.new("TextButton")

	GUI_TOGGLE.Name = "GUI_TOGGLE"
	GUI_TOGGLE.Parent = DH_GUI
	GUI_TOGGLE.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
	GUI_TOGGLE.Position = toggle_positions[toggled]
	GUI_TOGGLE.Size = UDim2.new(0.0219503623, 0, 0.0355615169, 0)
	GUI_TOGGLE.Font = Enum.Font.Code
	GUI_TOGGLE.Text = "DH"
	GUI_TOGGLE.TextColor3 = Color3.fromRGB(255, 255, 255)
	GUI_TOGGLE.TextScaled = true
	GUI_TOGGLE.TextSize = 14.000
	GUI_TOGGLE.TextWrapped = true
	
	pcall(function()
		syn.protect_gui(DH_GUI)
	end)

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = DH_GUI
	MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = gui_positions[toggled]
	MainFrame.Size = UDim2.new(0.347653151, 0, 0.411636829, 0)
	
	GUI_TOGGLE.MouseButton1Click:Connect(function()
		toggled = not toggled
		tween_frame(GUI_TOGGLE, toggle_positions[toggled])
		tween_frame(MainFrame, gui_positions[toggled])
	end)
	
	ImageButton.MouseButton1Click:Connect(function()
		toggled = not toggled
		tween_frame(GUI_TOGGLE, toggle_positions[toggled])
		tween_frame(MainFrame, gui_positions[toggled])
	end)

	local UIStroke = Instance.new('UIStroke')
	UIStroke.Color = Color3.fromRGB(45, 45, 45)
	UIStroke.Parent = MainFrame

	Navigation.Name = "Navigation"
	Navigation.Parent = MainFrame
	Navigation.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
	Navigation.BorderSizePixel = 0
	Navigation.Size = UDim2.new(1, 0, 0.0125061814, 16)

	Title.Name = "Title"
	Title.Parent = Navigation
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.022883296, 0, 0.100000001, 0)
	Title.Size = UDim2.new(0.915331781, 0, 0.800000012, 0)
	Title.Font = Enum.Font.Code
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	ImageButton.Parent = Navigation
	ImageButton.Name = 'Toggle' -- whjoops forgot to name it Toggle
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1.000
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(0.95599997, 0, 0.100000001, 0)
	ImageButton.Size = UDim2.new(0, 15,0, 17)
	ImageButton.Image = "http://www.roblox.com/asset/?id=54479706"

	Tabs.Name = "Tabs"
	Tabs.Parent = MainFrame
	Tabs.Active = true
	Tabs.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Tabs.BackgroundTransparency = 0.800
	Tabs.Position = UDim2.new(0, 9, 0, 26)
	Tabs.Size = UDim2.new(0.958810091, 0, 0, 20)
	Tabs.CanvasSize = UDim2.new(0, 0, 0, 0)
	Tabs.ScrollBarThickness = 4

	UIListLayout.Parent = Tabs
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	Page.Name = "Page"
	Page.Parent = MainFrame
	Page.Active = true
	Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Page.BackgroundTransparency = 1.000
	Page.BorderSizePixel = 0
	Page.Position = UDim2.new(0.022883296, 0, 0.162580356, 0)
	Page.Size = UDim2.new(0.956521749, 0, 0.812901795, 0)
	Page.ScrollBarThickness = 5

	local UIStroke_1 = Instance.new('UIStroke')
	UIStroke.Color = Color3.fromRGB(29, 29, 29)
	UIStroke.Parent = Page

	UIListLayout_2.Parent = Page
	UIListLayout_2.Padding = UDim.new(0, 2)
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	MainFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = MainFrame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	MainFrame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	uis.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	local Window = {}

	function Window:Tab(title)
		local _1 = Instance.new("TextButton")

		_1.Name = tostring(count_children(Tabs, 'TextButton'))
		_1.Parent = Tabs
		_1.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
		_1.Position = UDim2.new(0, 0, -1.52587893e-06, 0)
		_1.Font = Enum.Font.Code
		_1.Text = title or 'Tab'
		_1.Size = UDim2.new(0, string.len(_1.Text)*12, 1, 0)
		_1.TextColor3 = Color3.fromRGB(255, 255, 255)
		_1.TextScaled = true
		_1.TextSize = 14.000
		_1.TextWrapped = true

		local children = {}

		_1.MouseButton1Click:Connect(function()
			switch_tabs(Page, children)
		end)

		local PageFactory = {}
		
		function PageFactory:Button(title,callback)
			local BUTTON = Instance.new('Frame')
			local Button = Instance.new('TextButton')
			
			BUTTON.Name = tostring(#children+1)
			BUTTON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BUTTON.BackgroundTransparency = 1.000
			BUTTON.Position = UDim2.new(0, 0, -1.17375301e-07, 0)
			BUTTON.Size = UDim2.new(1, 0, -0.0230769236, 44)

			Button.Name = "Button"
			Button.Parent = BUTTON
			Button.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
			Button.Position = UDim2.new(0.0250000004, 0, 0.100000001, 0)
			Button.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)
			Button.Font = Enum.Font.Code
			Button.Text = title or 'My button'
			Button.TextColor3 = Color3.fromRGB(255, 255, 255)
			Button.TextScaled = true
			Button.TextSize = 14.000
			Button.TextWrapped = true
			
			Button.MouseButton1Click:Connect(function()
				if callback ~= nil then
					callback()
				end
			end)

			table.insert(children, BUTTON)

			return BUTTON
		end

		function PageFactory:Toggle(title,status,callback)
			local active
			if status == nil then
				active = false
			else
				active = status
			end
			local images = {
				[true] = 'http://www.roblox.com/asset/?id=8589545938';
				[false] = '';
			}

			local TOGGLE = Instance.new('Frame')
			local Title_3 = Instance.new('TextLabel')
			local Tick = Instance.new('ImageButton')

			TOGGLE.Name = tostring(#children+1)
			TOGGLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TOGGLE.BackgroundTransparency = 1.000
			TOGGLE.Position = UDim2.new(0, 0, -1.17375301e-07, 0)
			TOGGLE.Size = UDim2.new(1, 0, -0.0230769236, 44)

			Title_3.Name = "Title"
			Title_3.Parent = TOGGLE
			Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_3.BackgroundTransparency = 1.000
			Title_3.Position = UDim2.new(0.0215311013, 0, 0.102605954, 0)
			Title_3.Size = UDim2.new(0.88516748, 0, 0.794788122, 0)
			Title_3.Font = Enum.Font.Code
			Title_3.Text = title or 'My toggle'
			Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_3.TextScaled = true
			Title_3.TextSize = 14.000
			Title_3.TextWrapped = true
			Title_3.TextXAlignment = Enum.TextXAlignment.Left

			Tick.Name = "Tick"
			Tick.Parent = TOGGLE
			Tick.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
			Tick.Position = UDim2.new(0.925837338, 0, 0.136807933, 0)
			Tick.Size = UDim2.new(0, 21, 0, 21)
			Tick.Image = images[active]
			Tick.ImageColor3 = Color3.fromRGB(0, 170, 255)

			Tick.MouseButton1Click:Connect(function()
				active = not active
				Tick.Image = images[active]
				if callback ~= nil then
					callback(active)
				end
			end)

			table.insert(children, TOGGLE)

			return TOGGLE
		end
		
		function PageFactory:Label(title,properties)
			local LABEL = Instance.new('Frame')
			local Title_6 = Instance.new('TextLabel')
			
			LABEL.Name = tostring(#children+1)
			LABEL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LABEL.BackgroundTransparency = 1.000
			LABEL.Position = UDim2.new(0, 0, -1.17375301e-07, 0)
			LABEL.Size = UDim2.new(1, 0, -0.0230769236, 44)

			Title_6.Name = "Title"
			Title_6.Parent = LABEL
			Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_6.BackgroundTransparency = 1.000
			Title_6.Position = UDim2.new(0.0191387553, 0, 0, 0)
			Title_6.Size = UDim2.new(0.95693779, 0, 1, 0)
			Title_6.Font = Enum.Font.Code
			Title_6.Text = title or 'Hello, world!'
			Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_6.TextScaled = true
			Title_6.TextSize = 14.000
			Title_6.TextWrapped = true
			
			if properties ~= nil then
				for i, v in pairs(properties) do
					pcall(function()
						Title_6[i] = v
					end)
				end
			end
			
			local Utility = {}
			
			function Utility:Update(properties)
				if properties ~= nil then
					for i, v in pairs(properties) do
						pcall(function()
							Title_6[i] = v
						end)
					end
				end
			end
			
			table.insert(children, LABEL)
			
			return Utility, LABEL
		end
		
		function PageFactory:Input(title,placeholder,inputtype,callback)
			local INPUT = Instance.new('Frame')
			local Title_7 = Instance.new('TextLabel')
			local TextBox = Instance.new('TextBox')
			
			INPUT.Name = tostring(#children+1)
			INPUT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			INPUT.BackgroundTransparency = 1.000
			INPUT.Position = UDim2.new(0, 0, -1.17375301e-07, 0)
			INPUT.Size = UDim2.new(1, 0, -0.0230769236, 44)

			Title_7.Name = "Title"
			Title_7.Parent = INPUT
			Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_7.BackgroundTransparency = 1.000
			Title_7.Position = UDim2.new(0.0215311013, 0, 0.102605954, 0)
			Title_7.Size = UDim2.new(0.653110027, 0, 0.794788122, 0)
			Title_7.Font = Enum.Font.Code
			Title_7.Text = title or 'Input, ('..inputtype..')'
			Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_7.TextScaled = true
			Title_7.TextSize = 14.000
			Title_7.TextWrapped = true
			Title_7.TextXAlignment = Enum.TextXAlignment.Left

			TextBox.Parent = INPUT
			TextBox.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
			TextBox.BackgroundTransparency = 0.800
			TextBox.Position = UDim2.new(0.691387534, 0, 0.102605954, 0)
			TextBox.Size = UDim2.new(0.282296658, 0, 0.786645651, 0)
			TextBox.Font = Enum.Font.Code
			TextBox.PlaceholderText = placeholder or inputtype
			TextBox.Text = ""
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextScaled = true
			TextBox.TextSize = 14.000
			TextBox.TextWrapped = true
			
			TextBox.FocusLost:Connect(function()
				task.wait()
				local a = TextBox.Text
				local b = nil
				
				if inputtype == 'text' then
					b = a
				elseif inputtype == 'number' then
					local c = tonumber(a)
					if c ~= nil then
						b = c
					end
				else
					error('Unknown inputtype: '..inputtype, 0)
				end
				TextBox.Text = ''
				
				if b ~= nil then
					if callback ~= nil then
						callback(b)
					end
				else
					task.spawn(function()
						TextBox.PlaceholderText = 'Incorrect input!'
						task.wait(3)
						TextBox.PlaceholderText = placeholder or inputtype
					end)
				end
			end)

			table.insert(children, INPUT)

			return INPUT
		end
		
		function PageFactory:Bind(title,default,callback)
			local bind = default
			local binding = false
			
			local BIND = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local Bind = Instance.new("TextButton")

			BIND.Name = tostring(#children+1)
			BIND.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BIND.BackgroundTransparency = 1.000
			BIND.Position = UDim2.new(0, 0, -1.17375301e-07, 0)
			BIND.Size = UDim2.new(1, 0, -0.0230769236, 44)

			Title.Name = "Title"
			Title.Parent = BIND
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.0215310771, 0, 0.102605954, 0)
			Title.Size = UDim2.new(0.653110027, 0, 0.794788122, 0)
			Title.Font = Enum.Font.Code
			Title.Text = title or 'Bind'
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			Bind.Name = "Bind"
			Bind.Parent = BIND
			Bind.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
			Bind.Position = UDim2.new(0.691387415, 0, 0.0999996811, 0)
			Bind.Size = UDim2.new(0.28493008, 0, 0.800000012, 0)
			Bind.Font = Enum.Font.Code
			Bind.Text = bind.Name or 'None'
			Bind.TextColor3 = Color3.fromRGB(255, 255, 255)
			Bind.TextScaled = true
			Bind.TextSize = 14.000
			Bind.TextWrapped = true
			
			Bind.MouseButton1Click:Connect(function()
				binding = not binding
				if binding == true then
					Bind.Text = 'Press a key...'
				else
					Bind.Text = bind.KeyCode.Name
				end
			end)
			
			uis.InputBegan:Connect(function(input, gpe)
				if not gpe then
					if binding and input.KeyCode then
						bind = input.KeyCode
						Bind.Text = bind.KeyCode.Name
						binding = false
					elseif binding == false and bind ~= nil and input.KeyCode == bind then
						if callback ~= nil then
							callback(input.KeyCode)
						end
					end
				end
			end)
			
			table.insert(children, BIND)
			
			return BIND
		end
		
		return PageFactory, _1
	end

	return Window, DH_GUI
end

function Window:Notify(properties)
	if properties ~= nil then
		properties['Title'] = 'DOGEHOOK'
		properties['Text'] = properties['Text'] or '...'
		print(properties)
		game:GetService('StarterGui'):SetCore('SendNotification', properties)
	end
end

return Window
