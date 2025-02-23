--[[
Arko's Fake Key System Version 1.0
]]--

--[[
Update Logs: (v1.2)

[+] Added Many Text Optimisations .
[+] Added So You Can Easily Add Keys.
[+] Keys Are Now Supporting Lower/Upper Case.
]]--

--[[
Notes:
Edit The Settings, But Please Do NOT Touch The Main Code. (unless you know how to scripts ofc)
]]--



--Main Settings
Title = "Authentication" --title of the main frame
Get_Key_Text = "Get Your Key Here: discord.gg/WgJWMDjnc6" --text will pop up on the main frame where you can get ur key, (can be a discord server or a website.)





--Free Keys:
FreeKey_1 = "free_key1"  --edit your key here example: "mynewkeyomg"
FreeKey_2 = "FREE_KEY2"
FreeKey_3 = "free_key3"
FreeKey_4 = "free_key4"
FreeKey_5 = "free_key5"
FreeKey_6 = "free_key6"
FreeKey_7 = "free_key7"
FreeKey_8 = "free_key8"
FreeKey_9 = "free_key9"
FreeKey_10 = "free_key10"





--Paid Keys:
PaidKey_1 = "paid_key1" --edit your key here example: "mynewkey"
PaidKey_2 = "paid_key2"
PaidKey_3 = "paid_key3"
PaidKey_4 = "paid_key4"
PaidKey_5 = "paid_key5"
PaidKey_6 = "paid_key6"
PaidKey_7 = "paid_key7"
PaidKey_8 = "paid_key8"
PaidKey_9 = "paid_key9"
PaidKey_10 = "paid_key10"






--Optional Settings
TextBox_Text = "Paste Your Key In Here" --the textbox text
Button_Text = "Check Key" --the button text
Checking_Key_Text = "Checking Your Key! Please Wait." --checking key text
Invalid_Key_Text = "Invalid Key. Returning Back!" --invalid key text
Free_Key_Script_Text = "Free Key Valid! Executing The Free Script Hub. Please Wait!" -- free key fake loading
Paid_Key_Script_Text = "Paid Key Valid! Executing The Paid Script Hub. Please Wait!" -- paid key fake loading
Fake_Loading_Text = "If Its Stuck On Loading, Please Join discord.gg/DaBh7K9JGE To Get Your Error Fixed!" --fake error text






















--[[
Arko's Fake Key System Version 1.2
DO NOT TOUCH/EDIT ANYTHING BELOW UNLESS YOU KNOW HOW TO CODE!!!
]]--
local ArkosAuth = Instance.new("ScreenGui")
local maingui = Instance.new("Frame")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local keyframe = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local TextBox = Instance.new("TextBox")
local sumbitframe = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")
local TextButton = Instance.new("TextButton")
local UIStroke_3 = Instance.new("UIStroke")
local checking = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local keyframe_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIStroke_4 = Instance.new("UIStroke")
local Dots = Instance.new("Frame")
local Dot1 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local InsideDot = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Dot2 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local InsideDot_2 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Dot3 = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local InsideDot_3 = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local UIStroke_5 = Instance.new("UIStroke")
local info = Instance.new("TextLabel")



ArkosAuth.Name = "ArkosAuth"
ArkosAuth.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ArkosAuth.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ArkosAuth.IgnoreGuiInset = true

maingui.Name = "maingui"
maingui.Parent = ArkosAuth
maingui.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
maingui.BackgroundTransparency = 0.200
maingui.BorderColor3 = Color3.fromRGB(0, 0, 0)
maingui.BorderSizePixel = 0
maingui.Size = UDim2.new(1, 0, 1, 0)

main.Name = "main"
main.Parent = maingui
main.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
main.BackgroundTransparency = 0.500
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.373730958, 0, 0.387096763, 0)
main.Size = UDim2.new(0.251903564, 0, 0.224565759, 0)

UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = main

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.0469871238, 0)
TextLabel.Size = UDim2.new(0.99999994, 0, 0.154696137, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = Title
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0476209521, 0, 0.852658451, 0)
TextLabel_2.Size = UDim2.new(0.906800985, 0, 0.0994475111, 0)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = Get_Key_Text
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

