-- an autofarm gui for roblox sharkbite
-- made by kattoe101 (github)
-- if u have any questions, suggestions or feedback you can dm me on discord (kattoe)
-- created: 23-08-2023
-- updated: 01-09-2023


-- Instances:

local SbAutofarm = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local OnOff = Instance.new("TextButton")
local TeethReceived = Instance.new("TextLabel")
local teeth = Instance.new("TextLabel")
local Webhook = Instance.new("TextBox")
local oldteeth = Instance.new("TextLabel")

--Properties:

SbAutofarm.Name = "Sb-Autofarm"
SbAutofarm.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SbAutofarm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SbAutofarm
Frame.BackgroundColor3 = Color3.fromRGB(235, 152, 35)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.398121893, 0, 0.380138546, 0)
Frame.Size = UDim2.new(0, 230, 0, 87)

OnOff.Name = "On/Off"
OnOff.Parent = Frame
OnOff.BackgroundColor3 = Color3.fromRGB(255, 219, 12)
OnOff.BorderColor3 = Color3.fromRGB(0, 0, 0)
OnOff.Position = UDim2.new(0.0450000018, -2, 0.100000001, 0)
OnOff.Size = UDim2.new(0, 50, 0, 30)
OnOff.Font = Enum.Font.SourceSans
OnOff.Text = "off"
OnOff.TextColor3 = Color3.fromRGB(0, 0, 0)
OnOff.TextSize = 34.000

TeethReceived.Name = "TeethReceived"
TeethReceived.Parent = Frame
TeethReceived.BackgroundColor3 = Color3.fromRGB(255, 219, 12)
TeethReceived.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeethReceived.Position = UDim2.new(0.301905364, 0, 0.0979598984, 0)
TeethReceived.Size = UDim2.new(0, 150, 0, 30)
TeethReceived.Font = Enum.Font.SourceSans
TeethReceived.Text = "Teeth received: 0"
TeethReceived.TextColor3 = Color3.fromRGB(0, 0, 0)
TeethReceived.TextSize = 18.000
TeethReceived.TextWrapped = true

teeth.Name = "teeth"
teeth.Parent = TeethReceived
teeth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teeth.BorderColor3 = Color3.fromRGB(0, 0, 0)
teeth.BorderSizePixel = 0
teeth.Position = UDim2.new(0, -3, 0.312000006, 0)
teeth.Visible = false
teeth.Font = Enum.Font.SourceSans
teeth.Text = ""
teeth.TextColor3 = Color3.fromRGB(0, 0, 0)
teeth.TextSize = 14.000

Webhook.Name = "Webhook"
Webhook.Parent = Frame
Webhook.BackgroundColor3 = Color3.fromRGB(255, 219, 12)
Webhook.BorderColor3 = Color3.fromRGB(0, 0, 0)
Webhook.Position = UDim2.new(0.0451692007, -2, 0.536891162, 0)
Webhook.Size = UDim2.new(0, 212, 0, 32)
Webhook.ClearTextOnFocus = false
Webhook.Font = Enum.Font.SourceSans
Webhook.PlaceholderColor3 = Color3.fromRGB(193, 162, 9)
Webhook.PlaceholderText = "Webhook url: (leave blank for config)"
Webhook.Text = ""
Webhook.TextColor3 = Color3.fromRGB(0, 0, 0)
Webhook.TextSize = 14.000
Webhook.TextWrapped = true

oldteeth.Name = "oldteeth"
oldteeth.Parent = Webhook
oldteeth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
oldteeth.BorderColor3 = Color3.fromRGB(0, 0, 0)
oldteeth.BorderSizePixel = 0
oldteeth.Visible = false
oldteeth.Font = Enum.Font.SourceSans
oldteeth.TextColor3 = Color3.fromRGB(0, 0, 0)
oldteeth.TextSize = 14.000

-- Scripts:

local function BSWJETE_fake_script() -- OnOff.loop.tp 
	local script = Instance.new('LocalScript', OnOff)

	local textButton = script.Parent
	local isRunning = false
	
	
	textButton.MouseButton1Click:Connect(function()
		if textButton.Text ~= "on" then
			textButton.Text = "on"
			isRunning = true
		else
			textButton.Text = "off"
			isRunning = false
		end
	end)
	
	
	textButton.MouseButton1Click:Connect(function()
		wait(1)
		while isRunning do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.05339909, 464.527893, 31.5693302, 0.490018576, 4.31568949e-08, 0.871711969, 2.26567209e-08, 1, -6.2244311e-08, -0.871711969, 5.02510034e-08, 0.490018576)
			wait(2)
		end
	end)
