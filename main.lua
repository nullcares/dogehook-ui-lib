-- nulare#4408

--[[-- Gui to Lua
-- Version: 3.2

-- Instances:

local DH_GUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Navigation = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")
local Tabs = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local _1 = Instance.new("TextButton")
local _2 = Instance.new("TextButton")
local Page = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TITLE = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local TOGGLE = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local Tick = Instance.new("ImageButton")
local BUTTON = Instance.new("Frame")
local Button = Instance.new("TextButton")
local SLIDER = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local Slider = Instance.new("Frame")
local SliderMain = Instance.new("Frame")
local Title_5 = Instance.new("TextLabel")
local LABEL = Instance.new("Frame")
local Title_6 = Instance.new("TextLabel")
local INPUT = Instance.new("Frame")
local Title_7 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local DROPDOWN = Instance.new("Frame")
local Title_8 = Instance.new("TextLabel")
local Choice = Instance.new("TextLabel")
local ImageButton_2 = Instance.new("ImageButton")

--Properties:

DH_GUI.Name = "DH_GUI"
DH_GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
DH_GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = DH_GUI
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.326173425, 0, 0.293639868, 0)
MainFrame.Size = UDim2.new(0.347653151, 0, 0.411636829, 0)

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
Title.Text = "[ dogehook v1 ] booty bounce edition"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

ImageButton.Parent = Navigation
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.95599997, 0, 0.100000001, 0)
ImageButton.Size = UDim2.new(0.038901601, 0, 0.850000739, 0)
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

_1.Name = "1"
_1.Parent = Tabs
_1.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
_1.Position = UDim2.new(0, 0, -1.52587893e-06, 0)
_1.Size = UDim2.new(0, 96, 1, 0)
_1.Font = Enum.Font.Code
_1.Text = "Selected"
_1.TextColor3 = Color3.fromRGB(255, 255, 255)
_1.TextScaled = true
_1.TextSize = 14.000
_1.TextWrapped = true

_2.Name = "2"
_2.Parent = Tabs
_2.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
_2.Position = UDim2.new(0, 0, -1.52587893e-06, 0)
_2.Size = UDim2.new(0, 240, 1, 0)
_2.Font = Enum.Font.Code
_2.Text = "Default, lorem ipsum"
_2.TextColor3 = Color3.fromRGB(255, 255, 255)
_2.TextScaled = true
_2.TextSize = 14.000
_2.TextWrapped = true

Page.Name = "Page"
Page.Parent = MainFrame
Page.Active = true
Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Page.BackgroundTransparency = 1.000
Page.BorderSizePixel = 0
Page.Position = UDim2.new(0.022883296, 0, 0.162580356, 0)
Page.Size = UDim2.new(0.956521749, 0, 0.812901795, 0)
Page.ScrollBarThickness = 5

UIListLayout_2.Parent = Page
UIListLayout_2.Padding = UDim.new(0, 2)

TITLE.Name = "#TITLE"
TITLE.Parent = Page
TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TITLE.BackgroundTransparency = 1.000
TITLE.Position = UDim2.new(0, 0, -1.17375301e-07, 0)
TITLE.Size = UDim2.new(1, 0, -0.0230769236, 44)

Title_2.Name = "Title"
Title_2.Parent = TITLE
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.0191387553, 0, 0, 0)
Title_2.Size = UDim2.new(0.95693779, 0, 1, 0)
Title_2.Font = Enum.Font.Code
Title_2.Text = "Main"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

TOGGLE.Name = "TOGGLE"
TOGGLE.Parent = Page
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
Title_3.Text = "Aimbot (longass text blah blah gg)"
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
Tick.Image = "http://www.roblox.com/asset/?id=8589545938"
Tick.ImageColor3 = Color3.fromRGB(0, 170, 255)

BUTTON.Name = "BUTTON"
BUTTON.Parent = Page
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
Button.Text = "Kill all (may be patched)"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.TextSize = 14.000
Button.TextWrapped = true

SLIDER.Name = "SLIDER"
SLIDER.Parent = Page
SLIDER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SLIDER.BackgroundTransparency = 1.000
SLIDER.Position = UDim2.new(0, 0, -1.17375301e-07, 0)
SLIDER.Size = UDim2.new(1, 0, -0.0230769236, 44)

