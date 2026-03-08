do
	local Constant = 'LPH_'..'NO_VIRTUALIZE';
	getfenv()[Constant] = getfenv()[Constant] or function(f) return f end;
end;

local NeverLose = {};

NeverLose.BuiltInRegular = Font.new('rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json',Enum.FontWeight.Regular,Enum.FontStyle.Normal);
NeverLose.BuiltInBold = Font.new('rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json',Enum.FontWeight.Bold,Enum.FontStyle.Normal);
NeverLose.GlobalSignals = {};

local cloneref: cloneref = cloneref or function(f) return f end;
local TweenService: TweenService = cloneref(game:GetService('TweenService'));
local UserInputService: UserInputService = cloneref(game:GetService('UserInputService'));
local TextService: TextService = cloneref(game:GetService('TextService'));
local RunService: RunService = cloneref(game:GetService('RunService'));
local Players: Players = cloneref(game:GetService('Players'));
local HttpService: HttpService = cloneref(game:GetService('HttpService'));
local LocalPlayer: Player = Players.LocalPlayer;
local CoreGui: PlayerGui = (gethui and gethui()) or (get_hidden_gui and get_hidden_gui()) or cloneref(game:FindFirstChild('CoreGui')) or cloneref(LocalPlayer.PlayerGui);
local Mouse: Mouse = LocalPlayer:GetMouse();
local CurrentCamera: Camera = cloneref(workspace.CurrentCamera);
local ProtectGui = protect_gui or protectgui or (syn and syn.protect_gui) or function(s) return s; end;
local GlobalWindow = Instance.new('ScreenGui');
local ManualTween = TweenInfo.new(0.1);
local SlowyTween = TweenInfo.new(0.175);
local FastTween = TweenInfo.new(0.05);
local VSlowTween = TweenInfo.new(0.5,Enum.EasingStyle.Quint);
local Encryption = {};

if typeof(game) == 'table' or typeof(LocalPlayer) == 'table' or typeof(CoreGui) == 'table' or typeof(writefile) == 'table' or typeof(VSlowTween) == 'table' or typeof(Mouse) == 'table' then
	return {"env logger is not allow"};
end;

local issucc,read = pcall(function()
	return getmetatable(ManualTween);
end);

if issucc then
	local call_test = pcall(function()
		return read();
	end);

	if call_test then
		return {'sybao'};
	end;
end;

NeverLose.RandomString = LPH_NO_VIRTUALIZE(function()
	return string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4))..string.rep(string.char(math.random(1,7)),math.random(1,4));
end);

ProtectGui(GlobalWindow);

GlobalWindow.Name = NeverLose.RandomString();
GlobalWindow.IgnoreGuiInset = true;
GlobalWindow.ZIndexBehavior = Enum.ZIndexBehavior.Global;
GlobalWindow.ResetOnSpawn = false;
GlobalWindow.Parent = CoreGui;
NeverLose.ScreenGui = GlobalWindow;
NeverLose.AccentColor = Color3.fromRGB(78, 127, 252);
NeverLose.RegisiteryColor = {};

function NeverLose:AddSignal(RBXSignal)
	if NeverLose.UnloadEnabled then
		table.insert(NeverLose.GlobalSignals,RBXSignal);	
	end;

	return RBXSignal;
end;

NeverLose.IsStudio = RunService:IsStudio();
NeverLose.IsMobile = UserInputService.TouchEnabled;

NeverLose.CreateInput = LPH_NO_VIRTUALIZE(function(self , Frame , Callback)
	local Button = Instance.new('ImageButton',Frame);

	Button.ZIndex = Frame.ZIndex + 10;
	Button.Size = UDim2.fromScale(1,1);
	Button.BackgroundTransparency = 1;
	Button.ImageTransparency = 1;
	Button.Image = "rbxasset://textuers/translateIcon.png";

	if Callback then
		local bth_signal = Button.MouseButton1Click:Connect(Callback);

		return bth_signal;
	end;

	return Button;
end);