end
coroutine.wrap(BSWJETE_fake_script)()
local function ELZP_fake_script() -- TeethReceived.teethreceivedscript 
	local script = Instance.new('LocalScript', TeethReceived)

	local TotalTeeth = game:GetService("Players").LocalPlayer.PlayerGui.CoreGuis.Coins.Scorebox.TextLabel
	local StartTeeth = script.Parent.teeth
	local label = script.Parent
	
	local function onTextChanged()
		label.Text = "Teeth received: "..TotalTeeth.Text - StartTeeth.Rotation
	end
	
	TotalTeeth.Changed:Connect(onTextChanged)
	
end
coroutine.wrap(ELZP_fake_script)()
local function OQAH_fake_script() -- teeth.teethscript 
	local script = Instance.new('LocalScript', teeth)

	script.Parent.Rotation = game:GetService("Players").LocalPlayer.PlayerGui.CoreGuis.Coins.Scorebox.TextLabel.Text
	wait(1)
	script:Destroy()
	
end
coroutine.wrap(OQAH_fake_script)()
local function ZRLYCHK_fake_script() -- Webhook.webhookscript 
	local script = Instance.new('LocalScript', Webhook)

	script.Parent.oldteeth.Rotation = game:GetService("Players").LocalPlayer.PlayerGui.CoreGuis.Coins.Scorebox.TextLabel.Text
	
	script.Parent.Parent.TeethReceived:GetPropertyChangedSignal("Text"):Connect(function()
		local TotalTeeth = game:GetService("Players").LocalPlayer.PlayerGui.CoreGuis.Coins.Scorebox.TextLabel
		local StartTeeth = script.Parent.Parent.TeethReceived.teeth
		local oldTeeth = script.Parent.oldteeth
		local url = ""
		local plr = game:GetService("Players").LocalPlayer
		local config = readfile("kattoehub/config.txt")
		if config:match("https://discord.com/api/webhooks/") then
			url = config
		else
			url = script.Parent.Text
		end
		local data = {
			
			["embeds"] = {
				{
					["color"] = tonumber(0xd69a00),
					["fields"] = {
						{
							["name"] = "Earned this time:",
							["value"] = TotalTeeth.Text - oldTeeth.Rotation,
							["inline"] = false
						},
						{
							["name"] = "Total earned:",
							["value"] = TotalTeeth.Text - StartTeeth.Rotation,
							["inline"] = false
						},
						{
							["name"] = "Total teeth:",
							["value"] = TotalTeeth.Text,
							["inline"] = false
						},
						{
							["name"] = "Time:",
							["value"] = os.date(),
							["inline"] = false
						}
					}
				}
			}
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)
	
		local headers = {
			["content-type"] = "application/json"
		}
		request = http_request or request or HttpPost or syn.request
		local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(abcdef)
		script.Parent.oldteeth.Rotation = game:GetService("Players").LocalPlayer.PlayerGui.CoreGuis.Coins.Scorebox.TextLabel.Text
	end)
	
end
coroutine.wrap(ZRLYCHK_fake_script)()
local function XZBZU_fake_script() -- Webhook.config 
	local script = Instance.new('LocalScript', Webhook)

	if isfolder("kattoehub") and isfile("kattoehub/config.txt") then
		else
		makefolder("kattoehub")
		writefile("kattoehub/config.txt", "Just paste your webhook link here. It will be saved for the next time. (make sure to save the file lol)")
	end
end
coroutine.wrap(XZBZU_fake_script)()
local function IHHKB_fake_script() -- SbAutofarm.draggable 
	local script = Instance.new('LocalScript', SbAutofarm)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent.Frame
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(IHHKB_fake_script)()
local function THKZB_fake_script() -- SbAutofarm.preventkick 
	local script = Instance.new('LocalScript', SbAutofarm)

	local vu = game:GetService("VirtualUser")
	
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end
coroutine.wrap(THKZB_fake_script)()