Title_4.Name = "Title"
Title_4.Parent = SLIDER
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.Position = UDim2.new(0.0215311013, 0, 0.102605954, 0)
Title_4.Size = UDim2.new(0.588516772, 0, 0.794788122, 0)
Title_4.Font = Enum.Font.Code
Title_4.Text = "Aimbot smoothness (longass text)"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextScaled = true
Title_4.TextSize = 14.000
Title_4.TextWrapped = true
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Slider.Name = "Slider"
Slider.Parent = SLIDER
Slider.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Slider.BorderSizePixel = 0
Slider.Position = UDim2.new(0.631578922, 0, 0.342019856, 0)
Slider.Size = UDim2.new(0.325358838, 0, 0.307817847, 0)

SliderMain.Name = "SliderMain"
SliderMain.Parent = Slider
SliderMain.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
SliderMain.BorderSizePixel = 0
SliderMain.Size = UDim2.new(0.522058845, 0, 1, 0)

Title_5.Name = "Title"
Title_5.Parent = SliderMain
Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_5.BackgroundTransparency = 1.000
Title_5.Position = UDim2.new(0, -3, 0, -7)
Title_5.Size = UDim2.new(0.911764145, 0, 2.55559492, 0)
Title_5.Font = Enum.Font.Code
Title_5.Text = "50"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextScaled = true
Title_5.TextSize = 14.000
Title_5.TextStrokeTransparency = 0.000
Title_5.TextWrapped = true
Title_5.TextXAlignment = Enum.TextXAlignment.Right

LABEL.Name = "LABEL"
LABEL.Parent = Page
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
Title_6.Font = Enum.Font.Bangers
Title_6.Text = "Label same as title but better"
Title_6.TextColor3 = Color3.fromRGB(170, 85, 255)
Title_6.TextScaled = true
Title_6.TextSize = 14.000
Title_6.TextWrapped = true

INPUT.Name = "INPUT"
INPUT.Parent = Page
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
Title_7.Text = "Input (number)"
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
TextBox.PlaceholderText = "input hgoes here yayy"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

DROPDOWN.Name = "DROPDOWN"
DROPDOWN.Parent = Page
DROPDOWN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DROPDOWN.BackgroundTransparency = 1.000
DROPDOWN.Position = UDim2.new(0, 0, -1.17375301e-07, 0)
DROPDOWN.Size = UDim2.new(1, 0, -0.0230769236, 44)

Title_8.Name = "Title"
Title_8.Parent = DROPDOWN
Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_8.BackgroundTransparency = 1.000
Title_8.Position = UDim2.new(0.0215311013, 0, 0.102605954, 0)
Title_8.Size = UDim2.new(0.653110027, 0, 0.794788122, 0)
Title_8.Font = Enum.Font.Code
Title_8.Text = "Aimpart"
Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_8.TextScaled = true
Title_8.TextSize = 14.000
Title_8.TextWrapped = true
Title_8.TextXAlignment = Enum.TextXAlignment.Left

Choice.Name = "Choice"
Choice.Parent = DROPDOWN
Choice.BackgroundColor3 = Color3.fromRGB(34, 69, 111)
Choice.BackgroundTransparency = 0.800
Choice.Position = UDim2.new(0.691387534, 0, 0.102605954, 0)
Choice.Size = UDim2.new(0.215311006, 0, 0.794788122, 0)
Choice.Font = Enum.Font.Code
Choice.Text = "Example"
Choice.TextColor3 = Color3.fromRGB(255, 255, 255)
Choice.TextScaled = true
Choice.TextSize = 14.000
Choice.TextWrapped = true
Choice.TextXAlignment = Enum.TextXAlignment.Left

ImageButton_2.Parent = DROPDOWN
ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_2.BackgroundTransparency = 1.000
ImageButton_2.Position = UDim2.new(0.916267991, 0, 0.102605954, 0)
ImageButton_2.Size = UDim2.new(0, 24, 0, 24)
ImageButton_2.Image = "http://www.roblox.com/asset/?id=4430382116"]]

local Window = {}

function Window:CreateWindow(props)
	local title = props['Name'] or '[ dogehook gui ]'
	
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

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = DH_GUI
	MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.326173425, 0, 0.293639868, 0)
	MainFrame.Size = UDim2.new(0.347653151, 0, 0.411636829, 0)

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
	ImageButton.Size = UDim2.new(0.038901601, 0, 0.850000739, 0)
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

	Page.Name = "Page"
	Page.Parent = MainFrame
	Page.Active = true
	Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Page.BackgroundTransparency = 1.000
	Page.BorderSizePixel = 0
	Page.Position = UDim2.new(0.022883296, 0, 0.162580356, 0)
	Page.Size = UDim2.new(0.956521749, 0, 0.812901795, 0)
	Page.ScrollBarThickness = 5

	UIListLayout_2.Parent = Page
	UIListLayout_2.Padding = UDim.new(0, 2)
	
	return DH_GUI
end

return Window