NeverLose.PlayAnimate = LPH_NO_VIRTUALIZE(function(Self , Info , Property)
	local Tween = TweenService:Create(Self , Info or TweenInfo.new(0.25) , Property);

	Tween:Play();

	return Tween;
end);

function NeverLose:RollingEffect(parent)
	local UIGradient = Instance.new("UIGradient")

	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.5), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient.Parent = parent

	return UIGradient;
end;

function NeverLose:MarkLoad(LoaderFrame)
	local LoadingFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local IconFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local Icon = Instance.new("TextLabel")

	LoadingFrame.Name = NeverLose.RandomString();
	LoadingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadingFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 13)
	LoadingFrame.BackgroundTransparency = 0.500
	LoadingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingFrame.BorderSizePixel = 0
	LoadingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	LoadingFrame.Size = UDim2.new(1, 0, 1, 0)
	LoadingFrame.ZIndex = 100

	UICorner.Parent = LoadingFrame

	UIStroke.Transparency = 0.650
	UIStroke.Color = Color3.fromRGB(45, 48, 58)
	UIStroke.Parent = LoadingFrame

	IconFrame.Name = NeverLose.RandomString();
	IconFrame.Parent = LoadingFrame
	IconFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	IconFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
	IconFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IconFrame.BorderSizePixel = 0
	IconFrame.ClipsDescendants = true
	IconFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	IconFrame.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
	IconFrame.SizeConstraint = Enum.SizeConstraint.RelativeYY
	IconFrame.ZIndex = 101

	UICorner_2.Parent = IconFrame

	UIStroke_2.Transparency = 0.650
	UIStroke_2.Color = Color3.fromRGB(45, 48, 58)
	UIStroke_2.Parent = IconFrame

	Icon.Name = NeverLose.RandomString();
	Icon.Parent = IconFrame
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
	Icon.ZIndex = 102
	Icon.FontFace = NeverLose.BuiltInBold
	Icon.Text = "arrow-spin-clockwise"
	Icon.TextColor3 = Color3.fromRGB(78, 127, 252)
	Icon.TextSize = 30.000
	Icon.TextTransparency = 0.250
	Icon.TextWrapped = true

	local lib = {};

	lib.SetValue = LPH_NO_VIRTUALIZE(function(value)
		if lib.Thread then
			task.cancel(lib.Thread);
			lib.Thread = nil;
		end;

		if value then
			LoadingFrame.Parent = LoaderFrame;

			NeverLose.PlayAnimate(LoadingFrame,SlowyTween,{
				BackgroundTransparency = 0.500
			})	

			NeverLose.PlayAnimate(UIStroke,SlowyTween,{
				Transparency = 0.650
			})	

			NeverLose.PlayAnimate(IconFrame,SlowyTween,{
				BackgroundTransparency = 0,
				Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
			})	

			NeverLose.PlayAnimate(UIStroke_2,SlowyTween,{
				Transparency = 0.650
			})	

			NeverLose.PlayAnimate(Icon,SlowyTween,{
				TextTransparency = 0.250
			})	

			lib.Thread = task.spawn(function()
				while true do task.wait()
					NeverLose.PlayAnimate(Icon,SlowyTween,{
						Rotation = Icon.Rotation + 45
					})
				end;
			end);
		else
			NeverLose.PlayAnimate(LoadingFrame,SlowyTween,{
				BackgroundTransparency = 1
			})	

			NeverLose.PlayAnimate(UIStroke,SlowyTween,{
				Transparency = 1
			})	

			NeverLose.PlayAnimate(IconFrame,SlowyTween,{
				BackgroundTransparency = 1,
				Size = UDim2.new(0.15, 0, 0.15, 0)
			})	

			NeverLose.PlayAnimate(UIStroke_2,SlowyTween,{
				Transparency = 1
			})	

			NeverLose.PlayAnimate(Icon,SlowyTween,{
				TextTransparency = 1
			})	
		end;
	end);

	lib.SetValue(false);

	return lib;
end;

