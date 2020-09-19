if game.PlaceId == 5482568838 then
	local function getlink(name)
 	 return "https://raw.githubusercontent.com/ignas9/bloodspree__-heusfoujoad/master/___------_____GHEA___---____----"..name
	end
	local ui = loadstring(game:HttpGet(getlink('uilibrary.lua')))()
	local reps = game:GetService('ReplicatedStorage')
	local lp = game:GetService('Players').LocalPlayer
	local char = lp.Character
	local uis = game:GetService('UserInputService')
	local mouse = lp:GetMouse()
	local tws = game:GetService('TweenService')
	local speed = 16
	local jp = 50
	local function giveBomb()
		fireclickdetector(workspace['Game Assets'].TakeGear.ClickDetector)
	end
	local function trollUser(name)
		giveBomb()
		wait(0.3)
		local tool = game.Players.LocalPlayer.Backpack['Stun Bomb']
		tool.Parent = char
		wait(0.5)
		local A_1 = game.Players[name].Character.HumanoidRootPart.CFrame
		local A_2 = Vector3.new(0,0,0)
		local A_3 = true
		tool.SpawnGrenade:FireServer(A_1, A_2, A_3)
		wait(1.5)
	end
	local aimbotSettings = 
		{
		enabled = false,
		bp = 'Head',
		}
	local tabs = 
    	{
  	  guns = ui:CreateTab('guns',"guns 'n shit lol",true),
  	  aimbot = ui:CreateTab('aimbot','aimbot settings',true),
	  lp = ui:CreateTab('localplayer','modify yourself',true),
	}
	local guns = {'Stun Bomb'}
	local cmds = 
	{
		te = function(args)
			trollUser(args[2])
		end
	}
	for i,v in next, reps:WaitForChild('Primary'):GetChildren() do
		table.insert(guns,v.Name)
	end
	for i,v in next, reps:WaitForChild('Secondary'):GetChildren() do
	    table.insert(guns,v.Name)
	end
	local function command(g)
		g=g:split(' ')cmds[g[1]:lower()](g)
	end
	local function notify(titl,des,delayTime,callback)
		local callback = callback or function() end
		local delayTime = delayTime or 3
		local titl = titl or '>NO TITLE<'
		local des = des or '>NO DESCRIPTION<'
		
		local v_notify = Instance.new("ScreenGui")
local topbar = Instance.new("ImageLabel")
local underline = Instance.new("Frame")
local background = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")
local desc = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")

v_notify.Name = "v_notify"
v_notify.Parent = game:GetService('CoreGui')
v_notify.ZIndexBehavior = Enum.ZIndexBehavior.Global

topbar.Name = "topbar"
topbar.Parent = v_notify
topbar.BackgroundTransparency = 1.000
topbar.BorderSizePixel = 0
topbar.Position = UDim2.new(1.5, 0, 0.781350434, 0)
topbar.Size = UDim2.new(0, 263, 0, 27)
topbar.Image = "rbxassetid://1307995459"
topbar.ImageColor3 = Color3.fromRGB(26, 26, 26)
topbar.ScaleType = Enum.ScaleType.Slice
topbar.SliceCenter = Rect.new(2, 2, 254, 254)

underline.Name = "underline"
underline.Parent = topbar
underline.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
underline.BorderSizePixel = 0
underline.Position = UDim2.new(0, 0, 0.899997473, 0)
underline.Size = UDim2.new(1, 0, 0, 2)
underline.ZIndex = 2

background.Name = "background"
background.Parent = topbar
background.BackgroundTransparency = 1.000
background.BorderSizePixel = 0
background.Position = UDim2.new(0, 0, 0.80000025, 0)
background.Size = UDim2.new(1, 0, 1.29629624, 74)
background.Image = "rbxassetid://1307995459"
background.ImageColor3 = Color3.fromRGB(34, 34, 34)
background.ScaleType = Enum.ScaleType.Slice
background.SliceCenter = Rect.new(2, 2, 254, 254)

title.Name = "title"
title.Parent = background
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.117870726, 0, 0.0458715595, 0)
title.Size = UDim2.new(0, 200, 0, 19)
title.Font = Enum.Font.SourceSansSemibold
title.Text = titl
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

desc.Name = "desc"
desc.Parent = background
desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
desc.BackgroundTransparency = 1.000
desc.Position = UDim2.new(0.117870726, 0, 0.220183492, 0)
desc.Size = UDim2.new(0, 200, 0, 66)
desc.Font = Enum.Font.SourceSans
desc.Text = des
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextSize = 20.000
desc.TextWrapped = true

TextLabel.Parent = topbar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.117870718, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 21)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = ">notification<"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000

tws:Create(topbar,TweenInfo.new(1),{Position = UDim2.new(0.77, 0, 0.781350434, 0)}):Play()

wait(delayTime)

tws:Create(topbar,TweenInfo.new(1.5),{Position = UDim2.new(1.5, 0, 0.781350434, 0)}):Play()

callback()

wait(1)

v_notify:remove()
end
local function remote(ev,name,...)
   	 local rem
    	if ev == false then
        rem = reps:WaitForChild(name)
    else
        rem = reps:FindFirstChild('Remotes'):WaitForChild(name)
    end
    rem:FireServer(...)
