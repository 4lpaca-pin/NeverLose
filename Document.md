# Neverlose UI Document
This UI isn't official port to roblox from neverlose.cc.
The source code is ready for obfuscate using Luraph.

## Using Library
```lua
local NeverLose = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/NeverLose/refs/heads/main/source.luau"))()
```
For Roblox Game
```lua
local NeverLose = require(script:WaitForChild('PATH_TO_MODULE'));
```

## Creating Notification
```lua
local Notification = NeverLose:CreateNotification();
```
Usage:
```lua
Notification.new({
	Title = "Title",
	Content = "Content",
	Duration = 7,
})
```

## Creating Logger
```lua
local Logging = NeverLose:CreateLogger();
```
Usage:
```lua
Logging.new("crosshairs",'Hit {PLAYER_NAME} in the neck for 100 damage',15)
```
## Creating Indicator
```lua
local Indicator = NeverLose:CreateIndicator();
```
Usage:
```lua
local HitChance = Indicator.new({
	Name = "HC",
	Icon = 'crosshairs',
	Color = 'Red',
})
```
Visible:
```lua
HitChance:SetRender(<boolean>)
```
Set Color:
- Red
- Green
- White
```lua
HitChance:SetColor(<string>)
```
Edit Text:
```lua
HitChance:SetText(<string>)
```

## Creating Window
```lua
local Window = NeverLose:CreateWindow({
		Logo = NeverLose.GlobalLogo,
		Name = "Neverlose",
		Content = "Counter-Strike 2",
		Size = NeverLose.Scales.Default,
		ConfigFolder = "NeverLoseConfigs",
		Enable3DRenderer = false,
		Keybind = "Insert"
});
```
## Creating Watermark
```lua
local Watermark = window:Watermark();
```
Usage:
```lua
local pings = Watermark:AddBlock(
  "chart-four-vertical-bars" , -- Icon <string>
  "0MS", -- Default Text <string>
);
```
Edit Text:
```lua
ping:SetText(tostring(game:GetService('Players').LocalPlayer:GetNetworkPing())..'MS')
```
Set Visible:
```lua
ping:SetVisible(<boolean>)
```
Add Input Signal:
```lua
ping:Input(function()
	print("click!")
end);
```
## User Settings
```lua
Window.UserSettings
```
Example:
```lua
Window.UserSettings:AddLabel('Synchronization'):AddToggle({
	Default = true,
	Callback = function(v)
		
	end,
})
```
## Set Window Size
```lua
Window:SetSize(<UDim2>)
```
## Toggle Window
```lua
Window:ToggleInterface()
```
## 3D Menu
Make sure "Enable3DRenderer" is enabled
```lua
Window:Set3DRender(<bool>)
```
## Set Profile
Set user profile ex: username , profile , expires date
```lua
Window:SetAccount({
  Profile = <string> or nil,
  Username = <string> or nil,
  Expires = <string> or nil
})
```
### Creating Tab Label
```lua
window:AddTabLabel('AIMBOT')
```
## Creating Tab
```lua
local Tab = window:AddTab({
	Icon = 'crosshairs',
	Name = "Rage",
})
```
## Creating Section
```lua
local Section = Tab:AddSection({
	Name = "MAIN"
})
```
### Creating Label
```
Text: <string> , Warp: <boolean>
```
```lua
local Label = Section:AddLabel('Label',false);
```
### Creating ToolTip
```lua
Label:ToolTip("Long Text, Something ...");
```
### Creating Toggle
```lua
Label:AddToggle({
  Default = false,
  Flag = "MyToggle",
  Callback = function(bool)
  
  end,
})
```

### Creating Slider
```lua
Label:AddSlider({
  Default = 50,
  Min = 0,
  Max = 10,
  Type = "", -- Opional
  Rounding = 0,
  
  Nums = { -- Opional
    [0] = "Off",
    [10] = "Max",
  },
  
  Flag = "MySlider",
  Size = 125, -- Size of Slider <Pixel> (Opional)
  Callback = function(value)
  
  end,,
})
```
### Creating Option
- 1 > Gear Icon
- 2 > Chevron Right Icon
```lua
Label:AddOption(<number (Opional)>)
```
Usage:
```lua
local Label = Section:AddLabel("Enabled");
Label:AddToggle({
	Default = false,
	Callback = print;
	Flag = "Ragebot",
})

local LabelOption = Label:AddOption();
LabelOption:AddLabel("Force Shoot"):AddToggle({
	Default = false,
	Callback = print,
	Flag = "FS"
})

-- LabelOption:... like section
```
### Creating Color Picker
```lua
Label:AddColorPicker({
  Default = Color3.fromRGB(255, 255, 255), -- Color 3 or Hex Code
  Flag = "MyColor",
  Callback  = function()
    
  end,
})
```
### Creating Keybind
```lua
Label:AddKeybind({
    Default = "K", -- Enum.KeyCode, String or nil
    Blacklist = {},
    Callback = function()
    end,
    Flag = "MyKeybind"
  })
```
### Creating Text Input
```lua
Label:AddTextInput({
  Default = "",
  Placeholder = "Placeholder",
  Callback = function()
  end,
  Flag = "MyText",
  Size = 100, -- Size of Textbox <Pixel> (Opional)
  Numeric = false,
})
```
### Creating Dropdown
```lua
Label:AddDropdown({
  Default = "1",
  Values = {"1","2","3","4"},
  Multi = false,
  Callback = function()
  end,
  AutoUpdate = false,
  Flag = "MySingleDropdown",
  Size = 100, -- Size of Dropdown <Pixel> (Opional)
})
```
Multiple Dropdown
```lua
Label:AddDropdown({
  Default = {
    ["1"] = true,
  },
  Values = {"1","2","3","4"},
  Multi = true,
  Callback = function()
  end,
  AutoUpdate = false,
  Flag = "MySingleDropdown",
  Size = 100, -- Size of Dropdown <Pixel> (Opional)
})
```
# Other Functions
## Get Value
Get current value of item
```lua
Element:GetValue() -> any , bool , table , something
```
## Set Value
Set value of item
```lua
Element:SetValue(<any , bool , table , something>)
```
## Set List Value
Set new item list of dropdown
```lua
Dropdown:SetValues({a,b,c,d})
```