function NeverLose:CreateShadow(parent , RollingEffect)
	local Shadow = {};

	local UIShadowSafe85 = Instance.new("UIStroke")
	local UIShadowSafe65 = Instance.new("UIStroke")
	local UIShadowSafe50 = Instance.new("UIStroke")
	local UIShadowSafe45 = Instance.new("UIStroke")

	UIShadowSafe85.Thickness = 6.000
	UIShadowSafe85.Transparency = 1
	UIShadowSafe85.Parent = parent

	UIShadowSafe65.Thickness = 5.000
	UIShadowSafe65.Transparency = 1
	UIShadowSafe65.Parent = parent

	UIShadowSafe50.Thickness = 4.000
	UIShadowSafe50.Transparency = 1
	UIShadowSafe50.Parent = parent

	UIShadowSafe45.Thickness = 3.000
	UIShadowSafe45.Transparency = 1
	UIShadowSafe45.Parent = parent

	local RollingEffectThread;
	local r1,r2,r3,r4;

	if RollingEffect then
		r1 = NeverLose:RollingEffect(UIShadowSafe85);
		r2 = NeverLose:RollingEffect(UIShadowSafe65);
		r3 = NeverLose:RollingEffect(UIShadowSafe50);
		r4 = NeverLose:RollingEffect(UIShadowSafe45);
	end;

	Shadow.Render = LPH_NO_VIRTUALIZE(function(self , value)
		if RollingEffectThread then
			task.cancel(RollingEffectThread);
			RollingEffectThread = nil;
		end;

		if value then
			NeverLose.PlayAnimate(UIShadowSafe85 , SlowyTween , {
				Transparency = 0.900
			})

			NeverLose.PlayAnimate(UIShadowSafe65 , SlowyTween , {
				Transparency = 0.900
			})

			NeverLose.PlayAnimate(UIShadowSafe50 , SlowyTween , {
				Transparency = 0.900
			})

			NeverLose.PlayAnimate(UIShadowSafe45 , SlowyTween , {
				Transparency = 0.900
			})

			if RollingEffect then
				RollingEffectThread = task.spawn(function()
					local level = 20;
					while true do task.wait(0.025)
						NeverLose.PlayAnimate(r1 , SlowyTween , {
							Rotation = r1.Rotation + level
						});

						NeverLose.PlayAnimate(r2 , SlowyTween , {
							Rotation = r2.Rotation + level
						});

						NeverLose.PlayAnimate(r3 , SlowyTween , {
							Rotation = r3.Rotation + level
						});

						NeverLose.PlayAnimate(r4 , SlowyTween , {
							Rotation = r4.Rotation + level
						});
					end;
				end);
			end;
		else
			NeverLose.PlayAnimate(UIShadowSafe85 , SlowyTween , {
				Transparency = 1
			})

			NeverLose.PlayAnimate(UIShadowSafe65 , SlowyTween , {
				Transparency = 1
			})

			NeverLose.PlayAnimate(UIShadowSafe50 , SlowyTween , {
				Transparency = 1
			})

			NeverLose.PlayAnimate(UIShadowSafe45 , SlowyTween , {
				Transparency = 1
			})
		end;
	end);

	return Shadow;
end;

NeverLose.ProcessParams = LPH_NO_VIRTUALIZE(function(self , Params , Fixed)
	Params = Params or {};

	local k = Params or {};

	for i,v in next , Fixed do
		rawset(k,i , rawget(Params,i) or v)
	end;

	table.clear(Fixed);

	return k;
end);