keyframe.Name = "keyframe"
keyframe.Parent = main
keyframe.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
keyframe.BackgroundTransparency = 0.840
keyframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
keyframe.BorderSizePixel = 0
keyframe.LayoutOrder = 1
keyframe.Position = UDim2.new(0.146556631, 0, 0.294100851, 0)
keyframe.Size = UDim2.new(0.707808554, 0, 0.198895022, 0)

UICorner_2.CornerRadius = UDim.new(0, 7)
UICorner_2.Parent = keyframe

UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 1.7999999523162842
UIStroke.Transparency = 0.6499999761581421
UIStroke.Parent = keyframe

TextBox.Parent = keyframe
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.00711743766, 0, 0.175266683, 0)
TextBox.Size = UDim2.new(1, 0, 0.611111104, 0)
TextBox.Font = Enum.Font.FredokaOne
TextBox.Text = TextBox_Text
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

sumbitframe.Name = "sumbitframe"
sumbitframe.Parent = main
sumbitframe.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
sumbitframe.BackgroundTransparency = 0.840
sumbitframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
sumbitframe.BorderSizePixel = 0
sumbitframe.LayoutOrder = 1
sumbitframe.Position = UDim2.new(0.146569237, 0, 0.586392879, 0)
sumbitframe.Size = UDim2.new(0.707808554, 0, 0.198895022, 0)

UICorner_3.CornerRadius = UDim.new(0, 7)
UICorner_3.Parent = sumbitframe

UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
UIStroke_2.Thickness = 1.7999999523162842
UIStroke_2.Transparency = 0.6499999761581421
UIStroke_2.Parent = sumbitframe

TextButton.Parent = sumbitframe
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.00355871883, 0, 0.172220021, 0)
TextButton.Size = UDim2.new(0.99288255, 0, 0.611111104, 0)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = Button_Text
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
UIStroke_3.Thickness = 1.7999999523162842
UIStroke_3.Transparency = 0.6700000166893005
UIStroke_3.Parent = main

checking.Name = "checking"
checking.Parent = maingui
checking.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
checking.BackgroundTransparency = 0.500
checking.BorderColor3 = Color3.fromRGB(0, 0, 0)
checking.BorderSizePixel = 0
checking.Position = UDim2.new(0.373730958, 0, 0.387096763, 0)
checking.Size = UDim2.new(0.251903564, 0, 0.224565759, 0)
checking.Visible = false

UICorner_4.CornerRadius = UDim.new(0, 7)
UICorner_4.Parent = checking

keyframe_2.Name = "keyframe"
keyframe_2.Parent = checking
keyframe_2.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
keyframe_2.BackgroundTransparency = 0.840
keyframe_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
keyframe_2.BorderSizePixel = 0
keyframe_2.LayoutOrder = 1
keyframe_2.Position = UDim2.new(0.131443277, 0, 0.675316215, 0)
keyframe_2.Size = UDim2.new(0.738035202, 0, 0.248618782, 0)

UICorner_5.CornerRadius = UDim.new(0, 7)
UICorner_5.Parent = keyframe_2

UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
UIStroke_4.Thickness = 1.7999999523162842
UIStroke_4.Transparency = 0.6499999761581421
UIStroke_4.Parent = keyframe_2

Dots.Name = "Dots"
Dots.Parent = keyframe_2
Dots.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dots.BackgroundTransparency = 1.000
Dots.Position = UDim2.new(0.212588772, 0, 0, 0)
Dots.Size = UDim2.new(0.554161906, 0, 0.999999702, 0)

Dot1.Name = "Dot1"
Dot1.Parent = Dots
Dot1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot1.Position = UDim2.new(0.0611661971, 0, 0.234447539, 0)
Dot1.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)

UICorner_6.CornerRadius = UDim.new(0.5, 0)
UICorner_6.Parent = Dot1

InsideDot.Name = "InsideDot"
InsideDot.Parent = Dot1
InsideDot.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot.Position = UDim2.new(0.5, 0, 0.5, 0)

UICorner_7.CornerRadius = UDim.new(0.5, 0)
UICorner_7.Parent = InsideDot

Dot2.Name = "Dot2"
Dot2.Parent = Dots
Dot2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot2.Position = UDim2.new(0.419989735, 0, 0.234447539, 0)
Dot2.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)

UICorner_8.CornerRadius = UDim.new(0.5, 0)
UICorner_8.Parent = Dot2