end
function cansee(targ)
   local cam = workspace.CurrentCamera
   local ray = Ray.new(lp.Character.Head.CFrame.p, (targ.CFrame.p - lp.Character.Head.CFrame.p).unit * 300)
   local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {lp.Character}, false, true)
   if part then
       local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")

       if not humanoid then
           humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
       end

       if humanoid and targ and humanoid.Parent == targ.Parent then
           local blah,actualthing = cam:WorldToScreenPoint(targ.Position)
           if actualthing == true then
               return true
           else
               return false
           end
       else
           return false
       end
   else
       return false
   end
end




local function getClosestPlayerToCursor(x, y)
   local closestPlayer = nil
   local shortestDistance = math.huge

   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
       if v ~= lp and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then
           local pos = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
           local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(x, y)).magnitude

           local targettable = (v.Team ~= lp.Team or v.Team == nil) and v.Character.Humanoid.Health > 0
           if magnitude < shortestDistance and cansee(v.Character.Head) == true and (v.Team ~= lp.Team or v.Team == nil) and v.Character.Humanoid.Health > 0 and v.Character.Humanoid.Health ~= math.huge then
               closestPlayer = v
               shortestDistance = magnitude
           end
end
   end
   return closestPlayer, shortestDistance
end










TweenStatus = nil

local TweenService = game:GetService("TweenService")
TweenCFrame = Instance.new("CFrameValue")


function tweenstuff(partpos)
TweenStatus = true
TweenCFrame.Value = workspace.CurrentCamera.CFrame
local tweenframe = TweenService:Create(TweenCFrame, TweenInfo.new(0.2),{Value = CFrame.new(workspace.CurrentCamera.CFrame.Position, partpos)})
tweenframe:Play()
tweenframe.Completed:Wait()
TweenStatus = nil
TweenCFrame.Value = CFrame.new(0,0,0)
end




game:GetService('RunService').Heartbeat:connect(function()
   if aimbotSettings.enabled == true then
       local plr, distance = getClosestPlayerToCursor(mouse.X, mouse.Y)
if TweenStatus == nil and plr ~= nil and distance > 540 and plr.Charater ~= nil then
tweenstuff(plr.Character[aimbotSettings.bd].Position)
end
if TweenStatus == true then
workspace.CurrentCamera.CFrame = TweenCFrame.Value
end
if plr ~= nil and distance < 540 and TweenStatus == nil then
workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, plr.Character[aimbotSettings.bd].Position)
end
end
end)
tabs.lp:CreateSlider('Speed',16,500,function(v)
	speed = v
end)
tabs.lp:CreateSlider('JumpPower',50,500,function(v)
	jp = v
end)
tabs.guns:CreateButton('Give all primary guns',function()
    for i,v in next,reps:WaitForChild('Primary'):GetChildren() do
        remote(false,'LoadoutEvent','Primary',v.Name)
    end
end)
tabs.guns:CreateButton('Give all secondary guns',function()
    for i,v in next,reps:WaitForChild('Secondary'):GetChildren() do
        remote(false,'LoadoutEvent','Secondary',v.Name)
    end
end)
tabs.guns:CreateButton('Give grenade 2x',function()
    for i=1,2 do
    	giveBomb()
    end
end)
tabs.guns:CreateButton('Give grenade 5x',function()
    for i=1,5 do
    	giveBomb()
    end
end)
tabs.guns:CreateDropDown('Give Gun',guns,function(arg)
    if reps:WaitForChild('Primary'):FindFirstChild(arg) then
        remote(false,'LoadoutEvent','Primary',arg)
    elseif reps:WaitForChild('Secondary'):FindFirstChild(arg) then
        remote(false,'LoadoutEvent','Secondary',arg)
    else
    	giveBomb()
    end
end)
local v_lll11l11l1l1l11ll1l tabs.aimbot:CreateToggle("Aimbot",function(arg)
	aimbotSettings.enabled = arg
end)

local v_1111l1l1l1l1l11l1l1 = tabs.aimbot:CreateDropDown('Aimbot Part',{'Head','Torso'},function(arg)
	aimbotSettings.bd = arg
end)
v_1111l1l1l1l1l11l1l1:Set('Head')

game:GetService("UserInputService").InputBegan:connect(function(inputObject,iswriting)
	if iswriting then return end
	if inputObject.KeyCode == Enum.KeyCode.V and not iswriting and iswriting == false then
		aimbotSettings.enabled = not aimbotSettings.enabled
		if aimbotSettings.enabled == true then
			v_lll11l11l1l1l11ll1l:Set(true)
		else
			v_lll11l11l1l1l11ll1l:Set(false)
		end
	end
end)

uis.InputBegan:Connect(function(obj,is)
	if not is and obj.KeyCode == Enum.KeyCode.RightControl then
		game:GetService('CoreGui').uiui.Enabled = not game:GetService('CoreGui').uiui.Enabled
	end
end)

lp.Chatted:Connect(function(m)
	local e = m:split('')
	if e[1]=='-' then
		m=m:gsub('-','')command(m)
	elseif e[1]=='/' and e[2]=='e' and e[3]==' ' then
		m=m:gsub('/e ','')command(m)
	end
end)
game:service'RunService'.RenderStepped:Connect(function()
	char.WalkSpeed = speed
	char.JumpPower = jp
end)
notify('Bloodspree Haxx','Loaded Bloodspree Haxx Press RightCtrl to toggle gui!',5)
notify('Aimbot Prefix','Press V to Toggle aimbot!',5)
else
game.Players.LocalPlayer:Kick('Incorrect game!')
end