function NeverLose.new(Config)
	Config = NeverLose:ProcessParams(Config , {
		Name = "Neverlose",
		Content = "Available Products",
		Process = "Script will automatically load.",
		Default = "",
		Yield = true,
		DefaultVersion = nil,
		Versions = {},
		OnGetKey = function() end,
		OnRedeem = function() end,
	});

	local LoaderLib = {};
	local LoaderFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local WindowName = Instance.new("TextLabel")
	local WindowContent = Instance.new("TextLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local SubSpace = Instance.new("Frame")
	local InputFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local TextBox = Instance.new("TextBox")
	local KeyFrame = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local Content = Instance.new("TextLabel")
	local Icon = Instance.new("TextLabel")
	local RedeemFrame = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UIStroke_3 = Instance.new("UIStroke")
	local Content_2 = Instance.new("TextLabel")
	local Icon_2 = Instance.new("TextLabel")
	local Shadow = NeverLose:CreateShadow(LoaderFrame,true);

	LoaderLib.MarkLoad = NeverLose:MarkLoad(LoaderFrame);
	LoaderLib.YieldEvent = Instance.new('BindableEvent',LoaderFrame);

	LoaderFrame.Name = "LOADER="..NeverLose.RandomString();
	LoaderFrame.Parent = NeverLose.ScreenGui
	LoaderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	LoaderFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 13)
	LoaderFrame.BackgroundTransparency = 0.055
	LoaderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoaderFrame.BorderSizePixel = 0
	LoaderFrame.ClipsDescendants = true
	LoaderFrame.Position = UDim2.new(255,255,255,255)
	LoaderFrame.Size = UDim2.new(0, 350, 0, 15)

	UICorner.Parent = LoaderFrame

	WindowName.Name = NeverLose.RandomString();
	WindowName.Parent = LoaderFrame
	WindowName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WindowName.BackgroundTransparency = 1.000
	WindowName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	WindowName.BorderSizePixel = 0
	WindowName.Position = UDim2.new(0, 15, 0, 4)
	WindowName.Size = UDim2.new(0, 200, 0, 25)
	WindowName.ZIndex = 7
	WindowName.Font = Enum.Font.GothamBold
	WindowName.Text = Config.Name
	WindowName.TextColor3 = Color3.fromRGB(255, 255, 255)
	WindowName.TextSize = 21.000
	WindowName.TextXAlignment = Enum.TextXAlignment.Left

	WindowContent.Name = NeverLose.RandomString();
	WindowContent.Parent = LoaderFrame
	WindowContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WindowContent.BackgroundTransparency = 1.000
	WindowContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
	WindowContent.BorderSizePixel = 0
	WindowContent.Position = UDim2.new(0, 15, 0, 25)
	WindowContent.Size = UDim2.new(0, 200, 0, 15)
	WindowContent.ZIndex = 7
	WindowContent.Font = Enum.Font.GothamBold
	WindowContent.Text = Config.Content
	WindowContent.TextColor3 = Color3.fromRGB(255, 255, 255)
	WindowContent.TextSize = 10.000
	WindowContent.TextTransparency = 0.650
	WindowContent.TextXAlignment = Enum.TextXAlignment.Left

	ScrollingFrame.Parent = LoaderFrame
	ScrollingFrame.Active = true
	ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0)
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.5, 0, 0, 55)
	ScrollingFrame.Size = UDim2.new(1, -20, 1, -150)
	ScrollingFrame.ZIndex = 7
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame.ScrollBarThickness = 0

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)

	SubSpace.Name = NeverLose.RandomString();
	SubSpace.Parent = ScrollingFrame
	SubSpace.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SubSpace.BackgroundTransparency = 1.000
	SubSpace.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SubSpace.BorderSizePixel = 0

	InputFrame.Name = "InputFrame"
	InputFrame.Parent = LoaderFrame
	InputFrame.AnchorPoint = Vector2.new(0.5, 1)
	InputFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
	InputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	InputFrame.BorderSizePixel = 0
	InputFrame.Position = UDim2.new(0.5, 0, 1, -55)
	InputFrame.Size = UDim2.new(1, -25, 0, 35)
	InputFrame.ZIndex = 10

	UICorner_2.Parent = InputFrame

	UIStroke.Transparency = 0.650
	UIStroke.Color = Color3.fromRGB(45, 48, 58)
	UIStroke.Parent = InputFrame

	TextBox.Parent = InputFrame
	TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextBox.Size = UDim2.new(1, -20, 0, 30)
	TextBox.ZIndex = 17
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.GothamMedium
	TextBox.PlaceholderText = "Product Key"
	TextBox.Text = Config.Default
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 11.000
	TextBox.TextTransparency = 0.350
	TextBox.TextXAlignment = Enum.TextXAlignment.Left

	KeyFrame.Name = NeverLose.RandomString();
	KeyFrame.Parent = LoaderFrame
	KeyFrame.AnchorPoint = Vector2.new(0.5, 1)
	KeyFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
	KeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	KeyFrame.BorderSizePixel = 0
	KeyFrame.Position = UDim2.new(0.25999999, 0, 1, -10)
	KeyFrame.Size = UDim2.new(0.5, -20, 0, 35)
	KeyFrame.ZIndex = 10

	UICorner_3.Parent = KeyFrame

	UIStroke_2.Transparency = 0.650
	UIStroke_2.Color = Color3.fromRGB(45, 48, 58)
	UIStroke_2.Parent = KeyFrame

	Content.Name = NeverLose.RandomString();
	Content.Parent = KeyFrame
	Content.AnchorPoint = Vector2.new(0, 0.5)
	Content.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
	Content.BackgroundTransparency = 1.000
	Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content.BorderSizePixel = 0
	Content.Position = UDim2.new(0, 35, 0.5, 0)
	Content.Size = UDim2.new(0, 1, 0, 25)
	Content.ZIndex = 17
	Content.Font = Enum.Font.GothamBold
	Content.Text = "Get Key"
	Content.TextColor3 = Color3.fromRGB(186, 186, 186)
	Content.TextSize = 15.000
	Content.TextTransparency = 0.200
	Content.TextXAlignment = Enum.TextXAlignment.Left

	Icon.Name = NeverLose.RandomString();
	Icon.Parent = KeyFrame
	Icon.AnchorPoint = Vector2.new(0, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0, 10, 0.5, 0)
	Icon.Size = UDim2.new(0, 20, 0, 20)
	Icon.ZIndex = 17
	Icon.FontFace = NeverLose.BuiltInBold
	Icon.Text = "chain-link"
	Icon.TextColor3 = Color3.fromRGB(78, 127, 252)
	Icon.TextSize = 18.000
	Icon.TextTransparency = 0.250
	Icon.TextWrapped = true

	RedeemFrame.Name = "RedeemFrame"
	RedeemFrame.Parent = LoaderFrame
	RedeemFrame.AnchorPoint = Vector2.new(0.5, 1)
	RedeemFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
	RedeemFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RedeemFrame.BorderSizePixel = 0
	RedeemFrame.Position = UDim2.new(0.74000001, 0, 1, -10)
	RedeemFrame.Size = UDim2.new(0.5, -20, 0, 35)
	RedeemFrame.ZIndex = 10

	UICorner_4.Parent = RedeemFrame

	UIStroke_3.Transparency = 0.650
	UIStroke_3.Color = Color3.fromRGB(45, 48, 58)
	UIStroke_3.Parent = RedeemFrame

	Content_2.Name = NeverLose.RandomString();
	Content_2.Parent = RedeemFrame
	Content_2.AnchorPoint = Vector2.new(0, 0.5)
	Content_2.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
	Content_2.BackgroundTransparency = 1.000
	Content_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content_2.BorderSizePixel = 0
	Content_2.Position = UDim2.new(0, 35, 0.5, 0)
	Content_2.Size = UDim2.new(0, 1, 0, 25)
	Content_2.ZIndex = 17
	Content_2.Font = Enum.Font.GothamBold
	Content_2.Text = "Login"
	Content_2.TextColor3 = Color3.fromRGB(186, 186, 186)
	Content_2.TextSize = 15.000
	Content_2.TextTransparency = 0.200
	Content_2.TextXAlignment = Enum.TextXAlignment.Left

	Icon_2.Name = NeverLose.RandomString();
	Icon_2.Parent = RedeemFrame
	Icon_2.AnchorPoint = Vector2.new(0, 0.5)
	Icon_2.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
	Icon_2.BackgroundTransparency = 1.000
	Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_2.BorderSizePixel = 0
	Icon_2.Position = UDim2.new(0, 10, 0.5, 0)
	Icon_2.Size = UDim2.new(0, 20, 0, 20)
	Icon_2.ZIndex = 17
	Icon_2.FontFace = NeverLose.BuiltInBold
	Icon_2.Text = "gift-card"
	Icon_2.TextColor3 = Color3.fromRGB(78, 127, 252)
	Icon_2.TextSize = 18.000
	Icon_2.TextTransparency = 0.250
	Icon_2.TextWrapped = true

	local VersionItems = {};
	LoaderLib.Renderer = {};

	for i,v in next , Config.Versions do
		local VersionProcess = {};

		VersionItems[v.Idx] = VersionProcess;

		local VersionFrame = Instance.new("Frame")
		local UIStroke = Instance.new("UIStroke")
		local UICorner = Instance.new("UICorner")
		local VersionContent = Instance.new("TextLabel")
		local VersionName = Instance.new("TextLabel")

		VersionFrame.Name = NeverLose.RandomString();
		VersionFrame.Parent = ScrollingFrame
		VersionFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
		VersionFrame.BackgroundTransparency = 0.050
		VersionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		VersionFrame.BorderSizePixel = 0
		VersionFrame.Size = UDim2.new(1, -10, 0, 50)
		VersionFrame.ZIndex = 15

		UIStroke.Transparency = 0.650
		UIStroke.Color = Color3.fromRGB(45, 48, 58)
		UIStroke.Parent = VersionFrame

		UICorner.Parent = VersionFrame

		VersionContent.Name = "VersionContent"
		VersionContent.Parent = VersionFrame
		VersionContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		VersionContent.BackgroundTransparency = 1.000
		VersionContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
		VersionContent.BorderSizePixel = 0
		VersionContent.Position = UDim2.new(0, 15, 0, 27)
		VersionContent.Size = UDim2.new(0, 200, 0, 15)
		VersionContent.ZIndex = 16
		VersionContent.Font = Enum.Font.GothamBold
		VersionContent.Text = v.Content
		VersionContent.TextColor3 = Color3.fromRGB(255, 255, 255)
		VersionContent.TextSize = 12.000
		VersionContent.TextTransparency = 0.650
		VersionContent.TextXAlignment = Enum.TextXAlignment.Left

		VersionName.Name = NeverLose.RandomString();
		VersionName.Parent = VersionFrame
		VersionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		VersionName.BackgroundTransparency = 1.000
		VersionName.BorderColor3 = Color3.fromRGB(0, 0, 0)
		VersionName.BorderSizePixel = 0
		VersionName.Position = UDim2.new(0, 15, 0, 4)
		VersionName.Size = UDim2.new(0, 200, 0, 25)
		VersionName.ZIndex = 16
		VersionName.Font = Enum.Font.GothamBold
		VersionName.Text = v.Name
		VersionName.TextColor3 = Color3.fromRGB(255, 255, 255)
		VersionName.TextSize = 18.000
		VersionName.TextTransparency = 0.200
		VersionName.TextXAlignment = Enum.TextXAlignment.Left;

		VersionProcess.SetRender = LPH_NO_VIRTUALIZE(function(value)
			if value then
				NeverLose.PlayAnimate(VersionFrame,SlowyTween , {
					BackgroundTransparency = 0.050
				})

				NeverLose.PlayAnimate(UIStroke,SlowyTween , {
					Transparency = 0.650
				})

				NeverLose.PlayAnimate(VersionContent,SlowyTween , {
					TextTransparency = 0.650
				})

				NeverLose.PlayAnimate(VersionName,SlowyTween , {
					TextTransparency = 0.200
				})

				VersionProcess.Match();
			else
				NeverLose.PlayAnimate(VersionFrame,SlowyTween , {
					BackgroundTransparency = 1
				})

				NeverLose.PlayAnimate(UIStroke,SlowyTween , {
					Transparency = 1
				})

				NeverLose.PlayAnimate(VersionContent,SlowyTween , {
					TextTransparency = 1
				})

				NeverLose.PlayAnimate(VersionName,SlowyTween , {
					TextTransparency = 1
				})
			end;
		end);

		table.insert(LoaderLib.Renderer,VersionProcess.SetRender);

		VersionProcess.Match = LPH_NO_VIRTUALIZE(function()
			if Config.DefaultVersion == v.Idx then
				NeverLose.PlayAnimate(VersionFrame,SlowyTween , {
					BackgroundColor3 = NeverLose.AccentColor,
					BackgroundTransparency = 0.5
				})
			else
				NeverLose.PlayAnimate(VersionFrame,SlowyTween , {
					BackgroundColor3 = Color3.fromRGB(20, 22, 27),
					BackgroundTransparency = 0.050
				})
			end;
		end);

		NeverLose:AddSignal(NeverLose:CreateInput(VersionFrame,function()
			Config.DefaultVersion = v.Idx;

			for i,v in next , VersionItems do
				v.Match();
			end;
		end))

		VersionProcess.Match();
		VersionProcess.SetRender(false);
	end;

	NeverLose:AddSignal(NeverLose:CreateInput(KeyFrame,function()
		return Config.OnGetKey();
	end))

	local ratelimit = false;
	NeverLose:AddSignal(NeverLose:CreateInput(RedeemFrame,function()
		if ratelimit then
			return;
		end;

		ratelimit = true;

		local check,rason = Config.OnRedeem(TextBox.Text);

		if check then
			TextBox.TextEditable = false;

			LoaderLib.MarkLoad.SetValue(true);

			task.wait(0.1);

			return LoaderLib.YieldEvent:Fire(Config.DefaultVersion or TextBox.Text);
		else
			if rason then
				TextBox.Text = tostring(rason);
				task.wait(0.75);
				TextBox.Text = "";
			else
				TextBox.Text = "";
			end;
		end;

		ratelimit = false;
	end))

	NeverLose:AddSignal(KeyFrame.MouseEnter:Connect(function()
		NeverLose.PlayAnimate(KeyFrame,SlowyTween,{
			BackgroundColor3 = Color3.fromRGB(35, 38, 47)
		})
	end));

	NeverLose:AddSignal(KeyFrame.MouseLeave:Connect(function()
		NeverLose.PlayAnimate(KeyFrame,SlowyTween,{
			BackgroundColor3 = Color3.fromRGB(20, 22, 27)
		})
	end));

	NeverLose:AddSignal(RedeemFrame.MouseEnter:Connect(function()
		NeverLose.PlayAnimate(RedeemFrame,SlowyTween,{
			BackgroundColor3 = Color3.fromRGB(35, 38, 47)
		})
	end));

	NeverLose:AddSignal(RedeemFrame.MouseLeave:Connect(function()
		NeverLose.PlayAnimate(RedeemFrame,SlowyTween,{
			BackgroundColor3 = Color3.fromRGB(20, 22, 27)
		})
	end));

	NeverLose:AddSignal(InputFrame.MouseEnter:Connect(function()
		NeverLose.PlayAnimate(InputFrame,SlowyTween,{
			BackgroundColor3 = Color3.fromRGB(35, 38, 47)
		})
	end));

	NeverLose:AddSignal(InputFrame.MouseLeave:Connect(function()
		NeverLose.PlayAnimate(InputFrame,SlowyTween,{
			BackgroundColor3 = Color3.fromRGB(20, 22, 27)
		})
	end));

	LoaderLib.SetRender = LPH_NO_VIRTUALIZE(function(self , value)
		if value then
			LoaderFrame.Position = UDim2.new(0.5,0,0.5,0)

			NeverLose.PlayAnimate(LoaderFrame,VSlowTween , {
				BackgroundTransparency = 0.055,
				Size = UDim2.new(0, 350, 0, UIListLayout.AbsoluteContentSize.Y + 160)
			});

			NeverLose.PlayAnimate(WindowName,SlowyTween , {
				TextTransparency = 0
			})

			NeverLose.PlayAnimate(WindowContent,SlowyTween , {
				TextTransparency = 0.650
			})

			NeverLose.PlayAnimate(InputFrame,SlowyTween , {
				BackgroundTransparency = 0.05
			})

			NeverLose.PlayAnimate(UIStroke,SlowyTween , {
				Transparency = 0.650
			})

			NeverLose.PlayAnimate(TextBox,SlowyTween , {
				TextTransparency = 0.350
			})

			NeverLose.PlayAnimate(KeyFrame,SlowyTween , {
				BackgroundTransparency = 0.05
			})

			NeverLose.PlayAnimate(UIStroke_2,SlowyTween , {
				Transparency = 0.650
			})

			NeverLose.PlayAnimate(Content,SlowyTween , {
				TextTransparency = 0.200
			})

			NeverLose.PlayAnimate(Icon,SlowyTween , {
				TextTransparency = 0.250
			})

			NeverLose.PlayAnimate(RedeemFrame,SlowyTween , {
				BackgroundTransparency = 0.05
			})

			NeverLose.PlayAnimate(UIStroke_3,SlowyTween , {
				Transparency = 0.650
			})

			NeverLose.PlayAnimate(Content_2,SlowyTween , {
				TextTransparency = 0.200
			})

			NeverLose.PlayAnimate(Icon_2,SlowyTween , {
				TextTransparency = 0.250
			})

			for i,Render in next , LoaderLib.Renderer do
				Render(true);
			end;

			Shadow:Render(true);
		else
			NeverLose.PlayAnimate(LoaderFrame,SlowyTween , {
				BackgroundTransparency = 1
			});

			NeverLose.PlayAnimate(WindowName,SlowyTween , {
				TextTransparency = 1
			})

			NeverLose.PlayAnimate(WindowContent,SlowyTween , {
				TextTransparency = 1
			})

			NeverLose.PlayAnimate(InputFrame,SlowyTween , {
				BackgroundTransparency = 1
			})

			NeverLose.PlayAnimate(UIStroke,SlowyTween , {
				Transparency = 1
			})

			NeverLose.PlayAnimate(TextBox,SlowyTween , {
				TextTransparency = 1
			})

			NeverLose.PlayAnimate(KeyFrame,SlowyTween , {
				BackgroundTransparency = 1
			})

			NeverLose.PlayAnimate(UIStroke_2,SlowyTween , {
				Transparency = 1
			})

			NeverLose.PlayAnimate(Content,SlowyTween , {
				TextTransparency = 1
			})

			NeverLose.PlayAnimate(Icon,SlowyTween , {
				TextTransparency = 1
			})

			NeverLose.PlayAnimate(RedeemFrame,SlowyTween , {
				BackgroundTransparency = 1
			})

			NeverLose.PlayAnimate(UIStroke_3,SlowyTween , {
				Transparency = 1
			})

			NeverLose.PlayAnimate(Content_2,SlowyTween , {
				TextTransparency = 1
			});

			NeverLose.PlayAnimate(Icon_2,SlowyTween , {
				TextTransparency = 1
			})

			for i,Render in next , LoaderLib.Renderer do
				Render(false);
			end;

			LoaderLib.MarkLoad.SetValue(false);
			Shadow:Render(false);
		end;
	end);

	LoaderLib:SetRender(false);

	task.delay(0.3,LoaderLib.SetRender,LoaderLib,true);

	function LoaderLib:Await()
		return LoaderLib.YieldEvent.Event:Wait();
	end;

	function LoaderLib:Unload()
		LoaderLib:SetRender(false);
		task.wait()
		task.delay(0.45,function()
			NeverLose:Unload()
		end);
		task.wait(0.3);
	end;

	return LoaderLib;
end;

function NeverLose:Unload()
	NeverLose.ScreenGui:Destroy();

	for i,v in next , NeverLose.GlobalSignals do
		pcall(v.Disconnect,v)
	end;

	table.clear(NeverLose);
end;

return NeverLose;
