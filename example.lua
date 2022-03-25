local engine = loadstring(game:HttpGet('https://raw.githubusercontent.com/nullcares/dogehook-ui-lib/main/main.lua',true))()

local w = engine:CreateWindow({
	['Name'] = '[ my dogehook gui ]';
})
local tab = w:Tab('My new tab')
local label, LABEL_OBJECT = tab:Label('If you can see this, something broke')
label:Update({
	['Text'] = 'It works fine!';
	['Font'] = Enum.Font.Bangers;
	['TextColor3'] = Color3.fromRGB(0, 255, 0);
})
local TAB_OBJECT = tab:Toggle('Toggle me!', true, function(bool)
	print(bool)
end)
local BUTTON_OBJECT = tab:Button('Send notification', function()
	engine:Notify({
		['Text'] = 'You pressed the button!';
	})
end)
local INPUT_OBJECT = tab:Input('Input numbers:', nil, 'number', function(input)
	print(input)
end)
local BIND_OBJECT = tab:Bind('Bind me', Enum.KeyCode.X, function(key)
	print('You pressed: '..key.Name)
end)