InsideDot_2.Name = "InsideDot"
InsideDot_2.Parent = Dot2
InsideDot_2.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot_2.Position = UDim2.new(0.5, 0, 0.5, 0)

UICorner_9.CornerRadius = UDim.new(0.5, 0)
UICorner_9.Parent = InsideDot_2

Dot3.Name = "Dot3"
Dot3.Parent = Dots
Dot3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot3.Position = UDim2.new(0.778813243, 0, 0.234447539, 0)
Dot3.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)

UICorner_10.CornerRadius = UDim.new(0.5, 0)
UICorner_10.Parent = Dot3

InsideDot_3.Name = "InsideDot"
InsideDot_3.Parent = Dot3
InsideDot_3.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot_3.Position = UDim2.new(0.5, 0, 0.5, 0)

UICorner_11.CornerRadius = UDim.new(0.5, 0)
UICorner_11.Parent = InsideDot_3

UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
UIStroke_5.Thickness = 1.7999999523162842
UIStroke_5.Transparency = 0.6700000166893005
UIStroke_5.Parent = checking

info.Name = "info"
info.Parent = checking
info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
info.BackgroundTransparency = 1.000
info.BorderColor3 = Color3.fromRGB(0, 0, 0)
info.BorderSizePixel = 0
info.Position = UDim2.new(0.073047854, 0, 0.251406997, 0)
info.Size = UDim2.new(0.853904188, 0, 0.248618782, 0)
info.Font = Enum.Font.FredokaOne
info.Text = Checking_Key_Text
info.TextColor3 = Color3.fromRGB(255, 255, 255)
info.TextScaled = true
info.TextSize = 14.000
info.TextWrapped = true



local function PDGHO_fake_script() 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent.Parent.Parent.sumbitframe.TextButton
	local textLabel = script.Parent.Parent.Parent.keyframe.TextBox

	local freeKeys = {
		FreeKey_1 ,
		FreeKey_2 ,
		FreeKey_3 ,
		FreeKey_4 ,
		FreeKey_5 ,
		FreeKey_6 ,
		FreeKey_7 ,
		FreeKey_8 ,
		FreeKey_9 ,
		FreeKey_10 ,
	}

	local paidKeys = {
		PaidKey_1 ,
		PaidKey_2 ,
		PaidKey_3 ,
		PaidKey_4 ,
		PaidKey_5 ,
		PaidKey_6 ,
		PaidKey_7 ,
		PaidKey_8 ,
		PaidKey_9 ,
		PaidKey_10 ,
	}


	local function buttonClicked()
		local enteredText = textLabel.Text:lower()
		local isValidKey = false
		local isPaidKey = false


		for _, key in ipairs(freeKeys) do
			if enteredText == key:lower() then
				isValidKey = true
				break
			end
		end


		if not isValidKey then
			for _, key in ipairs(paidKeys) do
				if enteredText == key:lower() then
					isValidKey = true
					isPaidKey = true
					break
				end
			end
		end


		script.Parent.Parent.Parent.Parent.main.Visible = false
		script.Parent.Parent.Parent.Parent.checking.Visible = true
		if isValidKey then
			if isPaidKey then
				script.Parent.Parent.Parent.Parent.checking.info.Text  = Paid_Key_Script_Text
			else
				script.Parent.Parent.Parent.Parent.checking.info.Text  = Free_Key_Script_Text
			end
			wait(3)
			script.Parent.Parent.Parent.Parent.checking.info.Text = "Verifying..."
			wait(3)
			script.Parent.Parent.Parent.Parent.checking.info.Text  = Fake_Loading_Text
		else
			script.Parent.Parent.Parent.Parent.checking.info.Text  = Invalid_Key_Text
			wait(1)
			script.Parent.Parent.Parent.Parent.main.Visible = true
			script.Parent.Parent.Parent.Parent.checking.Visible = false
		end
	end

	button.MouseButton1Click:Connect(buttonClicked)

end
coroutine.wrap(PDGHO_fake_script)()
local function VBJFN_fake_script()
	local script = Instance.new('LocalScript', Dots)

	while true do
		wait(0.25)
		script.Parent.Dot1.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot2.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot3.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot1.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot2.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot3.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
	end
end
coroutine.wrap(VBJFN_fake_script)()
