local _Instancenew = clonefunction(Instance.new)
local _TweenInfonew = clonefunction(TweenInfo.new)

local _GetService = clonefunction(game.GetService)
local _IsLoaded = clonefunction(game.IsLoaded)
local _Clone = clonefunction(game.Clone)
local _Destroy = clonefunction(game.Destroy)
local _GetChildren = clonefunction(game.GetChildren)
local _GetDescendants = clonefunction(game.GetDescendants)
local _IsDescendantOf = clonefunction(game.IsDescendantOf)
local _IsA = clonefunction(game.IsA)
local _FindFirstChild = clonefunction(game.FindFirstChild)
local _FindFirstChildOfClass = clonefunction(game.FindFirstChildOfClass)
local _HttpGet = clonefunction(game.HttpGet)
local _GetPropertyChangedSignal = clonefunction(game.GetPropertyChangedSignal)
local _GetAttribute = clonefunction(game.GetAttribute)

local _GetPlayers = clonefunction(_GetService(game, "Players").GetPlayers)
local _GetPlayerFromCharacter = clonefunction(_GetService(game, "Players").GetPlayerFromCharacter)
local _GetMouseLocation = clonefunction(_GetService(game, "UserInputService").GetMouseLocation)
local _IsKeyDown = clonefunction(_GetService(game, "UserInputService").IsKeyDown)
local _GetMouse = clonefunction(_GetService(game, "Players").LocalPlayer.GetMouse)
local _Kick = clonefunction(_GetService(game, "Players").LocalPlayer.Kick)

local _CFrameNew = clonefunction(CFrame.new)
local _CFrameAngles = clonefunction(CFrame.Angles)
local _CFrameLookAt = clonefunction(CFrame.lookAt)
local _CFrameLerp = clonefunction(_CFrameNew().Lerp)
local _CFramePointToObjectSpace = clonefunction(_CFrameNew().PointToObjectSpace)
local _CFrameToEulerAnglesXYZ = clonefunction(_CFrameNew().ToEulerAnglesXYZ)
local _CFrameToOrientation = clonefunction(_CFrameNew().ToOrientation)

local _Vector3New = clonefunction(Vector3.new)
local _Vector3Lerp = clonefunction(_Vector3New().Lerp)

local _Vector2New = clonefunction(Vector2.new)

local _UDim2New = clonefunction(UDim2.new)
local _UDim2fromOffset = clonefunction(UDim2.fromOffset)
local _UDimNew = clonefunction(UDim.new)

local _Color3New = clonefunction(Color3.new)
local _Color3FromRGB = clonefunction(Color3.fromRGB)
local _Color3FromHSV = clonefunction(Color3.fromHSV)
local _Color3ToHSV = clonefunction(Color3.toHSV)
local _ToHex = clonefunction(_Color3New().ToHex)
local _FromHex = clonefunction(Color3.fromHex)

local _ColorSequenceNew = clonefunction(ColorSequence.new)
local _ColorSequenceKeypointNew = clonefunction(ColorSequenceKeypoint.new)
local _NumberSequenceNew = clonefunction(NumberSequence.new)
local _NumberSequenceKeypointNew = clonefunction(NumberSequenceKeypoint.new)

local _RayNew = clonefunction(Ray.new)
local _RaycastParamsNew = clonefunction(RaycastParams.new)
local _Raycast = clonefunction(workspace.Raycast)

local _StringFormat = clonefunction(string.format)
local _StringUpper = clonefunction(string.upper)
local _StringLower = clonefunction(string.lower)
local _StringFind = clonefunction(string.find)
local _StringLen = clonefunction(string.len)
local _StringGsub = clonefunction(string.gsub)
local _StringSub = clonefunction(string.sub)
local _StringSplit = clonefunction(string.split)
local _tostring = clonefunction(tostring)

local _TableInsert = clonefunction(table.insert)
local _TableRemove = clonefunction(table.remove)
local _TableFind = clonefunction(table.find)
local _TableConcat = clonefunction(table.concat)
local _TableSort = clonefunction(table.sort)
local _TableUnpack = clonefunction(table.unpack)
local _Select = clonefunction(select)

local _MathClamp = clonefunction(math.clamp)
local _MathRandom = clonefunction(math.random)
local _MathRad = clonefunction(math.rad)
local _MathFloor = clonefunction(math.floor)
local _MathMax = clonefunction(math.max)
local _MathMin = clonefunction(math.min)
local _MathSin = clonefunction(math.sin)
local _MathCos = clonefunction(math.cos)
local _MathDeg = clonefunction(math.deg)
local _MathAtan2 = clonefunction(math.atan2)
local _Materials = Enum.Material
local _MathLerp = function(a, b, t)
    return a + (b - a) * t
end
local _tonumber = clonefunction(tonumber)

local _DebugTraceback = clonefunction(debug.traceback)

local _Tick = clonefunction(tick)
local _OsDate = clonefunction(os.date)
local _OsTime = clonefunction(os.time)

local _WorldToViewportPoint = clonefunction(_Instancenew("Camera").WorldToViewportPoint)
local _WorldToScreenPoint = clonefunction(_Instancenew("Camera").WorldToScreenPoint)

local _ChangeState = clonefunction(_Instancenew("Humanoid").ChangeState)

local _Require = clonefunction(require)
local _Type = clonefunction(type)
local _Typeof = clonefunction(typeof)
local _CoroutineWrap = clonefunction(coroutine.wrap)
local _TaskWait = clonefunction(task.wait)
local _Pcall = clonefunction(pcall)
local _Wait = clonefunction(wait)
local _TaskSpawn = clonefunction(task.spawn)

local workspaceRaycast = workspace.Raycast

repeat _TaskWait() until _IsLoaded(game)
if getgenv().Loaded ~= nil then return end

local version = "9.9.3"
local Build = "1000-7"
local LoadTick = _Tick()
local checkcalled = false

-- Core Vars
local HttpService = cloneref(_GetService(game,"HttpService"))
local InputService = cloneref(_GetService(game,"UserInputService"))
local replicatedStorage = cloneref(_GetService(game,"ReplicatedStorage"))
local Stats = cloneref(_GetService(game, "Stats"))
local TextService = cloneref(_GetService(game,"TextService"))
local Teams = cloneref(_GetService(game,"Teams"))
local Players = cloneref(_GetService(game,"Players"))
local RunService = cloneref(_GetService(game,"RunService"))
local TweenService = cloneref(_GetService(game,"TweenService"))
local executor = syn and "Synapse" or nil
local platform = "Windows"
if not executor then
    executor, platform = identifyexecutor()
end
local Lighting = cloneref(_GetService(game,"Lighting"))
local RenderStepped = RunService.RenderStepped
local LocalPlayer = Players.LocalPlayer
local camera = cloneref(workspace.CurrentCamera)
local viewportSize = camera.ViewportSize
local Mouse = _GetMouse(LocalPlayer)
local SoundService = cloneref(_GetService(game,"SoundService"))
local CoreGui = _Instancenew("ScreenGui")
local spring = loadstring(_HttpGet(game, "https://raw.githubusercontent.com/Quenty/NevermoreEngine/5a429e871d54646ba54011c18321e77afa76d657/Modules/Shared/Physics/Spring.lua"))()
local Signaling = loadstring(_HttpGet(game, "https://raw.githubusercontent.com/Quenty/NevermoreEngine/version2/Modules/Shared/Events/Signal.lua"))()
local Events = replicatedStorage:WaitForChild("Events", 1/0)
local HitPart = Events:WaitForChild("HitPart", 1/0)
local playerSpawned = Signaling.new()
local playerDied = Signaling.new()
local Crosshairs = LocalPlayer.PlayerGui.GUI.Crosshairs
local ScriptCacheFolder = _Instancenew("Folder", workspace)
ScriptCacheFolder.Name = "ScriptCacheFolder"
CoreGui.ResetOnSpawn = false

    local ProtectGui = protectgui or protect_gui or (syn and syn.protect_gui) or (function(p) 

    end);
    
    local ScreenGui = _Instancenew('ScreenGui');
    ProtectGui(ScreenGui);
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
    ScreenGui.Parent = CoreGui
    ScreenGui.DisplayOrder = 0x6fffffff
    ScreenGui.ResetOnSpawn = false
    
    local Toggles = {}
    local Options = {}
    local Flags = setmetatable({},{
        __index = function(self,value)
            if Toggles[value] ~= nil then
                return Toggles[value].Value
            elseif Options[value] ~= nil then
                local success,data = _Pcall(function()
                    return Options[value]:GetState()
                end)
                if success then
                    return data
                end
                return Options[value].Value
            end
        end
    })    
    getgenv().Toggles = Toggles
    getgenv().Options = Options
    getgenv().Flags = Flags
    
    local Library = {
        Registry = {};
        RegistryMap = {};
        HudRegistry = {};
    
        LoadingCFG = false;
        FontColor = _Color3FromRGB(245, 225, 200);
        MainColor = _Color3FromRGB(15, 15, 15);
        BackgroundColor = _Color3FromRGB(13, 13, 13);
        AccentColor = _Color3FromRGB(255, 140, 0);    
        OutlineColor = _Color3FromRGB(40, 20, 0);   
        RiskColor = _Color3FromRGB(255, 36, 36),
        
        Black = _Color3New(0, 0, 0);
        Font = Enum.Font.SourceSans,
        
        OpenedFrames = {};
        DependencyBoxes = {};
        
        Signals = {};
        ScreenGui = ScreenGui;
    };
    
    local RainbowStep = 0
    local Hue = 0
    
    _TableInsert(Library.Signals, RenderStepped:Connect(function(Delta)
        RainbowStep = RainbowStep + Delta
    
        if RainbowStep >= (1 / 60) then
            RainbowStep = 0
    
            Hue = Hue + (1 / 400);
    
            if Hue > 1 then
                Hue = 0;
            end;
    
            Library.CurrentRainbowHue = Hue;
            Library.CurrentRainbowColor = _Color3FromHSV(Hue, 0.8, 1);
        end
    end))
    
    local httpService = HttpService
    local ThemeManager = {} do
            ThemeManager.Folder = 'Raven'
            -- if not isfolder(ThemeManager.Folder) then makefolder(ThemeManager.Folder) end
        
            ThemeManager.Library = nil
	    --	    --
	    	    --
		    	    --
			    	    --
				    	    --
            ThemeManager.BuiltInThemes = {
                ['Sunset Orange Dark'] = { 1, httpService:JSONDecode('{"FontColor":"d7d7d7","OutlineColor":"422603","MainColor":"422603","BackgroundColor":"422603","AccentColor":"422603"}') },
                ['Sunset  Amoled'] = { 2, httpService:JSONDecode('{"FontColor":"d7d7d7","OutlineColor":"422603","MainColor":"422603","BackgroundColor":"422603","AccentColor":"422603"}') },
                ['Royal  Dark'] = { 7, httpService:JSONDecode('{"FontColor":"d7d7d7","OutlineColor":"422603","MainColor":"422603","BackgroundColor":"422603","AccentColor":"422603"}') },
                ['Royal Blue Amoled'] = { 8, httpService:JSONDecode('{"FontColor":"d7d7d7","OutlineColor":"422603","MainColor":"422603","BackgroundColor":"422603","AccentColor":"422603"}') },
                ['Scarlet Dark'] = { 3, httpService:JSONDecode('{"FontColor":"d7d7d7","OutlineColor":"422603","MainColor":"422603","BackgroundColor":"422603","AccentColor":"422603"}') },
                ['Scarlet Amoled'] = { 4, httpService:JSONDecode('{"FontColor":"d7d7d7","OutlineColor":"422603","MainColor":"422603","BackgroundColor":"422603","AccentColor":"422603"}') },
                ['AmethystDark'] = { 5, httpService:JSONDecode('{"FontColor":"d7d7d7","OutlineColor":"422603","MainColor":"422603","BackgroundColor":"422603","AccentColor":"422603"}') },
                ['Amethyst Amoled'] = { 6, httpService:JSONDecode('{"FontColor":"d7d7d7","OutlineColor":"422603","MainColor":"422603","BackgroundColor":"422603","AccentColor":"422603"}') },
        }
        
            function ThemeManager:ApplyTheme(theme)
                local customThemeData = self:GetCustomTheme(theme)
                local data = customThemeData or self.BuiltInThemes[theme]
        
                if not data then return end
        
                local scheme = data[2]
                for idx, col in next, customThemeData or scheme do
                    self.Library[idx] = _FromHex(col)
                    
                    if Options[idx] then
                        Options[idx]:SetValueRGB(_FromHex(col))
                    end
                end
        
                self:ThemeUpdate()
            end
        
            function ThemeManager:ThemeUpdate()
                -- This allows us to force apply themes without loading the themes tab :)
                local options = { "FontColor", "MainColor", "AccentColor", "BackgroundColor", "OutlineColor" }
                for i, field in next, options do
                    if Options and Options[field] then
                        self.Library[field] = Options[field].Value
                    end
                end
        
                self.Library.AccentColorDark = self.Library:GetDarkerColor(self.Library.AccentColor);
                self.Library.AccentColorLight = self.Library:GetLighterColor(self.Library.AccentColor);
                self.Library.FontColorDark = self.Library:GetDarkerColor(self.Library.FontColor);
                self.Library.MainColorLight = self.Library:GetLighterColor(self.Library.MainColor);
                self.Library:UpdateColorsUsingRegistry()
            end
        
            function ThemeManager:LoadDefault()		
                local theme = 'Default'
                local content = isfile(self.Folder .. '/themes/default.txt') and readfile(self.Folder .. '/themes/default.txt')
        
                local isDefault = true
                if content then
                    if self.BuiltInThemes[content] then
                        theme = content
                    elseif self:GetCustomTheme(content) then
                        theme = content
                        isDefault = false;
                    end
                elseif self.BuiltInThemes[self.DefaultTheme] then
                    theme = self.DefaultTheme
                end
        
                if isDefault then
                    Options.ThemeManager_ThemeList:SetValue(theme)
                else
                    self:ApplyTheme(theme)
                end
            end
        
            function ThemeManager:SaveDefault(theme)
                writefile(self.Folder .. '/themes/default.txt', theme)
            end
        
            function ThemeManager:CreateThemeManager(groupbox)
                groupbox:AddLabel('Background color'):AddColorPicker('BackgroundColor', { Default = self.Library.BackgroundColor });
                groupbox:AddLabel('Main color')	:AddColorPicker('MainColor', { Default = self.Library.MainColor });
                groupbox:AddLabel('Accent color'):AddColorPicker('AccentColor', { Default = self.Library.AccentColor });
                groupbox:AddLabel('Outline color'):AddColorPicker('OutlineColor', { Default = self.Library.OutlineColor });
                groupbox:AddLabel('Font color')	:AddColorPicker('FontColor', { Default = self.Library.FontColor });
        
                local ThemesArray = {}
                for Name, Theme in next, self.BuiltInThemes do
                    _TableInsert(ThemesArray, Name)
                end
        
                _TableSort(ThemesArray, function(a, b) return self.BuiltInThemes[a][1] < self.BuiltInThemes[b][1] end)
        
                groupbox:AddDivider()
                groupbox:AddDropdown('ThemeManager_ThemeList', { Text = 'Theme list', Values = ThemesArray, Default = 1 })
        
                groupbox:AddButton('Set as default', function()
                    self:SaveDefault(Options.ThemeManager_ThemeList.Value)
                    self.Library:Notify(_StringFormat('Set default theme to %q', Options.ThemeManager_ThemeList.Value))
                end)
        
                Options.ThemeManager_ThemeList:OnChanged(function()
                    self:ApplyTheme(Options.ThemeManager_ThemeList.Value)
                end)
        
                groupbox:AddDivider()
                groupbox:AddInput('ThemeManager_CustomThemeName', { Text = 'Custom theme name' })
                groupbox:AddDropdown('ThemeManager_CustomThemeList', { Text = 'Custom themes', Values = self:ReloadCustomThemes(), AllowNull = true, Default = 1 })
                groupbox:AddDivider()
                
                groupbox:AddButton('Save theme', function() 
                    self:SaveCustomTheme(Options.ThemeManager_CustomThemeName.Value)
        
                    Options.ThemeManager_CustomThemeList:SetValues(self:ReloadCustomThemes())
                    Options.ThemeManager_CustomThemeList:SetValue(nil)
                end):AddButton('Load theme', function() 
                    self:ApplyTheme(Options.ThemeManager_CustomThemeList.Value) 
                end)
        
                groupbox:AddButton('Refresh list', function()
                    Options.ThemeManager_CustomThemeList:SetValues(self:ReloadCustomThemes())
                    Options.ThemeManager_CustomThemeList:SetValue(nil)
                end)
        
                groupbox:AddButton('Set as default', function()
                    if Options.ThemeManager_CustomThemeList.Value ~= nil and Options.ThemeManager_CustomThemeList.Value ~= '' then
                        self:SaveDefault(Options.ThemeManager_CustomThemeList.Value)
                        self.Library:Notify(_StringFormat('Set default theme to %q', Options.ThemeManager_CustomThemeList.Value))
                    end
                end)
        
                ThemeManager:LoadDefault()
        
                local function UpdateTheme()
                    self:ThemeUpdate()
                end
        
                Options.BackgroundColor:OnChanged(UpdateTheme)
                Options.MainColor:OnChanged(UpdateTheme)
                Options.AccentColor:OnChanged(UpdateTheme)
                Options.OutlineColor:OnChanged(UpdateTheme)
                Options.FontColor:OnChanged(UpdateTheme)
            end
        
            function ThemeManager:GetCustomTheme(file)
                local path = self.Folder .. '/themes/' .. file
                if not isfile(path) then
                    return nil
                end
        
                local data = readfile(path)
                local success, decoded = _Pcall(httpService.JSONDecode, httpService, data)
                
                if not success then
                    return nil
                end
        
                return decoded
            end
        
            function ThemeManager:SaveCustomTheme(file)
                if _StringGsub(file, ' ', '') == '' then
                    return self.Library:Notify('Invalid file name for theme (empty)', 3)
                end
        
                local theme = {}
                local fields = { "FontColor", "MainColor", "AccentColor", "BackgroundColor", "OutlineColor" }
        
                for _, field in next, fields do
                    theme[field] = _ToHex(Options[field].Value)
                end
        
                writefile(self.Folder .. '/themes/' .. file .. '.json', httpService:JSONEncode(theme))
            end
        
            function ThemeManager:ReloadCustomThemes()
                local list = listfiles(self.Folder .. '/themes')
        
                local out = {}
                for i = 1, #list do
                    local file = list[i]
                    if file:sub(-5) == '.json' then
                        -- i hate this but it has to be done ...
        
                        local pos = _StringFind(file, '.json', 1, true)
                        local char = file:sub(pos, pos)
        
                        while char ~= '/' and char ~= '\\' and char ~= '' do
                            pos = pos - 1
                            char = file:sub(pos, pos)
                        end
        
                        if char == '/' or char == '\\' then
                            _TableInsert(out, file:sub(pos + 1))
                        end
                    end
                end
        
                return out
            end
        
            function ThemeManager:SetLibrary(lib)
                self.Library = lib
            end
        
            function ThemeManager:BuildFolderTree()
                local paths = {}
        
                -- build the entire tree if a path is like some-hub/phantom-forces
                -- makefolder builds the entire tree on Synapse X but not other exploits
        
                local parts = _StringSplit(self.Folder, '/')
                for idx = 1, #parts do
                    paths[#paths + 1] = _TableConcat(parts, '/', 1, idx)
                end
        
                _TableInsert(paths, self.Folder .. '/themes')
                _TableInsert(paths, self.Folder .. '/settings')
        
                for i = 1, #paths do
                    local str = paths[i]
                    if not isfolder(str) then
                        makefolder(str)
                    end
                end
            end
        
            function ThemeManager:SetFolder(folder)
                self.Folder = folder
                self:BuildFolderTree()
            end
        
            function ThemeManager:CreateGroupBox(tab)
                assert(self.Library, 'Must set ThemeManager.Library first!')
                return tab:AddLeftGroupbox('Themes')
            end
        
            function ThemeManager:ApplyToTab(tab)
                assert(self.Library, 'Must set ThemeManager.Library first!')
                local groupbox = self:CreateGroupBox(tab)
                self:CreateThemeManager(groupbox)
            end
        
            function ThemeManager:ApplyToGroupbox(groupbox)
                assert(self.Library, 'Must set ThemeManager.Library first!')
                self:CreateThemeManager(groupbox)
            end
        
            ThemeManager:BuildFolderTree()
        end
        getgenv().ThemeManager = ThemeManager
    
    
    local SaveManager = {} do
            SaveManager.Folder = 'Raven'
            SaveManager.Ignore = {}
            SaveManager.Parser = {
                Toggle = {
                    Save = function(idx, object) 
                        return { type = 'Toggle', idx = idx, value = object.Value } 
                    end,
                    Load = function(idx, data)
                        if Toggles[idx] then 
                            Toggles[idx]:SetValue(data.value)
                        end
                    end,
                },
                Slider = {
                    Save = function(idx, object)
                        return { type = 'Slider', idx = idx, value = _tostring(object.Value) }
                    end,
                    Load = function(idx, data)
                        if Options[idx] then 
                            Options[idx]:SetValue(data.value)
                        end
                    end,
                },
                Dropdown = {
                    Save = function(idx, object)
                        return { type = 'Dropdown', idx = idx, value = object.Value, mutli = object.Multi }
                    end,
                    Load = function(idx, data)
                        if Options[idx] then 
                            Options[idx]:SetValue(data.value)
                        end
                    end,
                },
                ColorPicker = {
                    Save = function(idx, object)
                        return { type = 'ColorPicker', idx = idx, value = _ToHex(object.Value), transparency = object.Transparency }
                    end,
                    Load = function(idx, data)
                        if Options[idx] then 
                            Options[idx]:SetValueRGB(_FromHex(data.value), data.transparency)
                        end
                    end,
                },
                KeyPicker = {
                    Save = function(idx, object)
                        return { type = 'KeyPicker', idx = idx, mode = object.Mode, key = object.Value }
                    end,
                    Load = function(idx, data)
                        if Options[idx] then 
                            Options[idx]:SetValue({ data.key, data.mode })
                        end
                    end,
                },
        
                Input = {
                    Save = function(idx, object)
                        return { type = 'Input', idx = idx, text = object.Value }
                    end,
                    Load = function(idx, data)
                        if Options[idx] and _Type(data.text) == 'string' then
                            Options[idx]:SetValue(data.text)
                        end
                    end,
                },
            }
        
            function SaveManager:SetIgnoreIndexes(list)
                for _, key in next, list do
                    self.Ignore[key] = true
                end
            end
        
            function SaveManager:SetFolder(folder)
                self.Folder = folder;
                self:BuildFolderTree()
            end
        
            function SaveManager:Save(name)
                if (not name) then
                    return false, 'no config file is selected'
                end
        
                local fullPath = self.Folder .. '/settings/' .. name .. '.json'
        
                local data = {
                    objects = {}
                }
        
                for idx, toggle in next, Toggles do
                    if self.Ignore[idx] then continue end
        
                    _TableInsert(data.objects, self.Parser[toggle.Type].Save(idx, toggle))
                end
        
                for idx, option in next, Options do
                    if not self.Parser[option.Type] then continue end
                    if self.Ignore[idx] then continue end
        
                    _TableInsert(data.objects, self.Parser[option.Type].Save(idx, option))
                end	
        
                local success, encoded = _Pcall(httpService.JSONEncode, httpService, data)
                if not success then
                    return false, 'failed to encode data'
                end
        
                writefile(fullPath, encoded)
                return true
            end
        
            function SaveManager:Load(name)
                if (not name) then
                    return false, 'no config file is selected'
                end
                
                local file = self.Folder .. '/settings/' .. name .. '.json'
                if not isfile(file) then return false, 'invalid file' end
        
                local success, decoded = _Pcall(httpService.JSONDecode, httpService, readfile(file))
                if not success then return false, 'decode error' end
                
                Library.LoadingCFG = true
                for _, option in next, decoded.objects do _TaskWait()
                    if self.Parser[option.type] then
                        _TaskSpawn(function()                             
                            self.Parser[option.type].Load(option.idx, option) 
                        end) -- _TaskSpawn() so the config loading wont get stuck.
                    end
                end
                
                Library.LoadingCFG = false
                return true
            end
            function SaveManager:LoadTemp()
                
                local file = self.Folder .. '/TempLoad.json'
                if not isfile(file) then return false, 'invalid file' end
                
                local success, decoded = _Pcall(httpService.JSONDecode, httpService, readfile(file))
                if not success then return false, 'decode error' end
                
                Library.LoadingCFG = true
                for _, option in next, decoded.objects do _TaskWait()
                    if self.Parser[option.type] then
                        _TaskSpawn(function()                             
                            self.Parser[option.type].Load(option.idx, option) 
                        end) -- _TaskSpawn() so the config loading wont get stuck.
                    end
                end
                delfile(file)
                Library.LoadingCFG = false
                return true
            end
            function SaveManager:SaveTemp()                
                local fullPath = self.Folder .. '/TempLoad.json'                

                local data = {
                    objects = {}
                }
        
                for idx, toggle in next, Toggles do
                    if self.Ignore[idx] then continue end
        
                    _TableInsert(data.objects, self.Parser[toggle.Type].Save(idx, toggle))
                end
        
                for idx, option in next, Options do
                    if not self.Parser[option.Type] then continue end
                    if self.Ignore[idx] then continue end
        
                    _TableInsert(data.objects, self.Parser[option.Type].Save(idx, option))
                end	
        
                local success, encoded = _Pcall(httpService.JSONEncode, httpService, data)
                if not success then
                    return false, 'failed to encode data'
                end
        
                writefile(fullPath, encoded)
                return true
            end

            function SaveManager:Remove(name)
                if (not name) then
                    return false, 'no config file is selected'
                end
                
                local file = self.Folder .. '/settings/' .. name .. '.json'
                if not isfile(file) then return false, 'invalid file' end
                delfile(file)
        
                return true
            end
        
            function SaveManager:IgnoreThemeSettings()
                self:SetIgnoreIndexes({ 
                    "BackgroundColor", "MainColor", "AccentColor", "OutlineColor", "FontColor", -- themes
                    "ThemeManager_ThemeList", 'ThemeManager_CustomThemeList', 'ThemeManager_CustomThemeName', -- themes
                })
            end
        
            function SaveManager:BuildFolderTree()
                local paths = {
                    self.Folder,
                    self.Folder .. '/settings'
                }
        
                for i = 1, #paths do
                    local str = paths[i]
                    if not isfolder(str) then
                        makefolder(str)
                    end
                end
            end
        
            function SaveManager:RefreshConfigList()
                local list = listfiles(self.Folder .. '/settings')
        
                local out = {}
                for i = 1, #list do
                    local file = list[i]
                    if file:sub(-5) == '.json' then
                        -- i hate this but it has to be done ...

                        local pos = _StringFind(file, '.json', 1, true)
                        local start = pos
        
                        local char = file:sub(pos, pos)
                        while char ~= '/' and char ~= '\\' and char ~= '' do
                            pos = pos - 1
                            char = file:sub(pos, pos)
                        end
        
                        if char == '/' or char == '\\' then
                            _TableInsert(out, file:sub(pos + 1, start - 1))
                        end
                    end
                end
                
                return out
            end
        
            function SaveManager:SetLibrary(library)
                self.Library = library
            end
        
            function SaveManager:BuildConfigSection(tab)
                assert(self.Library, 'Must set SaveManager.Library')
        
                local section = tab:AddRightGroupbox('Configuration')
        
                section:AddInput('SaveManager_ConfigName',    { Text = 'Config name' })
                section:AddDropdown('SaveManager_ConfigList', { Text = 'Config list', Values = self:RefreshConfigList(), AllowNull = true })
        
                section:AddDivider()
        
                section:AddButton({Text = "Create config", DoubleClick = true, Func = function()
                    local name = Options.SaveManager_ConfigName.Value
        
                    if _StringGsub(name, ' ', '') == '' then 
                        return self.Library:Notify('Invalid config name (empty)', 2)
                    end
        
                    local success, err = self:Save(name)
                    if not success then
                        return self.Library:Notify('Failed to save config: ' .. err)
                    end
        
                    self.Library:Notify(_StringFormat('Created config %q', name))
        
                    Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
                    Options.SaveManager_ConfigList:SetValue(nil)
                end}):AddButton({Text = "Load config", DoubleClick = true, Func = function()
                    local name = Options.SaveManager_ConfigList.Value
        
                    local success, err = self:Load(name)
                    if not success then
                        return self.Library:Notify('Failed to load config: ' .. err)
                    end
        
                    self.Library:Notify(_StringFormat('Loaded config %q', name))
                end})
        
                section:AddButton({Text = "Save config", DoubleClick = true, Func = function()
                    local name = Options.SaveManager_ConfigList.Value
        
                    local success, err = self:Save(name)
                    if not success then
                        return self.Library:Notify('Failed to Save config: ' .. err)
                    end
        
                    self.Library:Notify(_StringFormat('Save config %q', name))
                end}):AddButton({Text = "Remove config", DoubleClick = true, Func = function()
                    local name = Options.SaveManager_ConfigList.Value
                    
                    local success, err = self:Remove(name)
                    if not success then
                        return self.Library:Notify('Failed to Remove config: ' .. err)
                    end
    
                    self.Library:Notify(_StringFormat('Removed config %q', name))
                    Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
                    Options.SaveManager_ConfigList:SetValue(nil)
                end})
                section:AddButton({Text = "Load Latest Config", DoubleClick = true, Func = function()
                    SaveManager:LoadTemp()
                end})
        
                section:AddButton('Refresh list', function()
                    Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
                    Options.SaveManager_ConfigList:SetValue(nil)
                end)
        
                SaveManager:SetIgnoreIndexes({ 'SaveManager_ConfigList', 'SaveManager_ConfigName' })
            end
        
            SaveManager:BuildFolderTree()
        end
        getgenv().SaveManager = SaveManager
    
    local EspPreviewManager = {Window = nil, VisualsTab = nil, MainFrame = nil, CanRender = false} do
            function EspPreviewManager:CreateCharacter()
                local PlayerModel = _Instancenew("Model")

                local Humanoid = _Instancenew("Humanoid")
                Humanoid.Parent = PlayerModel
                Humanoid.Health = 100
                Humanoid.MaxHealth = 100
                Humanoid.DisplayName = "\1"

                local HumanoidRootPart = _Instancenew("Part")
                HumanoidRootPart.Parent = PlayerModel
                HumanoidRootPart.Transparency = 1
                HumanoidRootPart.Anchored = true
                HumanoidRootPart.Name = "HumanoidRootPart"
                HumanoidRootPart.Size = _Vector3New(2, 2, 1)
                PlayerModel.PrimaryPart = HumanoidRootPart

                local Head = _Instancenew("Part")
                Head.Parent = PlayerModel
                Head.Anchored = true
                Head.Name = "Head"
                Head.Size = _Vector3New(2, 1, 1)
                Head.Position = HumanoidRootPart.Position + _Vector3New(0,1.5,0)
                local Face = _Instancenew("Decal")
                Face.Face = "Front"
                Face.Name = "face"
                Face.Texture = "rbxasset://textures/face.png"
                Face.Parent = Head

                local Mesh = _Instancenew("SpecialMesh")
                Mesh.Name = "Mesh"
                Mesh.Scale = _Vector3New(1.25, 1.25, 1.25)
                Mesh.MeshType = Enum.MeshType.Head
                Mesh.Parent = Head

                local Torso = _Instancenew("Part")
                Torso.Parent = PlayerModel
                Torso.Anchored = true
                Torso.Name = "Torso"
                Torso.Size = _Vector3New(2, 2, 1)
                Torso.Position = HumanoidRootPart.Position

                
                local LeftLeg = _Instancenew("Part")
                LeftLeg.Parent = PlayerModel
                LeftLeg.Anchored = true
                LeftLeg.Name = "Left Leg"
                LeftLeg.Size = _Vector3New(1, 2, 1)
                LeftLeg.Position = HumanoidRootPart.Position + _Vector3New(-0.5, -2, 0)
                local RightLeg = _Instancenew("Part")
                RightLeg.Parent = PlayerModel
                RightLeg.Anchored = true
                RightLeg.Name = "Right Leg"
                RightLeg.Size = _Vector3New(1, 2, 1)
                RightLeg.Position = HumanoidRootPart.Position + _Vector3New(0.5, -2, 0)

                local LeftArm = _Instancenew("Part")
                LeftArm.Parent = PlayerModel
                LeftArm.Anchored = true
                LeftArm.Name = "Left Arm"
                LeftArm.Size = _Vector3New(1, 2, 1)
                LeftArm.Position = HumanoidRootPart.Position + _Vector3New(-1.5, 0, 0)
                local RightArm = _Instancenew("Part")
                RightArm.Parent = PlayerModel
                RightArm.Anchored = true
                RightArm.Name = "Right Arm"
                RightArm.Size = _Vector3New(1, 2, 1)
                RightArm.Position = HumanoidRootPart.Position + _Vector3New(1.5, 0, 0)

                return PlayerModel
            end
            function EspPreviewManager:Init(Window, VisualsTab)
                EspPreviewManager.Window = Window
                EspPreviewManager.VisualsTab = VisualsTab
                local Character = EspPreviewManager:CreateCharacter()
                Character.Name = "Dummy"
                local FakePlayer = {
                    Name = "Dummy",
                    FakePlayer = true;
                    Character = Character,
                    Team = _Instancenew("Team"),
                    Parent = Players,
                }

                local MainFrame = Library:Create('Frame', {
                    BackgroundColor3 = Library.MainColor;
                    BorderColor3 = Library.AccentColor;
                    BorderMode = Enum.BorderMode.Inset;
                    Position = _UDim2New(1, 25, 0, 0);
                    Size = _UDim2New(0.4, -2, 0.6, 0);
                    ZIndex = 1;
                    Parent = Window.MainFrame;
                });
                EspPreviewManager.MainFrame = MainFrame
                
                Library:AddToRegistry(MainFrame, {
                    BackgroundColor3 = 'MainColor';
                    BorderColor3 = 'AccentColor';
                });

                local ViewPort = Library:Create('ViewportFrame', {
                    BackgroundTransparency = 1;
                    Parent = MainFrame;
                    Visible = true;
                    Size = _UDim2New(1,0,1,0);
                });

                local CurrentCamera = Library:Create('Camera', {
                    Parent = ViewPort;
                    CFrame = _CFrameNew();
                });
                ViewPort.CurrentCamera = CurrentCamera
                Character.Parent = ViewPort
                Character:SetPrimaryPartCFrame(_CFrameNew(0,0.5,-6.25) * _CFrameAngles(0,_MathRad(180),0))

                Library:AddSignal(RunService.PreRender, function()
                    if VisualsTab.MainFrame.Visible and Window.MainFrame.Visible then
                        MainFrame.Visible = true
                    else
                        MainFrame.Visible = false
                    end
                    EspPreviewManager.CanRender = VisualsTab.MainFrame.Visible and Window.MainFrame.Visible
                end)
                return FakePlayer
            end
        end
        getgenv().EspPreviewManager = EspPreviewManager

    local function GetPlayersString()
        local PlayerList = _GetPlayers(Players);
        for i = 1, #PlayerList do
            PlayerList[i] = PlayerList[i].Name
        end;
    
        _TableSort(PlayerList, function(str1, str2) return str1 < str2 end);
    
        return PlayerList;
    end;
    
    local function GetTeamsString()
        local TeamList = Teams:GetTeams();
    
        for i = 1, #TeamList do
            TeamList[i] = TeamList[i].Name;
        end;
    
        _TableSort(TeamList, function(str1, str2) return str1 < str2 end);
        
        return TeamList;
    end;
    
    function Library:SafeCallback(f, ...)
        if (not f) then
            return;
        end;
    
        if not Library.NotifyOnError then
            return f(...);
        end;
    
        local success, event = _Pcall(f, ...);
    
        if not success then
            local _, i = _StringFind(event, ":%d+: ");
    
            if not i then
                return Library:Notify(event);
            end;
    
            return Library:Notify(event:sub(i + 1), 3);
        end;
    end;
    
    function Library:AttemptSave()
        if Library.SaveManager then
            Library.SaveManager:Save();
        end;
    end;
    
    function Library:Create(Class, Properties)
        local _Instance = Class;
    
        if _Type(Class) == 'string' then
            _Instance = _Instancenew(Class);
        end;
    
        for Property, Value in next, Properties do
            _Instance[Property] = Value;
        end;
    
        return _Instance;
    end;
    
    function Library:ApplyTextStroke(Inst)
        Inst.TextStrokeTransparency = 1;
    
        Library:Create('UIStroke', {
            Color = _Color3New(0, 0, 0);
            Thickness = 1;
            LineJoinMode = Enum.LineJoinMode.Miter;
            Parent = Inst;
        });
    end;
    
    function Library:CreateLabel(Properties, IsHud)
        local _Instance = Library:Create('TextLabel', {
            BackgroundTransparency = 1;
            Font = Library.Font;
            TextColor3 = Library.FontColor;
            TextSize = 16;
            TextStrokeTransparency = 1;
        });
    
        Library:AddToRegistry(_Instance, {
            TextColor3 = 'FontColor';
        }, IsHud);
    
        return Library:Create(_Instance, Properties);
    end;
    
    function Library:MakeDraggable(Instance, Cutoff, Perfomance)
        if not Perfomance then
            Instance.Active = true
        
            local LatestPosition = nil
            local LatestDrag = nil
    
            Instance.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local ObjPos = _Vector2New(
                        Mouse.X - Instance.AbsolutePosition.X,
                        Mouse.Y - Instance.AbsolutePosition.Y
                    );
                    
                    if ObjPos.Y > (Cutoff or 40) then
                        return
                    end
                    
                    while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        Instance.Position = _UDim2New(
                            0,
                            Mouse.X - ObjPos.X + (Instance.Size.X.Offset * Instance.AnchorPoint.X),
                            0,
                            Mouse.Y - ObjPos.Y + (Instance.Size.Y.Offset * Instance.AnchorPoint.Y)
                        );
                        
                        _Wait()
                    end
                end
            end) 
        else
            Perfomance.Active = true
            Instance.Active = true
    
            local LatestDrag = nil
    
            Instance.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local ObjPos = _Vector2New(
                        Mouse.X - Perfomance.AbsolutePosition.X,
                        Mouse.Y - Perfomance.AbsolutePosition.Y
                    );
                    
                    if ObjPos.Y > (Cutoff or 40) then
                        return
                    end
                    
                    while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        Perfomance.Position = _UDim2New(
                            0,
                            Mouse.X - ObjPos.X + (Perfomance.Size.X.Offset * Perfomance.AnchorPoint.X),
                            0,
                            Mouse.Y - ObjPos.Y + (Perfomance.Size.Y.Offset * Perfomance.AnchorPoint.Y)
                        )
                        Perfomance.Visible = true
                        LatestDrag = Perfomance.Position
                        
                        _Wait()
                    end
                end
            end)
            Instance.InputEnded:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 and LatestDrag then 
                    Perfomance.Visible = false                   
                    Instance.Position = LatestDrag
                end
            end)
        end
        --[[Instance.InputEnded:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                local ObjPos = _Vector2New(
                    Mouse.X - Instance.AbsolutePosition.X,
                    Mouse.Y - Instance.AbsolutePosition.Y
                );
    
                if ObjPos.Y > (Cutoff or 40) then
                    return;
                end;
                
                Instance.Position = LatestDrag
                RenderStepped:Wait();
            end;
        end)]]
    end;
    
    function Library:AddToolTip(InfoStr, HoverInstance)
        -- Tamanho máximo antes de quebrar o texto em uma nova linha
        local MaxWidth = 200
    
        -- Obter o tamanho do texto
        local X, Y = Library:GetTextBounds(InfoStr, Library.Font, 15)
    
        -- Ajusta o texto se ultrapassar o tamanho máximo permitido
        if X > MaxWidth then
            InfoStr = Library:BreakTextIntoLines(InfoStr, MaxWidth, Library.Font, 15) -- Função que quebra o texto
            X, Y = Library:GetTextBounds(InfoStr, Library.Font, 15) -- Recalcula os tamanhos após a quebra
        end
    
        local Tooltip = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor,
            BorderColor3 = Library.OutlineColor,
            Size = _UDim2fromOffset(X + 8, Y + 4),
            ZIndex = 100,
            Parent = Library.ScreenGui,
            Visible = false,
        })
    
        local Label = Library:CreateLabel({
            Position = _UDim2fromOffset(3, 1),
            Size = _UDim2fromOffset(X, Y),
            TextSize = 15,
            Text = InfoStr,
            TextColor3 = Library.FontColor,
            TextXAlignment = Enum.TextXAlignment.Center,
            ZIndex = Tooltip.ZIndex + 1,
            Parent = Tooltip,
        })
    
        Library:AddToRegistry(Tooltip, {
            BackgroundColor3 = 'MainColor',
            BorderColor3 = 'OutlineColor',
        })
    
        Library:AddToRegistry(Label, {
            TextColor3 = 'FontColor',
        })
    
        local IsHovering = false
        local TooltipVisible = false
    
        HoverInstance.MouseEnter:Connect(function()
            if Library:MouseIsOverOpenedFrame() then
                return
            end
    
            IsHovering = true
    
            -- Aguarda o delay de 2 segundos antes de exibir o tooltip
            task.delay(1, function()
                if IsHovering then
                    Tooltip.Position = _UDim2fromOffset(Mouse.X + 15, Mouse.Y + 12)
                    Tooltip.Visible = true
                    TooltipVisible = true
                end
            end)
    
            -- Atualiza a posição do tooltip enquanto o mouse estiver sobre o objeto
            while IsHovering do
                RunService.Heartbeat:Wait()
                Tooltip.Position = _UDim2fromOffset(Mouse.X + 15, Mouse.Y + 12)
            end
        end)
    
        HoverInstance.MouseLeave:Connect(function()
            IsHovering = false
            Tooltip.Visible = false
            TooltipVisible = false
        end)
    end
    
    -- Função auxiliar para quebrar o texto em várias linhas
    function Library:BreakTextIntoLines(text, maxWidth, font, textSize)
        local result = ""
        local currentLine = ""
    
        for word in string.gmatch(text, "%S+") do
            local testLine = currentLine == "" and word or currentLine .. " " .. word
            local lineWidth = Library:GetTextBounds(testLine, font, textSize)
    
            if lineWidth > maxWidth then
                result = result .. (result == "" and currentLine or "\n" .. currentLine)
                currentLine = word
            else
                currentLine = testLine
            end
        end
    
        if currentLine ~= "" then
            result = result .. (result == "" and currentLine or "\n" .. currentLine)
        end
    
        return result
    end
    
    function Library:OnHighlight(HighlightInstance, Instance, Properties, PropertiesDefault)
        HighlightInstance.MouseEnter:Connect(function()
            local Reg = Library.RegistryMap[Instance];
    
            for Property, ColorIdx in next, Properties do
                Instance[Property] = Library[ColorIdx] or ColorIdx;
    
                if Reg and Reg.Properties[Property] then
                    Reg.Properties[Property] = ColorIdx;
                end;
            end;
        end)
    
        HighlightInstance.MouseLeave:Connect(function()
            local Reg = Library.RegistryMap[Instance];
    
            for Property, ColorIdx in next, PropertiesDefault do
                Instance[Property] = Library[ColorIdx] or ColorIdx;
    
                if Reg and Reg.Properties[Property] then
                    Reg.Properties[Property] = ColorIdx;
                end;
            end;
        end)
    end;
    
    function Library:MouseIsOverOpenedFrame()
        for Frame, _ in next, Library.OpenedFrames do
            local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize;
    
            if Mouse.X >= AbsPos.X and Mouse.X <= AbsPos.X + AbsSize.X
                and Mouse.Y >= AbsPos.Y and Mouse.Y <= AbsPos.Y + AbsSize.Y then
    
                return true;
            end;
        end;
    end;
    
    function Library:IsMouseOverFrame(Frame)
        local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize;
    
        if Mouse.X >= AbsPos.X and Mouse.X <= AbsPos.X + AbsSize.X
            and Mouse.Y >= AbsPos.Y and Mouse.Y <= AbsPos.Y + AbsSize.Y then
    
            return true;
        end;
    end;
    
    function Library:UpdateDependencyBoxes()
        for _, Depbox in next, Library.DependencyBoxes do
            Depbox:Update();
        end;
    end;
    
    function Library:MapValue(Value, MinA, MaxA, MinB, MaxB)
        return (1 - ((Value - MinA) / (MaxA - MinA))) * MinB + ((Value - MinA) / (MaxA - MinA)) * MaxB;
    end;
    
    function Library:GetTextBounds(Text, Font, Size, Resolution)
        local Bounds = TextService:GetTextSize(Text, Size, Font, Resolution or _Vector2New(camera.ViewportSize.X, camera.ViewportSize.Y))
        return Bounds.X, Bounds.Y
    end;
    
    function Library:GetDarkerColor(Color)
        local H, S, V = _Color3ToHSV(Color);
        return _Color3FromHSV(H, S, V / 2.5);
    end;
    
    function Library:GetLighterColor(Color)
        local H, S, V = _Color3ToHSV(Color);
        V = _MathClamp(V * 1.5, 0, 1);
        return _Color3FromHSV(H, S, V);
    end;
    
    Library.AccentColorDark = Library:GetDarkerColor(Library.AccentColor);
    Library.AccentColorLight = Library:GetLighterColor(Library.AccentColor);
    Library.FontColorDark = Library:GetDarkerColor(Library.FontColor);
    Library.MainColorLight = Library:GetLighterColor(Library.MainColor);

    function Library:AddToRegistry(Instance, Properties, IsHud)
        local Idx = #Library.Registry + 1;
        local Data = {
            Instance = Instance;
            Properties = Properties;
            Idx = Idx;
        };
    
        _TableInsert(Library.Registry, Data);
        Library.RegistryMap[Instance] = Data;
    
        if IsHud then
            _TableInsert(Library.HudRegistry, Data);
        end;
    end;
    
    function Library:RemoveFromRegistry(Instance)
        local Data = Library.RegistryMap[Instance];
    
        if Data then
            for Idx = #Library.Registry, 1, -1 do
                if Library.Registry[Idx] == Data then
                    _TableRemove(Library.Registry, Idx);
                end;
            end;
    
            for Idx = #Library.HudRegistry, 1, -1 do
                if Library.HudRegistry[Idx] == Data then
                    _TableRemove(Library.HudRegistry, Idx);
                end;
            end;
    
            Library.RegistryMap[Instance] = nil;
        end;
    end;
    
    function Library:UpdateColorsUsingRegistry()
        -- TODO: Could have an 'active' list of objects
        -- where the active list only contains Visible objects.
    
        -- IMPL: Could setup .Changed events on the AddToRegistry function
        -- that listens for the 'Visible' propert being changed.
        -- Visible: true => Add to active list, and call UpdateColors function
        -- Visible: false => Remove from active list.
    
        -- The above would be especially efficient for a rainbow menu color or live color-changing.
    
        for Idx, Object in next, Library.Registry do
            for Property, ColorIdx in next, Object.Properties do
                if _Type(ColorIdx) == 'string' then
                    Object.Instance[Property] = Library[ColorIdx];
                elseif _Type(ColorIdx) == 'function' then
                    Object.Instance[Property] = ColorIdx()
                end
            end;
        end;
    end;
    
    function Library:GiveSignal(Signal)
        -- Only used for signals not attached to library instances, as those should be cleaned up on object destruction by Roblox
        _TableInsert(Library.Signals, Signal)
    end
    function Library:AddSignal(signal, func)

        local connectedsignal = signal:Connect(func)
        Library:GiveSignal(connectedsignal)
        return connectedsignal
    end
    function Library:Unload()
        -- Unload all of the signals
        for Idx = #Library.Signals, 1, -1 do
            local Connection = _TableRemove(Library.Signals, Idx)
            Connection:Disconnect()
        end
        
        -- Call our unload callback, maybe to undo some hooks etc
        if Library.OnUnload then
            Library.OnUnload()
        end
    
        _Destroy(ScreenGui)
    end
    
    function Library:OnUnload(Callback)
        Library.OnUnload = Callback
    end
    
    Library:GiveSignal(ScreenGui.DescendantRemoving:Connect(function(Instance)
        if Library.RegistryMap[Instance] then
            Library:RemoveFromRegistry(Instance);
        end;
    end))
    
    local BaseAddons = {};
    
    do
        local Funcs = {};
    
        function Funcs:AddColorPicker(Idx, Info)
            local ToggleLabel = self.TextLabel;
            -- local Container = self.Container;
    
            assert(Info.Default, 'AddColorPicker: Missing default value.');
    
            local ColorPicker = {
                Value = Info.Default;
                Transparency = Info.Transparency or 0;
                Type = 'ColorPicker';
                Title = _Type(Info.Title) == 'string' and Info.Title or 'Color picker',
                Callback = Info.Callback or function(Color) end;
            };
    
            function ColorPicker:SetHSVFromRGB(Color)
                local H, S, V = _Color3ToHSV(Color);
                
                ColorPicker.Hue = H;
                ColorPicker.Sat = S;
                ColorPicker.Vib = V;
            end;
    
            ColorPicker:SetHSVFromRGB(ColorPicker.Value);
    
            local DisplayFrame = Library:Create('Frame', {
                BackgroundColor3 = ColorPicker.Value;
                BorderColor3 = Library:GetDarkerColor(ColorPicker.Value);
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(0, 18, 0, 14);
                ZIndex = 6;
                Parent = ToggleLabel;
            });
    
            -- Transparency image taken from https://github.com/matas3535/SplixPrivateDrawingLibrary/blob/main/Library.lua cus i'm lazy
            local CheckerFrame = Library:Create('ImageLabel', {
                BorderSizePixel = 0;
                Size = _UDim2New(0, 17, 0, 13);
                ZIndex = 5;
                Image = 'http://www.roblox.com/asset/?id=12977615774';
                Visible = not not Info.Transparency;
                Parent = DisplayFrame;
            });
    
            -- 1/16/23
            -- Rewrote this to be placed inside the Library ScreenGui
            -- There was some issue which caused RelativeOffset to be way off
            -- Thus the color picker would never show
    
            local PickerFrameOuter = Library:Create('Frame', {
                Name = 'Color';
                BackgroundColor3 = _Color3New(1, 1, 1);
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Position = _UDim2fromOffset(DisplayFrame.AbsolutePosition.X, DisplayFrame.AbsolutePosition.Y + 18),
                Size = _UDim2fromOffset(230, Info.Transparency and 271 or 253);
                Visible = false;
                ZIndex = 15;
                Parent = ScreenGui,
            });
    
            _GetPropertyChangedSignal(DisplayFrame, 'AbsolutePosition'):Connect(function()
                PickerFrameOuter.Position = _UDim2fromOffset(DisplayFrame.AbsolutePosition.X, DisplayFrame.AbsolutePosition.Y + 18);
            end)
    
            local PickerFrameInner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 16;
                Parent = PickerFrameOuter;
            });
    
            local Highlight = Library:Create('Frame', {
                BackgroundColor3 = Library.AccentColor;
                BorderSizePixel = 0;
                Size = _UDim2New(1, 0, 0, 2);
                ZIndex = 17;
                Parent = PickerFrameInner;
            });
    
            local SatVibMapOuter = Library:Create('Frame', {
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Position = _UDim2New(0, 4, 0, 25);
                Size = _UDim2New(0, 200, 0, 200);
                ZIndex = 17;
                Parent = PickerFrameInner;
            });
    
            local SatVibMapInner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 18;
                Parent = SatVibMapOuter;
            });
    
            local SatVibMap = Library:Create('ImageLabel', {
                BorderSizePixel = 0;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 18;
                Image = 'rbxassetid://4155801252';
                Parent = SatVibMapInner;
            });
    
            local CursorOuter = Library:Create('ImageLabel', {
                AnchorPoint = _Vector2New(0.5, 0.5);
                Size = _UDim2New(0, 6, 0, 6);
                BackgroundTransparency = 1;
                Image = 'http://www.roblox.com/asset/?id=9619665977';
                ImageColor3 = _Color3New(0, 0, 0);
                ZIndex = 19;
                Parent = SatVibMap;
            });
    
            local CursorInner = Library:Create('ImageLabel', {
                Size = _UDim2New(0, CursorOuter.Size.X.Offset - 2, 0, CursorOuter.Size.Y.Offset - 2);
                Position = _UDim2New(0, 1, 0, 1);
                BackgroundTransparency = 1;
                Image = 'http://www.roblox.com/asset/?id=9619665977';
                ZIndex = 20;
                Parent = CursorOuter;
            })
    
            local HueSelectorOuter = Library:Create('Frame', {
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Position = _UDim2New(0, 208, 0, 25);
                Size = _UDim2New(0, 15, 0, 200);
                ZIndex = 17;
                Parent = PickerFrameInner;
            });
    
            local HueSelectorInner = Library:Create('Frame', {
                BackgroundColor3 = _Color3New(1, 1, 1);
                BorderSizePixel = 0;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 18;
                Parent = HueSelectorOuter;
            });
    
            local HueCursor = Library:Create('Frame', { 
                BackgroundColor3 = _Color3New(1, 1, 1);
                AnchorPoint = _Vector2New(0, 0.5);
                BorderColor3 = _Color3New(0, 0, 0);
                Size = _UDim2New(1, 0, 0, 1);
                ZIndex = 18;
                Parent = HueSelectorInner;
            });
    
            local HueBoxOuter = Library:Create('Frame', {
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Position = _UDim2fromOffset(4, 228),
                Size = _UDim2New(0.5, -6, 0, 20),
                ZIndex = 18,
                Parent = PickerFrameInner;
            });
    
            local HueBoxInner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 18,
                Parent = HueBoxOuter;
            });
    
            Library:Create('UIGradient', {
                Color = _ColorSequenceNew({
                    _ColorSequenceKeypointNew(0, _Color3New(1, 1, 1)),
                    _ColorSequenceKeypointNew(1, _Color3FromRGB(212, 212, 212))
                });
                Rotation = 90;
                Parent = HueBoxInner;
            });
    
            local HueBox = Library:Create('TextBox', {
                BackgroundTransparency = 1;
                Position = _UDim2New(0, 5, 0, 0);
                Size = _UDim2New(1, -5, 1, 0);
                Font = Library.Font;
                PlaceholderColor3 = _Color3FromRGB(190, 190, 190);
                PlaceholderText = 'Hex color',
                Text = '#FFFFFF',
                TextColor3 = Library.FontColor;
                TextSize = 15;
                ClearTextOnFocus = false,
                TextStrokeTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left;
                ZIndex = 20,
                Parent = HueBoxInner;
            });
    
            local RgbBoxBase = Library:Create(_Clone(HueBoxOuter), {
                Position = _UDim2New(0.5, 2, 0, 228),
                Size = _UDim2New(0.5, -6, 0, 20),
                Parent = PickerFrameInner
            });

            local RgbBox = Library:Create(_FindFirstChild(RgbBoxBase.Frame,'TextBox'), {
                Text = '255, 255, 255',
                PlaceholderText = 'RGB color',
                ClearTextOnFocus = false,
                TextColor3 = Library.FontColor
            });
    
            local TransparencyBoxOuter, TransparencyBoxInner, TransparencyCursor;
            
            if Info.Transparency then 
                TransparencyBoxOuter = Library:Create('Frame', {
                    BorderColor3 = _Color3New(0, 0, 0);
                    BorderSizePixel = 0;
                    Position = _UDim2fromOffset(4, 251);
                    Size = _UDim2New(1, -8, 0, 15);
                    ZIndex = 19;
                    Parent = PickerFrameInner;
                });
    
                TransparencyBoxInner = Library:Create('Frame', {
                    BackgroundColor3 = ColorPicker.Value;
                    BorderColor3 = Library.OutlineColor;
                    BorderMode = Enum.BorderMode.Inset;
                    Size = _UDim2New(1, 0, 1, 0);
                    ZIndex = 19;
                    Parent = TransparencyBoxOuter;
                });
    
                Library:AddToRegistry(TransparencyBoxInner, { BorderColor3 = 'OutlineColor' });
    
                Library:Create('ImageLabel', {
                    BackgroundTransparency = 1;
                    Size = _UDim2New(1, 0, 1, 0);
                    Image = 'http://www.roblox.com/asset/?id=12978095818';
                    ZIndex = 20;
                    Parent = TransparencyBoxInner;
                });
    
                TransparencyCursor = Library:Create('Frame', { 
                    BackgroundColor3 = _Color3New(1, 1, 1);
                    AnchorPoint = _Vector2New(0.5, 0);
                    BorderColor3 = _Color3New(0, 0, 0);
                    Size = _UDim2New(0, 1, 1, 0);
                    ZIndex = 21;
                    Parent = TransparencyBoxInner;
                });
            end;
    
            local DisplayLabel = Library:CreateLabel({
                Size = _UDim2New(1, 0, 0, 14);
                Position = _UDim2fromOffset(5, 5);
                TextXAlignment = Enum.TextXAlignment.Left;
                TextSize = 15;
                Text = ColorPicker.Title,--Info.Default;
                TextWrapped = false;
                ZIndex = 16;
                Parent = PickerFrameInner;
            });
    
    
            local ContextMenu = {}
            do
                ContextMenu.Options = {}
                ContextMenu.Container = Library:Create('Frame', {
                    BorderColor3 = _Color3New(),
                    ZIndex = 14,
    
                    Visible = false,
                    Parent = ScreenGui
                })
    
                ContextMenu.Inner = Library:Create('Frame', {
                    BackgroundColor3 = Library.BackgroundColor;
                    BorderColor3 = Library.OutlineColor;
                    BorderMode = Enum.BorderMode.Inset;
                    Size = UDim2.fromScale(1, 1);
                    ZIndex = 15;
                    Parent = ContextMenu.Container;
                });
    
                Library:Create('UIListLayout', {
                    Name = 'Layout',
                    FillDirection = Enum.FillDirection.Vertical;
                    SortOrder = Enum.SortOrder.LayoutOrder;
                    Parent = ContextMenu.Inner;
                });
    
                Library:Create('UIPadding', {
                    Name = 'Padding',
                    PaddingLeft = _UDimNew(0, 4),
                    Parent = ContextMenu.Inner,
                });
    
                local function updateMenuPosition()
                    ContextMenu.Container.Position = _UDim2fromOffset(
                        (DisplayFrame.AbsolutePosition.X + DisplayFrame.AbsoluteSize.X) + 4,
                        DisplayFrame.AbsolutePosition.Y + 1
                    )
                end
    
                local function updateMenuSize()
                    local menuWidth = 60
                    for i, label in next, _GetChildren(ContextMenu.Inner) do
                        if _IsA(label, 'TextLabel') then
                            menuWidth = _MathMax(menuWidth, label.TextBounds.X)
                        end
                    end
    
                    ContextMenu.Container.Size = _UDim2fromOffset(
                        menuWidth + 8,
                        ContextMenu.Inner.Layout.AbsoluteContentSize.Y + 4
                    )
                end
    
                _GetPropertyChangedSignal(DisplayFrame, 'AbsolutePosition'):Connect(updateMenuPosition)
                _GetPropertyChangedSignal(ContextMenu.Inner.Layout, 'AbsoluteContentSize'):Connect(updateMenuSize)
    
                _TaskSpawn(updateMenuPosition)
                _TaskSpawn(updateMenuSize)
    
                Library:AddToRegistry(ContextMenu.Inner, {
                    BackgroundColor3 = 'BackgroundColor';
                    BorderColor3 = 'OutlineColor';
                });
    
                function ContextMenu:Show()
                    self.Container.Visible = true
                end
    
                function ContextMenu:Hide()
                    self.Container.Visible = false
                end
    
                function ContextMenu:AddOption(Str, Callback)
                    if _Type(Callback) ~= 'function' then
                        Callback = function() end
                    end
    
                    local Button = Library:CreateLabel({
                        Active = false;
                        Size = _UDim2New(1, 0, 0, 15);
                        TextSize = 14;
                        Text = Str;
                        ZIndex = 16;
                        Parent = self.Inner;
                        TextXAlignment = Enum.TextXAlignment.Left,
                    });
    
                    Library:OnHighlight(Button, Button, 
                        { TextColor3 = 'AccentColor' },
                        { TextColor3 = 'FontColor' }
                    );
    
                    Button.InputBegan:Connect(function(Input)
                        if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                            return
                        end
    
                        Callback()
                    end)
                end
    
                ContextMenu:AddOption('Copy color', function()
                    Library.ColorClipboard = ColorPicker.Value
                    Library:Notify('Copied color!', 2)
                end)
    
                ContextMenu:AddOption('Paste color', function()
                    if not Library.ColorClipboard then
                        return Library:Notify('You have not copied a color!', 2)
                    end
                    ColorPicker:SetValueRGB(Library.ColorClipboard)
                end)
    
    
                ContextMenu:AddOption('Copy HEX', function()
                    _Pcall(setclipboard, _ToHex(ColorPicker.Value))
                    Library:Notify('Copied hex code to clipboard!', 2)
                end)
    
                ContextMenu:AddOption('Copy RGB', function()
                    _Pcall(setclipboard, _TableConcat({ _MathFloor(ColorPicker.Value.R * 255), _MathFloor(ColorPicker.Value.G * 255), _MathFloor(ColorPicker.Value.B * 255) }, ', '))
                    Library:Notify('Copied RGB values to clipboard!', 2)
                end)
    
            end
    
            Library:AddToRegistry(PickerFrameInner, { BackgroundColor3 = 'BackgroundColor'; BorderColor3 = 'OutlineColor'; });
            Library:AddToRegistry(Highlight, { BackgroundColor3 = 'AccentColor'; });
            Library:AddToRegistry(SatVibMapInner, { BackgroundColor3 = 'BackgroundColor'; BorderColor3 = 'OutlineColor'; });
    
            Library:AddToRegistry(HueBoxInner, { BackgroundColor3 = 'MainColor'; BorderColor3 = 'OutlineColor'; });
            Library:AddToRegistry(RgbBoxBase.Frame, { BackgroundColor3 = 'MainColor'; BorderColor3 = 'OutlineColor'; });
            Library:AddToRegistry(RgbBox, { TextColor3 = 'FontColor', });
            Library:AddToRegistry(HueBox, { TextColor3 = 'FontColor', });
    
            local SequenceTable = {};
    
            for Hue = 0, 1, 0.1 do
                _TableInsert(SequenceTable, _ColorSequenceKeypointNew(Hue, _Color3FromHSV(Hue, 1, 1)));
            end;
    
            local HueSelectorGradient = Library:Create('UIGradient', {
                Color = _ColorSequenceNew(SequenceTable);
                Rotation = 90;
                Parent = HueSelectorInner;
            });
    
            HueBox.FocusLost:Connect(function(enter)
                if enter then
                    local success, result = _Pcall(_FromHex, HueBox.Text)
                    if success and typeof(result) == 'Color3' then
                        ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = _Color3ToHSV(result)
                    end
                end
    
                ColorPicker:Display()
            end)
    
            RgbBox.FocusLost:Connect(function(enter)
                if enter then
                    local r, g, b = RgbBox.Text:match('(%d+),%s*(%d+),%s*(%d+)')
                    if r and g and b then
                        ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = _Color3ToHSV(_Color3FromRGB(r, g, b))
                    end
                end
    
                ColorPicker:Display()
            end)
    
            function ColorPicker:Display()
                ColorPicker.Value = _Color3FromHSV(ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib);
                SatVibMap.BackgroundColor3 = _Color3FromHSV(ColorPicker.Hue, 1, 1);
    
                Library:Create(DisplayFrame, {
                    BackgroundColor3 = ColorPicker.Value;
                    BackgroundTransparency = ColorPicker.Transparency;
                    BorderColor3 = Library:GetDarkerColor(ColorPicker.Value);
                });
    
                if TransparencyBoxInner then
                    TransparencyBoxInner.BackgroundColor3 = ColorPicker.Value;
                    TransparencyCursor.Position = _UDim2New(1 - ColorPicker.Transparency, 0, 0, 0);
                end;
    
                CursorOuter.Position = _UDim2New(ColorPicker.Sat, 0, 1 - ColorPicker.Vib, 0);
                HueCursor.Position = _UDim2New(0, 0, ColorPicker.Hue, 0);
    
                HueBox.Text = '#' .. _ToHex(ColorPicker.Value)
                RgbBox.Text = _TableConcat({ _MathFloor(ColorPicker.Value.R * 255), _MathFloor(ColorPicker.Value.G * 255), _MathFloor(ColorPicker.Value.B * 255) }, ', ')
    
                Library:SafeCallback(ColorPicker.Callback, ColorPicker.Value);
                Library:SafeCallback(ColorPicker.Changed, ColorPicker.Value);
            end;
    
            function ColorPicker:OnChanged(Func)
                ColorPicker.Changed = Func;
                Func(ColorPicker.Value)
            end;
    
            function ColorPicker:Show()
                for Frame, Val in next, Library.OpenedFrames do
                    if Frame.Name == 'Color' then
                        Frame.Visible = false;
                        Library.OpenedFrames[Frame] = nil;
                    end;
                end;
    
                PickerFrameOuter.Visible = true;
                Library.OpenedFrames[PickerFrameOuter] = true;
            end;
    
            function ColorPicker:Hide()
                PickerFrameOuter.Visible = false;
                Library.OpenedFrames[PickerFrameOuter] = nil;
            end;
    
            function ColorPicker:SetValue(HSV, Transparency)
                local Color = _Color3FromHSV(HSV[1], HSV[2], HSV[3]);
    
                ColorPicker.Transparency = Transparency or 0;
                ColorPicker:SetHSVFromRGB(Color);
                ColorPicker:Display();
            end;
    
            function ColorPicker:SetValueRGB(Color, Transparency)
                ColorPicker.Transparency = Transparency or 0;
                ColorPicker:SetHSVFromRGB(Color);
                ColorPicker:Display();
            end;
    
            SatVibMap.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        local MinX = SatVibMap.AbsolutePosition.X;
                        local MaxX = MinX + SatVibMap.AbsoluteSize.X;
                        local MouseX = _MathClamp(Mouse.X, MinX, MaxX);
    
                        local MinY = SatVibMap.AbsolutePosition.Y;
                        local MaxY = MinY + SatVibMap.AbsoluteSize.Y;
                        local MouseY = _MathClamp(Mouse.Y, MinY, MaxY);
    
                        ColorPicker.Sat = (MouseX - MinX) / (MaxX - MinX);
                        ColorPicker.Vib = 1 - ((MouseY - MinY) / (MaxY - MinY));
                        ColorPicker:Display();
    
                        RenderStepped:Wait();
                    end;
    
                    Library:AttemptSave();
                end;
            end);
    
            HueSelectorInner.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        local MinY = HueSelectorInner.AbsolutePosition.Y;
                        local MaxY = MinY + HueSelectorInner.AbsoluteSize.Y;
                        local MouseY = _MathClamp(Mouse.Y, MinY, MaxY);
    
                        ColorPicker.Hue = ((MouseY - MinY) / (MaxY - MinY));
                        ColorPicker:Display();
    
                        RenderStepped:Wait();
                    end;
    
                    Library:AttemptSave();
                end;
            end);
    
            DisplayFrame.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                    if PickerFrameOuter.Visible then
                        ColorPicker:Hide()
                    else
                        ContextMenu:Hide()
                        ColorPicker:Show()
                    end;
                elseif Input.UserInputType == Enum.UserInputType.MouseButton2 and not Library:MouseIsOverOpenedFrame() then
                    ContextMenu:Show()
                    ColorPicker:Hide()
                end
            end);
    
            if TransparencyBoxInner then
                TransparencyBoxInner.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                            local MinX = TransparencyBoxInner.AbsolutePosition.X;
                            local MaxX = MinX + TransparencyBoxInner.AbsoluteSize.X;
                            local MouseX = _MathClamp(Mouse.X, MinX, MaxX);
    
                            ColorPicker.Transparency = 1 - ((MouseX - MinX) / (MaxX - MinX));
    
                            ColorPicker:Display();
    
                            RenderStepped:Wait();
                        end;
    
                        Library:AttemptSave();
                    end;
                end);
            end;
    
            Library:GiveSignal(InputService.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local AbsPos, AbsSize = PickerFrameOuter.AbsolutePosition, PickerFrameOuter.AbsoluteSize;
    
                    if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                        or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then
    
                        ColorPicker:Hide();
                    end;
    
                    if not Library:IsMouseOverFrame(ContextMenu.Container) then
                        ContextMenu:Hide()
                    end
                end;
    
                if Input.UserInputType == Enum.UserInputType.MouseButton2 and ContextMenu.Container.Visible then
                    if not Library:IsMouseOverFrame(ContextMenu.Container) and not Library:IsMouseOverFrame(DisplayFrame) then
                        ContextMenu:Hide()
                    end
                end
            end))
    
            ColorPicker:Display();
            ColorPicker.DisplayFrame = DisplayFrame
    
            Options[Idx] = ColorPicker;
    
            return self;
        end;
    
        function Funcs:AddKeyPicker(Idx, Info)
            local ParentObj = self;
            local ToggleLabel = self.TextLabel;
            local Container = self.Container;
    
            assert(Info.Default, 'AddKeyPicker: Missing default value.');
            
            local KeyPicker = {
                Value = Info.Default;
                Toggled = false;
                Mode = Info.Mode or 'Toggle'; -- Always, Toggle, Hold
                Type = 'KeyPicker';
                Callback = Info.Callback or function(Value) end;
                ChangedCallback = Info.ChangedCallback or function(New) end;
                ConnectedToggles = {};
                
                SyncToggleState = Info.SyncToggleState or false;
            };
    
            if KeyPicker.SyncToggleState then
                Info.Modes = { 'Toggle', "Remove" }
                Info.Mode = 'Toggle'
            end
    
            local PickOuter = Library:Create('Frame', {
                BackgroundColor3 = _Color3New(0, 0, 0);
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Size = _UDim2New(0, 32, 0, 15);
                ZIndex = 6;
                Parent = ToggleLabel;
            });
    
            local PickInner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 7;
                Parent = PickOuter;
            });
    
            Library:AddToRegistry(PickInner, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });
    
            local DisplayLabel = Library:CreateLabel({
                Size = _UDim2New(1, 0, 1, 0);
                TextSize = 14;
                Text = Info.Default;
                TextWrapped = true;
                ZIndex = 8;
                Parent = PickInner;
            });
    
            local ModeSelectOuter = Library:Create('Frame', {
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Position = _UDim2fromOffset(ToggleLabel.AbsolutePosition.X + ToggleLabel.AbsoluteSize.X + 4, ToggleLabel.AbsolutePosition.Y + 1);
                Size = _UDim2New(0, 60, 0, 60 + 2);
                Visible = false;
                ZIndex = 14;
                Parent = ScreenGui;
            });
    
            _GetPropertyChangedSignal(ToggleLabel, 'AbsolutePosition'):Connect(function()
                ModeSelectOuter.Position = _UDim2fromOffset(ToggleLabel.AbsolutePosition.X + ToggleLabel.AbsoluteSize.X + 4, ToggleLabel.AbsolutePosition.Y + 1);
            end);
    
            local ModeSelectInner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 15;
                Parent = ModeSelectOuter;
            });
    
            Library:AddToRegistry(ModeSelectInner, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });
    
            Library:Create('UIListLayout', {
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = ModeSelectInner;
            });
    
            local ContainerLabel = Library:CreateLabel({
                TextXAlignment = Enum.TextXAlignment.Left;
                Size = _UDim2New(1, 0, 0, 18);
                TextSize = 14;
                Visible = false;
                ZIndex = 110;
                Parent = Library.KeybindContainer;
            },  true);
    
            local Modes = Info.Modes or { 'Always', 'Toggle', 'Hold', "Remove" };
            local ModeButtons = {};
    
            for Idx, Mode in next, Modes do
                local ModeButton = {};
    
                local Label = Library:CreateLabel({
                    Active = false;
                    Size = _UDim2New(1, 0, 0, 15);
                    TextSize = 14;
                    Text = Mode;
                    ZIndex = 16;
                    Parent = ModeSelectInner;
                });
    
                function ModeButton:Select()
                    if Mode == "Remove" then
                        KeyPicker:SetValue({"...", KeyPicker.Mode})
                    else
                        for _, Button in next, ModeButtons do
                            Button:Deselect()
                        end
                        KeyPicker.Mode = Mode;
    
                        Label.TextColor3 = Library.AccentColor;
                        Library.RegistryMap[Label].Properties.TextColor3 = 'AccentColor';    
                    end
                    ModeSelectOuter.Visible = false;
                end;
    
                function ModeButton:Deselect()
                    KeyPicker.Mode = nil;
    
                    Label.TextColor3 = Library.FontColor;
                    Library.RegistryMap[Label].Properties.TextColor3 = 'FontColor';
                end;
    
                Label.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        ModeButton:Select();
                        Library:AttemptSave();
                    end;
                end);
    
                if Mode == KeyPicker.Mode then
                    ModeButton:Select();
                end;
    
                ModeButtons[Mode] = ModeButton;
            end;
            
            local OldState = false
            function KeyPicker:Update()
                local State = KeyPicker:GetState();
                
                if #KeyPicker.ConnectedToggles > 0 and State ~= OldState then
                    for i, v in next, KeyPicker.ConnectedToggles do
                        v:SetValue(State)
                    end
                end

                OldState = State

                if Info.NoUI then
                    return;
                end;

                ContainerLabel.Text = _StringFormat('[%s] %s : %s', KeyPicker.Value, Info.Text, KeyPicker.Mode);
    
                if Library.KeybindListMode == 1 then
                    ContainerLabel.Visible = true;
                    ContainerLabel.TextColor3 = State and Library.AccentColor or Library.FontColor;  
                    Library.RegistryMap[ContainerLabel].Properties.TextColor3 = State and 'AccentColor' or 'FontColor';   
                else
                    ContainerLabel.Visible = State;
                    ContainerLabel.TextColor3 = Library.AccentColor;
                    Library.RegistryMap[ContainerLabel].Properties.TextColor3 = 'AccentColor';
                end
    
    
                Library.RegistryMap[ContainerLabel].Properties.TextColor3 = State and 'AccentColor' or 'FontColor';
    
                local YSize = 0
                local XSize = 0
    
                for _, Label in next, _GetChildren(Library.KeybindContainer) do
                    if _IsA(Label, 'TextLabel') and Label.Visible then
                        YSize = YSize + Label.AbsoluteSize.Y + Library.KeyUilistlayout.Padding.Offset
                        if (Label.TextBounds.X > XSize) then
                            XSize = Label.TextBounds.X
                        end
                    end
                end

                if YSize == 0 then
                    Library.KeybindBackground.Size = _UDim2New(1, 0, 0, 0)
                    Library.KeybindBackground.BackgroundTransparency = 1
                else
                    Library.KeybindBackground.Size = _UDim2New(0, _MathMax(XSize + 20, 210), 0, YSize + 30)
                    Library.KeybindBackground.BackgroundTransparency = 0
                end
            end;
        
            function KeyPicker:GetState()
                if KeyPicker.Mode == 'Always' then
                    return true;
                elseif KeyPicker.Mode == 'Hold' then
                    if KeyPicker.Value == 'None' then
                        return false;
                    end
                    
                    local Key = KeyPicker.Value;
    
                    if Key == 'MB1' or Key == 'MB2' or Key == "MB3" then
                        return Key == 'MB1' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
                            or Key == 'MB2' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) or
                            Key == 'MB3' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton3);
                    else
                        local succ, call = _Pcall(function (...)
                            return Enum.KeyCode[KeyPicker.Value]
                        end)
                        if succ then
                            return _IsKeyDown(InputService, Enum.KeyCode[KeyPicker.Value]);     
                        else
                            return false                       
                        end
                    end;
                else
                    return KeyPicker.Toggled;
                end;
            end;
    
            function KeyPicker:SetValue(Data)
                local Key, Mode = Data[1], Data[2];
                DisplayLabel.Text = Key;
                KeyPicker.Value = Key;
                ModeButtons[Mode]:Select();
                KeyPicker:Update();
            end;
    
            function KeyPicker:OnClick(Callback)
                KeyPicker.Clicked = Callback
            end
    
            function KeyPicker:OnChanged(Callback)
                KeyPicker.Changed = Callback
                Callback(KeyPicker.Value)
            end
    
            if ParentObj.Addons then
                _TableInsert(ParentObj.Addons, KeyPicker)
            end
    
            function KeyPicker:DoClick()
                if ParentObj.Type == 'Toggle' and KeyPicker.SyncToggleState then
                    ParentObj:SetValue(not ParentObj.Value)
                end
    
                Library:SafeCallback(KeyPicker.Callback, KeyPicker.Toggled)
                Library:SafeCallback(KeyPicker.Clicked, KeyPicker.Toggled)
            end
    
            local Picking = false;
    
            PickOuter.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                    Picking = true;
    
                    DisplayLabel.Text = '';
    
                    local Break;
                    local Text = '';
    
                    _TaskSpawn(function()
                        while (not Break) do
                            if Text == '...' then
                                Text = '';
                            end;
    
                            Text = Text .. '.';
                            DisplayLabel.Text = Text;
    
                            _Wait(0.4);
                        end;
                    end);
    
                    _Wait(0.2);
    
                    local Event;
                    Event = InputService.InputBegan:Connect(function(Input)
                        local Key;
    
                        if Input.UserInputType == Enum.UserInputType.Keyboard then
                            Key = Input.KeyCode.Name;
                        elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
                            Key = 'MB1';
                        elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
                            Key = 'MB2';
                        elseif Input.UserInputType == Enum.UserInputType.MouseButton3 then
                            Key = 'MB3';
                        end;
    
                        Break = true;
                        Picking = false;
    
                        DisplayLabel.Text = Key;
                        KeyPicker.Value = Key;
    
                        Library:SafeCallback(KeyPicker.ChangedCallback, Input.KeyCode or Input.UserInputType)
                        Library:SafeCallback(KeyPicker.Changed, Input.KeyCode or Input.UserInputType)
    
                        Library:AttemptSave();
    
                        Event:Disconnect();
                    end);
                elseif Input.UserInputType == Enum.UserInputType.MouseButton2 and not Library:MouseIsOverOpenedFrame() then
                    ModeSelectOuter.Visible = true;
                end;
            end);
    
            Library:GiveSignal(InputService.InputBegan:Connect(function(Input)
                if (not Picking) then
                    if KeyPicker.Mode == 'Toggle' then
                        local Key = KeyPicker.Value;
    
                        if Key == 'MB1' or Key == 'MB2' or Key == 'MB3' then
                            if Key == 'MB1' and Input.UserInputType == Enum.UserInputType.MouseButton1
                            or Key == 'MB2' and Input.UserInputType == Enum.UserInputType.MouseButton2
                            or Key == 'MB3' and Input.UserInputType == Enum.UserInputType.MouseButton3 then
                                KeyPicker.Toggled = not KeyPicker.Toggled
                                KeyPicker:DoClick()
                            end;
                        elseif Input.UserInputType == Enum.UserInputType.Keyboard then
                            if Input.KeyCode.Name == Key then
                                KeyPicker.Toggled = not KeyPicker.Toggled;
                                KeyPicker:DoClick()
                            end;
                        end;
                    end;
                    
                    KeyPicker:Update();
                end;
    
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local AbsPos, AbsSize = ModeSelectOuter.AbsolutePosition, ModeSelectOuter.AbsoluteSize;
    
                    if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                        or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then
    
                        ModeSelectOuter.Visible = false;
                    end;
                end;
            end))
    
            Library:GiveSignal(InputService.InputEnded:Connect(function(Input)
                if (not Picking) then
                    KeyPicker:Update();
                end;
            end))
    
            KeyPicker:Update();
    
            Options[Idx] = KeyPicker;
    
            return self;
        end;
    
        BaseAddons.__index = Funcs;
        BaseAddons.__namecall = function(Table, Key, ...)
            return Funcs[Key](...);
        end;
    end;
    
    local BaseGroupbox = {};
    
    do
        local Funcs = {};
    
        function Funcs:AddBlank(Size)
            local Groupbox = self;
            local Container = Groupbox.Container;
    
            Library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = _UDim2New(1, 0, 0, Size);
                ZIndex = 1;
                Parent = Container;
            });
        end;
    
        function Funcs:AddLabel(Text, DoesWrap)
            local Label = {};
    
            local Groupbox = self;
            local Container = Groupbox.Container;
    
            local TextLabel = Library:CreateLabel({
                Size = _UDim2New(1, -4, 0, 15);
                TextSize = 15;
                Text = Text;
                TextWrapped = DoesWrap or false,
                TextXAlignment = Enum.TextXAlignment.Left;
                ZIndex = 5;
                Parent = Container;
            });
    
            if DoesWrap then
                local Y = _Select(2, Library:GetTextBounds(Text, Library.Font, 15, _Vector2New(TextLabel.AbsoluteSize.X, math.huge)))
                TextLabel.Size = _UDim2New(1, -4, 0, Y)
            else
                Library:Create('UIListLayout', {
                    Padding = _UDimNew(0, 4);
                    FillDirection = Enum.FillDirection.Horizontal;
                    HorizontalAlignment = Enum.HorizontalAlignment.Right;
                    SortOrder = Enum.SortOrder.LayoutOrder;
                    Parent = TextLabel;
                });
            end
    
            Label.TextLabel = TextLabel;
            Label.Container = Container;
    
            function Label:SetText(Text)
                TextLabel.Text = Text
    
                if DoesWrap then
                    local Y = _Select(2, Library:GetTextBounds(Text, Library.Font, 15, _Vector2New(TextLabel.AbsoluteSize.X, math.huge)))
                    TextLabel.Size = _UDim2New(1, -4, 0, Y)
                end
    
                Groupbox:Resize();
            end
    
            if (not DoesWrap) then
                setmetatable(Label, BaseAddons);
            end
    
            Groupbox:AddBlank(5);
            Groupbox:Resize();
    
            return Label;
        end;
    
        function Funcs:AddButton(...)
            -- TODO: Eventually redo this
            local Button = {};
            local function ProcessButtonParams(Class, Obj, ...)
                local Props = _Select(1, ...)
                if _Type(Props) == 'table' then
                    Obj.Text = Props.Text
                    Obj.Func = Props.Func
                    Obj.DoubleClick = Props.DoubleClick
                    Obj.Tooltip = Props.Tooltip
                else
                    Obj.Text = _Select(1, ...)
                    Obj.Func = _Select(2, ...)
                end
    
                assert(_Type(Obj.Func) == 'function', 'AddButton: `Func` callback is missing.');
            end
    
            ProcessButtonParams('Button', Button, ...)
    
            local Groupbox = self;
            local Container = Groupbox.Container;
    
            local function CreateBaseButton(Button)
                local Outer = Library:Create('Frame', {
                    BackgroundColor3 = _Color3New(0, 0, 0);
                    BorderColor3 = _Color3New(0, 0, 0);
                    BorderSizePixel = 0;
                    Size = _UDim2New(1, -4, 0, 20);
                    ZIndex = 5;
                });
                
                local Inner = Library:Create('Frame', {
                    BackgroundColor3 = Library.MainColor;
                    BorderColor3 = Library.OutlineColor;
                    BorderMode = Enum.BorderMode.Inset;
                    Size = _UDim2New(1, 0, 1, 0);
                    ZIndex = 6;
                    Parent = Outer;
                });
    
                local Label = Library:CreateLabel({
                    Size = _UDim2New(1, 0, 1, 0);
                    TextSize = 15;
                    Text = Button.Text;
                    ZIndex = 6;
                    Parent = Inner;
                });
    
                Library:Create('UIGradient', {
                    Color = _ColorSequenceNew({
                        _ColorSequenceKeypointNew(0, _Color3New(1, 1, 1)),
                        _ColorSequenceKeypointNew(1, _Color3FromRGB(212, 212, 212))
                    });
                    Rotation = 90;
                    Parent = Inner;
                });
    
                Library:AddToRegistry(Outer, {
                    BorderColor3 = 'Black';
                });
    
                Library:AddToRegistry(Inner, {
                    BackgroundColor3 = 'MainColor';
                    BorderColor3 = 'OutlineColor';
                });
    
                Library:OnHighlight(Outer, Outer,
                    { BorderColor3 = 'AccentColor', BorderSizePixel = 1 },
                    { BorderColor3 = 'Black', BorderSizePixel = 0 }
                );
    
                return Outer, Inner, Label
            end
    
            local function InitEvents(Button)
                local function WaitForEvent(event, timeout, validator)
                    local bindable = _Instancenew('BindableEvent')
                    local connection = event:Once(function(...)
    
                        if _Type(validator) == 'function' and validator(...) then
                            bindable:Fire(true)
                        else
                            bindable:Fire(false)
                        end
                    end)
                    task.delay(timeout, function()
                        connection:disconnect()
                        bindable:Fire(false)
                    end)
                    return bindable.Event:Wait()
                end
    
                local function ValidateClick(Input)
                    if Library:MouseIsOverOpenedFrame() then
                        return false
                    end
    
                    if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                        return false
                    end
    
                    return true
                end
    
                Button.Outer.InputBegan:Connect(function(Input)
                    if not ValidateClick(Input) then return end
                    if Button.Locked then return end
    
                    if Button.DoubleClick then
                        Library:RemoveFromRegistry(Button.Label)
                        Library:AddToRegistry(Button.Label, { TextColor3 = 'AccentColor' })
    
                        Button.Label.TextColor3 = Library.AccentColor
                        Button.Label.Text = 'Are you sure?'
                        Button.Locked = true
    
                        local clicked = WaitForEvent(Button.Outer.InputBegan, 1, ValidateClick)
    
                        Library:RemoveFromRegistry(Button.Label)
                        Library:AddToRegistry(Button.Label, { TextColor3 = 'FontColor' })
    
                        Button.Label.TextColor3 = Library.FontColor
                        Button.Label.Text = Button.Text
                        task.defer(rawset, Button, 'Locked', false)
    
                        if clicked then
                            Library:SafeCallback(Button.Func)
                        end
    
                        return
                    end
    
                    Library:SafeCallback(Button.Func);
                end)
            end
    
            Button.Outer, Button.Inner, Button.Label = CreateBaseButton(Button)
            Button.Outer.Parent = Container
    
            InitEvents(Button)
    
            function Button:AddTooltip(tooltip)
                if _Type(tooltip) == 'string' then
                    Library:AddToolTip(tooltip, self.Outer)
                end
                return self
            end
    
    
            function Button:AddButton(...)
                local SubButton = {}
    
                ProcessButtonParams('SubButton', SubButton, ...)
    
                self.Outer.Size = _UDim2New(0.5, -2, 0, 20)
    
                SubButton.Outer, SubButton.Inner, SubButton.Label = CreateBaseButton(SubButton)
    
                SubButton.Outer.Position = _UDim2New(1, 3, 0, 0)
                SubButton.Outer.Size = _UDim2fromOffset(self.Outer.AbsoluteSize.X - 2, self.Outer.AbsoluteSize.Y)
                SubButton.Outer.Parent = self.Outer
    
                function SubButton:AddTooltip(tooltip)
                    if _Type(tooltip) == 'string' then
                        Library:AddToolTip(tooltip, self.Outer)
                    end
                    return SubButton
                end
    
                if _Type(SubButton.Tooltip) == 'string' then
                    SubButton:AddTooltip(SubButton.Tooltip)
                end
    
                InitEvents(SubButton)
                return SubButton
            end
    
            if _Type(Button.Tooltip) == 'string' then
                Button:AddTooltip(Button.Tooltip)
            end
    
            Groupbox:AddBlank(5);
            Groupbox:Resize();
    
            return Button;
        end;
    
        function Funcs:AddDivider()
            local Groupbox = self;
            local Container = self.Container
    
            local Divider = {
                Type = 'Divider',
            }
    
            Groupbox:AddBlank(2);
            local DividerOuter = Library:Create('Frame', {
                BackgroundColor3 = _Color3New(0, 0, 0);
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Size = _UDim2New(1, -4, 0, 5);
                ZIndex = 5;
                Parent = Container;
            });
    
            local DividerInner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 6;
                Parent = DividerOuter;
            });
    
            Library:AddToRegistry(DividerOuter, {
                BorderColor3 = 'Black';
            });
    
            Library:AddToRegistry(DividerInner, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });
    
            Groupbox:AddBlank(9);
            Groupbox:Resize();
        end
    
        function Funcs:AddInput(Idx, Info)
            assert(Info.Text, 'AddInput: Missing `Text` string.')
            
            local Textbox = {
                Value = Info.Default or '';
                Numeric = Info.Numeric or false;
                Finished = Info.Finished or false;
                Type = 'Input';
                Callback = Info.Callback or function(Value) end;
            };
    
            local Groupbox = self;
            local Container = Groupbox.Container;
    
            local InputLabel = Library:CreateLabel({
                Size = _UDim2New(1, 0, 0, 15);
                TextSize = 15;
                Text = Info.Text;
                TextXAlignment = Enum.TextXAlignment.Left;
                ZIndex = 5;
                Parent = Container;
            });
    
            Groupbox:AddBlank(1);
    
            local TextBoxOuter = Library:Create('Frame', {
                BackgroundColor3 = _Color3New(0, 0, 0);
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Size = _UDim2New(1, -4, 0, 18);
                ZIndex = 5;
                Parent = Container;
            });
    
            local TextBoxInner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 6;
                Parent = TextBoxOuter;
            });
    
            Library:AddToRegistry(TextBoxInner, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });
    
            Library:OnHighlight(TextBoxOuter, TextBoxOuter,
                { BorderColor3 = 'AccentColor' },
                { BorderColor3 = 'Black' }
            );
    
            if _Type(Info.Tooltip) == 'string' then
                Library:AddToolTip(Info.Tooltip, TextBoxOuter)
            end
    
            Library:Create('UIGradient', {
                Color = _ColorSequenceNew({
                    _ColorSequenceKeypointNew(0, _Color3New(1, 1, 1)),
                    _ColorSequenceKeypointNew(1, _Color3FromRGB(212, 212, 212))
                });
                Rotation = 90;
                Parent = TextBoxInner;
            });
    
            local Container = Library:Create('Frame', {
                BackgroundTransparency = 1;
                ClipsDescendants = true;
    
                Position = _UDim2New(0, 5, 0, 0);
                Size = _UDim2New(1, -5, 1, 0);
    
                ZIndex = 7;
                Parent = TextBoxInner;
            })
    
            local Box = Library:Create('TextBox', {
                BackgroundTransparency = 1;
    
                Position = _UDim2fromOffset(0, 0),
                Size = UDim2.fromScale(5, 1),
    
                Font = Library.Font;
                PlaceholderColor3 = _Color3FromRGB(190, 190, 190);
                PlaceholderText = Info.Placeholder or '';
    
                Text = Info.Default or '';
                TextColor3 = Library.FontColor;
                TextSize = 15;
                TextStrokeTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left;
    
                ZIndex = 7;
                Parent = Container;
            });
    
            function Textbox:SetValue(Text)
                if Info.MaxLength and #Text > Info.MaxLength then
                    Text = Text:sub(1, Info.MaxLength);
                end;
    
                if Textbox.Numeric then
                    if (not _tonumber(Text)) and Text:len() > 0 then
                        Text = Textbox.Value
                    end
                end
    
                Textbox.Value = Text;
                Box.Text = Text;
    
                Library:SafeCallback(Textbox.Callback, Textbox.Value);
                Library:SafeCallback(Textbox.Changed, Textbox.Value);
            end;
    
            if Textbox.Finished then
                Box.FocusLost:Connect(function(enter)
                    if not enter then return end
    
                    Textbox:SetValue(Box.Text);
                    Library:AttemptSave();
                end)
            else
                _GetPropertyChangedSignal(Box,'Text'):Connect(function()
                    Textbox:SetValue(Box.Text);
                    Library:AttemptSave();
                end);
            end
    
            -- https://devforum.roblox.com/t/how-to-make-textboxes-follow-current-cursor-position/1368429/6
            -- thank you nicemike40 :)
    
            local function Update()
                local PADDING = 2
                local reveal = Container.AbsoluteSize.X
    
                if not Box:IsFocused() or Box.TextBounds.X <= reveal - 2 * PADDING then
                    -- we aren't focused, or we fit so be normal
                    Box.Position = _UDim2New(0, PADDING, 0, 0)
                else
                    -- we are focused and don't fit, so adjust position
                    local cursor = Box.CursorPosition
                    if cursor ~= -1 then
                        -- calculate pixel width of text from start to cursor
                        local subtext = _StringSub(Box.Text, 1, cursor-1)
                        local width = TextService:GetTextSize(subtext, Box.TextSize, Box.Font, _Vector2New(math.huge, math.huge)).X
    
                        -- check if we're inside the box with the cursor
                        local currentCursorPos = Box.Position.X.Offset + width
    
                        -- adjust if necessary
                        if currentCursorPos < PADDING then
                            Box.Position = _UDim2fromOffset(PADDING-width, 0)
                        elseif currentCursorPos > reveal - PADDING - 1 then
                            Box.Position = _UDim2fromOffset(reveal-width-PADDING-1, 0)
                        end
                    end
                end
            end
    
            _TaskSpawn(Update)
    
            _GetPropertyChangedSignal(Box, 'Text'):Connect(Update)
            _GetPropertyChangedSignal(Box, 'CursorPosition'):Connect(Update)
            Box.FocusLost:Connect(Update)
            Box.Focused:Connect(Update)
    
            Library:AddToRegistry(Box, {
                TextColor3 = 'FontColor';
            });
    
            function Textbox:OnChanged(Func)
                Textbox.Changed = Func;
                Func(Textbox.Value);
            end;
    
            Groupbox:AddBlank(5);
            Groupbox:Resize();
    
            Options[Idx] = Textbox;
    
            return Textbox;
        end;
    
        function Funcs:AddToggle(Idx, Info)
            assert(Info.Text, 'AddInput: Missing `Text` string.')
    
            local Toggle = {
                Value = Info.Default or false;
                Type = 'Toggle';
    
                Callback = Info.Callback or function(Value) end;
                Addons = {},
                Risky = Info.Risky,
            };
    
            local Groupbox = self;
            local Container = Groupbox.Container;
    
            local ToggleOuter = Library:Create('Frame', {
                BackgroundColor3 = _Color3New(0, 0, 0);
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Size = _UDim2New(0, 13, 0, 13);
                ZIndex = 5;
                Parent = Container;
            });
    
            Library:AddToRegistry(ToggleOuter, {
                BorderColor3 = 'Black';
            });
    
            local ToggleInner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 6;
                Parent = ToggleOuter;
            });
    
            Library:AddToRegistry(ToggleInner, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });
    
            local ToggleLabel = Library:CreateLabel({
                Size = _UDim2New(0, 216, 1, 0);
                Position = _UDim2New(1, 6, 0, 0);
                TextSize = 15;
                Text = Info.Text;
                TextXAlignment = Enum.TextXAlignment.Left;
                ZIndex = 6;
                Parent = ToggleInner;
            });  

            Library:Create('UIListLayout', {
                Padding = _UDimNew(0, 4);
                FillDirection = Enum.FillDirection.Horizontal;
                HorizontalAlignment = Enum.HorizontalAlignment.Right;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = ToggleLabel;
            });
    
            local ToggleRegion = Library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = _UDim2New(0, 170, 1, 0);
                ZIndex = 8;
                Parent = ToggleOuter;
            });
    
            Library:OnHighlight(ToggleRegion, ToggleOuter,
                { BorderColor3 = 'AccentColor', BorderSizePixel = 1 },
                { BorderColor3 = 'Black', BorderSizePixel = 0 }
            );
    
            function Toggle:UpdateColors()
                Toggle:Display();
            end;
    
            if _Type(Info.Tooltip) == 'string' then
                Library:AddToolTip(Info.Tooltip, ToggleRegion)
            end
    
            function Toggle:Display()
                ToggleInner.BackgroundColor3 = Toggle.Value and Library.AccentColor or Library.MainColor;
                ToggleInner.BorderColor3 = Toggle.Value and Library.AccentColorDark or Library.OutlineColor;
    
                Library.RegistryMap[ToggleInner].Properties.BackgroundColor3 = Toggle.Value and 'AccentColor' or 'MainColor';
                Library.RegistryMap[ToggleInner].Properties.BorderColor3 = Toggle.Value and 'AccentColorDark' or 'OutlineColor';
            end;
    
            function Toggle:OnChanged(Func)
                Toggle.Changed = Func;
                Func(Toggle.Value);
            end;
    
            function Toggle:SetValue(Bool)
                Bool = (not not Bool);
    
                Toggle.Value = Bool;
                Toggle:Display();
    
                for _, Addon in next, Toggle.Addons do
                    if Addon.Type == 'KeyPicker' and Addon.SyncToggleState then
                        Addon.Toggled = Bool
                        Addon:Update()
                    end
                end
    
                Library:SafeCallback(Toggle.Callback, Toggle.Value);
                Library:SafeCallback(Toggle.Changed, Toggle.Value);
                Library:UpdateDependencyBoxes();
            end;
    
            ToggleRegion.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                    Toggle:SetValue(not Toggle.Value) -- Why was it not like this from the start?
                    Library:AttemptSave();
                end;
            end);
    
            if Toggle.Risky then
                Library:RemoveFromRegistry(ToggleLabel)
                ToggleLabel.TextColor3 = Library.RiskColor
                Library:AddToRegistry(ToggleLabel, { TextColor3 = 'RiskColor' })
            end
    
            Toggle:Display();
            Groupbox:AddBlank(Info.BlankSize or 5 + 2);
            Groupbox:Resize();
    
            Toggle.TextLabel = ToggleLabel;
            Toggle.Container = Container;
            setmetatable(Toggle, BaseAddons);
    
            Toggles[Idx] = Toggle;
    
            Library:UpdateDependencyBoxes();
    
            return Toggle;
        end;
    
        function Funcs:AddSlider(Idx, Info)
            assert(Info.Default, 'AddSlider: Missing default value.');
            assert(Info.Text, 'AddSlider: Missing slider text.');
            assert(Info.Min, 'AddSlider: Missing minimum value.');
            assert(Info.Max, 'AddSlider: Missing maximum value.');
            assert(Info.Rounding, 'AddSlider: Missing rounding value.');
    
            local Slider = {
                Value = Info.Default;
                Min = Info.Min;
                Max = Info.Max;
                Rounding = Info.Rounding;
                MaxSize = 238;
                Type = 'Slider';
                Callback = Info.Callback or function(Value) end;
            };
    
            local Groupbox = self;
            local Container = Groupbox.Container;
    
            if not Info.Compact then
                local Label = Library:CreateLabel({
                    Size = _UDim2New(1, 0, 0, 10);
                    TextSize = 15;
                    Text = Info.Text;
                    TextXAlignment = Enum.TextXAlignment.Left;
                    TextYAlignment = Enum.TextYAlignment.Bottom;
                    ZIndex = 5;
                    Parent = Container;
                });

                local DisplayLabelPlus = Library:CreateLabel({
                    Size = _UDim2New(0.05, 0, 0, 10);
                    Position = _UDim2New(0.92, 0, 0, 0);
                    TextYAlignment = Enum.TextYAlignment.Bottom;
                    TextSize = 14;
                    Text = '+';
                    ZIndex = 10;
                    Parent = Label;
                });
                local DisplayLabelMinus = Library:CreateLabel({
                    Size = _UDim2New(0.05, 0, 0, 10);
                    Position = _UDim2New(0.88,0,0,0);
                    TextYAlignment = Enum.TextYAlignment.Bottom;
                    TextSize = 14;
                    Text = '-';
                    ZIndex = 10;
                    Parent = Label;
                });
                Library:AddToRegistry(DisplayLabelPlus, {
                    TextColor3 = 'FontColorDark';
                });
                Library:AddToRegistry(DisplayLabelMinus, {
                    TextColor3 = 'FontColorDark';
                });

                Library:OnHighlight(DisplayLabelPlus, DisplayLabelPlus,
                    { TextColor3 = 'AccentColor' },
                    { TextColor3 = 'FontColorDark' }
                );
                Library:OnHighlight(DisplayLabelMinus, DisplayLabelMinus,
                    { TextColor3 = 'AccentColor' },
                    { TextColor3 = 'FontColorDark' }
                );
                
                DisplayLabelMinus.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                        Slider:SetValue(Slider.Value - (Slider.Rounding == 0 and 1 or 1 / (10 ^ Slider.Rounding)))
                    end
                end)
                DisplayLabelPlus.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                        Slider:SetValue(Slider.Value + (Slider.Rounding == 0 and 1 or 1 / (10 ^ Slider.Rounding)))
                    end
                end)
    
                Groupbox:AddBlank(3);
            end
    
            local SliderOuter = Library:Create('Frame', {
                BackgroundColor3 = _Color3New(0, 0, 0);
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Size = _UDim2New(1, -4, 0, 12);
                ZIndex = 5;
                Parent = Container;
            });
    
            Library:AddToRegistry(SliderOuter, {
                BorderColor3 = 'Black';
            });
    
            local SliderInner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 6;
                Parent = SliderOuter;
            });
    
            Library:AddToRegistry(SliderInner, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });
    
            local Fill = Library:Create('Frame', {
                BackgroundColor3 = Library.AccentColor;
                BorderColor3 = Library.AccentColorDark;
                Size = _UDim2New(0, 0, 1, 0);
                ZIndex = 7;
                Parent = SliderInner;
            });
    
            Library:AddToRegistry(Fill, {
                BackgroundColor3 = 'AccentColor';
                BorderColor3 = 'AccentColorDark';
            });
    
            local HideBorderRight = Library:Create('Frame', {
                BackgroundColor3 = Library.AccentColor;
                BorderSizePixel = 0;
                Position = _UDim2New(1, 0, 0, 0);
                Size = _UDim2New(0, 1, 1, 0);
                ZIndex = 8;
                Parent = Fill;
            });
    
            Library:AddToRegistry(HideBorderRight, {
                BackgroundColor3 = 'AccentColor';
            });
    
            local DisplayLabel = Library:CreateLabel({
                Size = _UDim2New(1, 0, 1, 0);
                TextSize = 13;
                Text = 'Infinite';
                ZIndex = 9;
                Parent = SliderInner;
            });
    
            Library:OnHighlight(SliderOuter, SliderOuter,
                { BorderColor3 = 'AccentColor', BorderSizePixel = 1 },
                { BorderColor3 = 'Black', BorderSizePixel = 0 }
            );
    
            if _Type(Info.Tooltip) == 'string' then
                Library:AddToolTip(Info.Tooltip, SliderOuter)
            end
    
            function Slider:UpdateColors()
                Fill.BackgroundColor3 = Library.AccentColor;
                Fill.BorderColor3 = Library.AccentColorDark;
            end;
    
            function Slider:Display()
                local Suffix = Info.Suffix or '';
    
                if Info.Compact then
                    DisplayLabel.Text = Info.Text .. ': ' .. Slider.Value .. Suffix
                elseif Info.HideMax then
                    DisplayLabel.Text = _StringFormat('%s', Slider.Value .. Suffix)
                else
                    DisplayLabel.Text = _StringFormat('%s', Slider.Value .. Suffix)
                end
    
                local X = math.ceil(Library:MapValue(Slider.Value, Slider.Min, Slider.Max, 0, Slider.MaxSize));
                Fill.Size = _UDim2New(0, X, 1, 0);
    
                HideBorderRight.Visible = not (X == Slider.MaxSize or X == 0);
            end;
    
            function Slider:OnChanged(Func)
                Slider.Changed = Func;
                Func(Slider.Value);
            end;
    
            local function Round(Value)
                if Slider.Rounding == 0 then
                    return _MathFloor(Value);
                end;
    
    
                return _tonumber(_StringFormat('%.' .. Slider.Rounding .. 'f', Value))
            end;
    
            function Slider:GetValueFromXOffset(X)
                return Round(Library:MapValue(X, 0, Slider.MaxSize, Slider.Min, Slider.Max));
            end;
    
            function Slider:SetValue(Str)
                local Num = _tonumber(Str);
    
                if (not Num) then
                    return;
                end;
                
                if Num < Slider.Min then
                    Num = Slider.Min
                end
                if Num > Slider.Max then
                    Num = Slider.Max
                end

                Num = _MathClamp(Num, Slider.Min, Slider.Max);
    
                Slider.Value = Num;
                Slider:Display();
    
                Library:SafeCallback(Slider.Callback, Slider.Value);
                Library:SafeCallback(Slider.Changed, Slider.Value);
            end;
    
            SliderInner.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                    local mPos = Mouse.X;
                    local gPos = Fill.Size.X.Offset;
                    local Diff = mPos - (Fill.AbsolutePosition.X + gPos);
    
                    while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        local nMPos = Mouse.X;
                        local nX = _MathClamp(gPos + (nMPos - mPos) + Diff, 0, Slider.MaxSize);
    
                        local nValue = Slider:GetValueFromXOffset(nX);
                        local OldValue = Slider.Value;
                        Slider.Value = nValue;
    
                        Slider:Display();
    
                        if nValue ~= OldValue then
                            Library:SafeCallback(Slider.Callback, Slider.Value);
                            Library:SafeCallback(Slider.Changed, Slider.Value);
                        end;
    
                        RenderStepped:Wait();
                    end;
    
                    Library:AttemptSave();
                end;
            end);
    
            Slider:Display();
            Groupbox:AddBlank(Info.BlankSize or 6);
            Groupbox:Resize();
    
            Options[Idx] = Slider;
    
            return Slider;
        end;
    
        function Funcs:AddDropdown(Idx, Info)
            if Info.SpecialType == 'Player' then
                Info.Values = GetPlayersString();
                Info.AllowNull = true;
            elseif Info.SpecialType == 'Team' then
                Info.Values = GetTeamsString();
                Info.AllowNull = true;
            end;
    
            assert(Info.Values, 'AddDropdown: Missing dropdown value list.');
            assert(Info.AllowNull or Info.Default, 'AddDropdown: Missing default value. Pass `AllowNull` as true if this was intentional.')
    
            if (not Info.Text) then
                Info.Compact = true;
            end
    
            local Dropdown = {
                Values = Info.Values;
                Value = Info.Multi and {};
                Multi = Info.Multi;
                Type = 'Dropdown';
                SpecialType = Info.SpecialType; -- can be either 'Player' or 'Team'
                Callback = Info.Callback or function(Value) end;
            };
    
            local Groupbox = self;
            local Container = Groupbox.Container;
    
            local RelativeOffset = 0;
    
            if not Info.Compact then
                local DropdownLabel = Library:CreateLabel({
                    Size = _UDim2New(1, 0, 0, 10);
                    TextSize = 15;
                    Text = Info.Text;
                    TextXAlignment = Enum.TextXAlignment.Left;
                    TextYAlignment = Enum.TextYAlignment.Bottom;
                    ZIndex = 5;
                    Parent = Container;
                });
    
                Groupbox:AddBlank(3);
            end
    
            for _, Element in next, _GetChildren(Container) do
                if not _IsA(Element, 'UIListLayout') then
                    RelativeOffset = RelativeOffset + Element.Size.Y.Offset;
                end;
            end;
    
            local DropdownOuter = Library:Create('Frame', {
                BackgroundColor3 = _Color3New(0, 0, 0);
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                Size = _UDim2New(1, -4, 0, 18);
                ZIndex = 5;
                Parent = Container;
            });
    
            Library:AddToRegistry(DropdownOuter, {
                BorderColor3 = 'Black';
            });
    
            local DropdownInner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 6;
                Parent = DropdownOuter;
            });
    
            Library:AddToRegistry(DropdownInner, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });
    
            Library:Create('UIGradient', {
                Color = _ColorSequenceNew({
                    _ColorSequenceKeypointNew(0, _Color3New(1, 1, 1)),
                    _ColorSequenceKeypointNew(1, _Color3FromRGB(212, 212, 212))
                });
                Rotation = 90;
                Parent = DropdownInner;
            });
        
            local DropdownArrow = Library:CreateLabel({
                AnchorPoint = _Vector2New(0, 0.5);
                BackgroundTransparency = 1;
                Position = _UDim2New(1, -16, 0.5, 0);
                Size = _UDim2New(0, 12, 0, 12);
                TextSize = 14;
                Text = "+";
                ZIndex = 8;
                Parent = DropdownInner;
            });

            local ItemList = Library:CreateLabel({
                Position = _UDim2New(0, 5, 0, 0);
                Size = _UDim2New(1, -5, 1, 0);
                TextSize = 15;
                Text = '--';
                TextXAlignment = Enum.TextXAlignment.Left;
                TextWrapped = true;
                ZIndex = 7;
                Parent = DropdownInner;
            });
    
            Library:OnHighlight(DropdownOuter, DropdownOuter,
                { BorderColor3 = 'AccentColor', BorderSizePixel = 1 },
                { BorderColor3 = 'Black', BorderSizePixel = 0 }
            );
    
            if _Type(Info.Tooltip) == 'string' then
                Library:AddToolTip(Info.Tooltip, DropdownOuter)
            end
    
            local MAX_DROPDOWN_ITEMS = 8;
    
            local ListOuter = Library:Create('Frame', {
                BackgroundColor3 = _Color3New(0, 0, 0);
                BorderColor3 = _Color3New(0, 0, 0);
                BorderSizePixel = 0;
                ZIndex = 20;
                Visible = false;
                Parent = ScreenGui;
            });
    
            local function RecalculateListPosition()
                ListOuter.Position = _UDim2fromOffset(DropdownOuter.AbsolutePosition.X, DropdownOuter.AbsolutePosition.Y + DropdownOuter.Size.Y.Offset + 1);
            end;
    
            local function RecalculateListSize(YSize)
                ListOuter.Size = _UDim2fromOffset(DropdownOuter.AbsoluteSize.X, YSize or (MAX_DROPDOWN_ITEMS * 20 + 2))
            end;
    
            RecalculateListPosition();
            RecalculateListSize();
    
            _GetPropertyChangedSignal(DropdownOuter, 'AbsolutePosition'):Connect(RecalculateListPosition);
    
            local ListInner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                BorderSizePixel = 0;
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 21;
                Parent = ListOuter;
            });
    
            Library:AddToRegistry(ListInner, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });
    
            local Scrolling = Library:Create('ScrollingFrame', {
                BackgroundTransparency = 1;
                BorderSizePixel = 0;
                CanvasSize = _UDim2New(0, 0, 0, 0);
                Size = _UDim2New(1, 0, 1, 0);
                ZIndex = 21;
                Parent = ListInner;
    
                TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
                BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
                
                ScrollBarThickness = 3,
                ScrollBarImageColor3 = Library.AccentColor,
            });
    
            Library:AddToRegistry(Scrolling, {
                ScrollBarImageColor3 = 'AccentColor'
            })
    
            Library:Create('UIListLayout', {
                Padding = _UDimNew(0, 0);
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                HorizontalAlignment = Enum.HorizontalAlignment.Center;
                Parent = Scrolling;
            });
            function Dropdown:Display()
                local Values = Dropdown.Values;
                local Str = '';
    
                if Info.Multi then
                    for Idx, Value in next, Values do
                        if Dropdown.Value[Value] then
                            Str = Str .. Value .. ', ';
                        end;
                    end;
                    
                    Str = Str:sub(1, #Str - 2);
                else
                    Str = Dropdown.Value or '';
                end;
    
                ItemList.Text = (Str == '' and '--' or Str);
            end;
    
            function Dropdown:GetActiveValues()
                if Info.Multi then
                    local T = {};
    
                    for Value, Bool in next, Dropdown.Value do
                        _TableInsert(T, Value);
                    end;
    
                    return T;
                else
                    return Dropdown.Value and 1 or 0;
                end;
            end;
    
            function Dropdown:BuildDropdownList()
                local Values = Dropdown.Values;
                local Buttons = {};
    
                for _, Element in next, _GetChildren(Scrolling) do
                    if not _IsA(Element, 'UIListLayout') then
                        _Destroy(Element);
                    end;
                end;
    
                local Count = 0;
    
                for Idx, Value in next, Values do
                    local Table = {};
    
                    Count = Count + 1;
    
                    local Button = Library:Create('Frame', {
                        BackgroundColor3 = Library.MainColor;
                        BorderColor3 = Library.OutlineColor;
                        BorderMode = Enum.BorderMode.Middle;
                        Size = _UDim2New(1, -5, 0, 20);
                        ZIndex = 23;
                        Active = true,
                        Parent = Scrolling;
                    });
    
                    Library:AddToRegistry(Button, {
                        BackgroundColor3 = 'MainColor';
                        BorderColor3 = 'OutlineColor';
                    });
    
                    local ButtonLabel = Library:CreateLabel({
                        Active = false;
                        Size = _UDim2New(1, -6, 1, 0);
                        Position = _UDim2New(0, 6, 0, 0);
                        TextSize = 15;
                        Text = Value;
                        TextXAlignment = Enum.TextXAlignment.Left;
                        ZIndex = 25;
                        Parent = Button;
                    });
    
                    Library:OnHighlight(Button, Button,
                        { BorderColor3 = 'AccentColor', ZIndex = 24 },
                        { BorderColor3 = 'OutlineColor', ZIndex = 23 }
                    );
    
                    local Selected;
    
                    if Info.Multi then
                        Selected = Dropdown.Value[Value];
                    else
                        Selected = Dropdown.Value == Value;
                    end;
    
                    function Table:UpdateButton()
                        if Info.Multi then
                            Selected = Dropdown.Value[Value];
                        else
                            Selected = Dropdown.Value == Value;
                        end;
    
                        ButtonLabel.TextColor3 = Selected and Library.AccentColor or Library.FontColor;
                        Library.RegistryMap[ButtonLabel].Properties.TextColor3 = Selected and 'AccentColor' or 'FontColor';
                    end;
    
                    ButtonLabel.InputBegan:Connect(function(Input)
                        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                            local Try = not Selected;
    
                            if Dropdown:GetActiveValues() == 1 and (not Try) and (not Info.AllowNull) then
                            else
                                if Info.Multi then
                                    Selected = Try;
    
                                    if Selected then
                                        Dropdown.Value[Value] = true;
                                    else
                                        Dropdown.Value[Value] = nil;
                                    end;
                                else
                                    Selected = Try;
    
                                    if Selected then
                                        Dropdown.Value = Value;
                                    else
                                        Dropdown.Value = nil;
                                    end;
    
                                    for _, OtherButton in next, Buttons do
                                        OtherButton:UpdateButton();
                                    end;
                                end;
    
                                Table:UpdateButton();
                                Dropdown:Display();
    
                                Library:SafeCallback(Dropdown.Callback, Dropdown.Value);
                                Library:SafeCallback(Dropdown.Changed, Dropdown.Value);
    
                                Library:AttemptSave();
                            end;
                        end;
                    end);
    
                    Table:UpdateButton();
                    Dropdown:Display();
    
                    Buttons[Button] = Table;
                end;
    
                Scrolling.CanvasSize = _UDim2fromOffset(0, (Count * 20) + 1);
    
                local Y = _MathClamp(Count * 20, 0, MAX_DROPDOWN_ITEMS * 20) + 1;
                RecalculateListSize(Y);
            end;
    
            function Dropdown:SetValues(NewValues)
                if NewValues then
                    Dropdown.Values = NewValues;
                end;
    
                Dropdown:BuildDropdownList();
            end;
    
            function Dropdown:OpenDropdown()
                ListOuter.Visible = true;
                Library.OpenedFrames[ListOuter] = true;
                DropdownArrow.Text = "-";
            end;
    
            function Dropdown:CloseDropdown()
                ListOuter.Visible = false;
                Library.OpenedFrames[ListOuter] = nil;
                DropdownArrow.Text = "+";
            end;
    
            function Dropdown:OnChanged(Func)
                Dropdown.Changed = Func;
                Func(Dropdown.Value);
            end;
    
            function Dropdown:SetValue(Val)
                if Dropdown.Multi then
                    local nTable = {};
    
                    for Value, Bool in next, Val do
                        if _TableFind(Dropdown.Values, Value) then
                            nTable[Value] = true
                        end;
                    end;
    
                    Dropdown.Value = nTable;
                else
                    if (not Val) then
                        Dropdown.Value = nil;
                    elseif _TableFind(Dropdown.Values, Val) then
                        Dropdown.Value = Val;
                    end;
                end;
    
                Dropdown:BuildDropdownList();
    
                Library:SafeCallback(Dropdown.Callback, Dropdown.Value);
                Library:SafeCallback(Dropdown.Changed, Dropdown.Value);
            end;
    
            DropdownOuter.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                    if ListOuter.Visible then
                        Dropdown:CloseDropdown();
                    else
                        Dropdown:OpenDropdown();
                    end;
                end;
            end);
    
            InputService.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local AbsPos, AbsSize = ListOuter.AbsolutePosition, ListOuter.AbsoluteSize;
    
                    if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                        or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then
    
                        Dropdown:CloseDropdown();
                    end;
                end;
            end);
    
            Dropdown:BuildDropdownList();
            Dropdown:Display();
    
            local Defaults = {}
    
            if _Type(Info.Default) == 'string' then
                local Idx = _TableFind(Dropdown.Values, Info.Default)
                if Idx then
                    _TableInsert(Defaults, Idx)
                end
            elseif _Type(Info.Default) == 'table' then
                for _, Value in next, Info.Default do
                    local Idx = _TableFind(Dropdown.Values, Value)
                    if Idx then
                        _TableInsert(Defaults, Idx)
                    end
                end
            elseif _Type(Info.Default) == 'number' and Dropdown.Values[Info.Default] ~= nil then
                _TableInsert(Defaults, Info.Default)
            end
    
            if next(Defaults) then
                for i = 1, #Defaults do
                    local Index = Defaults[i]
                    if Info.Multi then
                        Dropdown.Value[Dropdown.Values[Index]] = true
                    else
                        Dropdown.Value = Dropdown.Values[Index];
                    end
    
                    if (not Info.Multi) then break end
                end
    
                Dropdown:BuildDropdownList();
                Dropdown:Display();
            end
    
            Groupbox:AddBlank(Info.BlankSize or 5);
            Groupbox:Resize();
    
            Options[Idx] = Dropdown;
    
            return Dropdown;
        end;
    
        function Funcs:AddDependencyBox()
            local Depbox = {
                Dependencies = {};
            };
            
            local Groupbox = self;
            local Container = Groupbox.Container;
    
            local Holder = Library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = _UDim2New(1, 0, 0, 0);
                Visible = false;
                Parent = Container;
            });
    
            local Frame = Library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = _UDim2New(1, 0, 1, 0);
                Visible = true;
                Parent = Holder;
            });
    
            local Layout = Library:Create('UIListLayout', {
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = Frame;
            });
    
            function Depbox:Resize()
                Holder.Size = _UDim2New(1, 0, 0, Layout.AbsoluteContentSize.Y);
                Groupbox:Resize();
            end;
    
            _GetPropertyChangedSignal(Layout, 'AbsoluteContentSize'):Connect(function()
                Depbox:Resize();
            end);
    
            _GetPropertyChangedSignal(Holder, 'Visible'):Connect(function()
                Depbox:Resize();
            end);
    
            local IsNotHidden = true
            function Depbox:Update()
                for _, Dependency in next, Depbox.Dependencies do
                    local Elem = Dependency[1];
                    local Value = Dependency[2];
    
                    if Elem.Type == 'Toggle' and Elem.Value ~= Value then
                        Holder.Visible = false;
                        Depbox:Resize();
                        return;
                    end;
                end;
                if IsNotHidden then
                    Holder.Visible = true;
                    Depbox:Resize();
                end
            end;
    
            function Depbox:SetupDependencies(Dependencies)
                for _, Dependency in next, Dependencies do
                    assert(_Type(Dependency) == 'table', 'SetupDependencies: Dependency is not of _Type `table`.');
                    assert(Dependency[1], 'SetupDependencies: Dependency is missing element argument.');
                    assert(Dependency[2] ~= nil, 'SetupDependencies: Dependency is missing value argument.');
                end;
    
                Depbox.Dependencies = Dependencies;
                Depbox:Update();
            end;
    
            function Depbox:Show()
                Holder.Visible = true
                IsNotHidden = true
            end
    
            function Depbox:Hide()
                Holder.Visible = false
                IsNotHidden = false
            end
    
            Depbox.Container = Frame;
    
            setmetatable(Depbox, BaseGroupbox);
    
            _TableInsert(Library.DependencyBoxes, Depbox);
    
            return Depbox;
        end;
    
        BaseGroupbox.__index = Funcs;
        BaseGroupbox.__namecall = function(Table, Key, ...)
            return Funcs[Key](...);
        end;
    end;
    	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --	    	    --
		    	    --
			    	    --
				    	    --
    -- < Create other UI elements >
    do
        Library.NotificationArea = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Position = _UDim2New(0, 0, 0, 40);
            Size = _UDim2New(0, 300, 0, 200);
            ZIndex = 100;
            Parent = ScreenGui;
        });
    
        Library:Create('UIListLayout', {
            Padding = _UDimNew(0, 4);
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = Library.NotificationArea;
        });
    
        Library.NotificationAreaCenter = Library:Create('Frame', {
            BackgroundTransparency = 1;
            AnchorPoint = _Vector2New(0.5,0);
            Position = _UDim2New(0.5, 0, 0.75, 0);
            Size = _UDim2New(0, 300, 0, 200);
            ZIndex = 100;
            Parent = ScreenGui;
        });
        Library:Create('UIListLayout', {
            Padding = _UDimNew(0, 4);
            FillDirection = Enum.FillDirection.Vertical;
            HorizontalAlignment = Enum.HorizontalAlignment.Center;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = Library.NotificationAreaCenter;
        });
    
        local WatermarkOuter = Library:Create('Frame', {
            BorderColor3 = _Color3New(0, 0, 0);
            BorderSizePixel = 0;
            Position = _UDim2New(0, 10, 0, 10);
            Size = _UDim2New(0, 213, 0, 21);
            ZIndex = 200;
            Visible = false;
            Parent = ScreenGui;
        });
        
        local WatermarkInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderSizePixel = 1;
            Size = _UDim2New(1, 0, 1, 0);
            ZIndex = 201;
            Parent = WatermarkOuter;
        });
        
        Library:AddToRegistry(WatermarkInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });
        
        local InnerFrame = Library:Create('Frame', {
            BackgroundColor3 = _Color3New(1, 1, 1);
            BorderSizePixel = 0;
            BackgroundTransparency = 1;
            Position = _UDim2New(0, 1, 0, 1);
            Size = _UDim2New(1, -2, 1, -2);
            ZIndex = 202;
            Parent = WatermarkInner;
        });
        
        local FrameLine = Library:Create('Frame', {
            BorderColor3 = Library.AccentColor;
            BackgroundColor3 = Library.AccentColor;
            BorderSizePixel = 0;
            Position = _UDim2New(0, -1, 1, 0);
            Size = _UDim2New(1, 1, 0, 2);
            ZIndex = 202;
            Parent = WatermarkInner;
        });
        
        Library:AddToRegistry(FrameLine, {
            BorderColor3 = 'AccentColor';
            BackgroundColor3 = "AccentColor";
        });
        
        -- local WatermarkImage = Library:Create('ImageLabel', {
        --     Size = _UDim2New(0, 13, 0, 13);
        --     Position = _UDim2New(0, 5, 0.5, 0);
        --     AnchorPoint = _Vector2New(0, 0.5);
        --     Image = "rbxassetid://140198300701593";
        --     BackgroundTransparency = 1;
        --     ZIndex = 203;
        --     Parent = InnerFrame;
        -- });
        
        local WatermarkLabel = Library:CreateLabel({
            Position = _UDim2New(0, 17, 0, 0);
            Size = _UDim2New(1, -28, 1, 0);
            TextSize = 15;
            RichText = true;
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 203;
            Parent = InnerFrame;
        });
        
        Library.Watermark = WatermarkOuter;
        Library.WatermarkText = WatermarkLabel;
        Library:MakeDraggable(Library.Watermark);
    
        local KeybindOuter = Library:Create('Frame', {
            BorderSizePixel = 0;
            Position = _UDim2New(0, 10, 0.5, 0);
            Size = _UDim2New(0, 210, 0, 20);
            Visible = false;
            ZIndex = 100;
            Parent = ScreenGui;
        });
        
        local KeybindInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = _UDim2New(1, 0, 1, 7);
            ZIndex = 101;
            Parent = KeybindOuter;
        });

        local KeybindBackground = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = _UDim2New(1, 0, 0, 0);
            Position = _UDim2New(0, 0, 0, 0);
            ZIndex = -1;
            Parent = KeybindOuter;
        });
    
        Library:AddToRegistry(KeybindInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        }, true);

        Library:AddToRegistry(KeybindBackground, {
            BorderColor3 = 'OutlineColor';
            BackgroundColor3 = "MainColor";
        });
    
        local FrameLine2 = Library:Create('Frame', {
            BorderColor3 = Library.AccentColor;
            BackgroundColor3 = Library.AccentColor;
            BorderSizePixel = 0;
            Position = _UDim2New(0, 0, 0, 24);
            Size = _UDim2New(1, 0, 0, 2);
            ZIndex = 202;
            Parent = KeybindInner;
        });
    
        Library:AddToRegistry(FrameLine2, {
            BorderColor3 = 'AccentColor';
            BackgroundColor3 = "AccentColor";
        });
    
        local KeybindLabel = Library:CreateLabel({
            Size = _UDim2New(1, 0, 0, 20);
            Position = _UDim2fromOffset(5, 2),
            TextXAlignment = Enum.TextXAlignment.Center,
            Text = 'Keybinds';
            ZIndex = 104;
            Parent = KeybindInner;
        });
    
        local KeybindContainer = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = _UDim2New(1, 0, 1, -20);
            Position = _UDim2New(0, 0, 0, 30);
            ZIndex = 1;
            Parent = KeybindInner;
        });
    
        local KeyListLayout = Library:Create('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical;
            HorizontalAlignment = Enum.HorizontalAlignment.Left;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Padding = _UDimNew(0, 5);
            Parent = KeybindContainer;
        });
    
        Library:Create('UIPadding', {
            PaddingLeft = _UDimNew(0, 5),
            Parent = KeybindContainer,
        })
    
        Library.KeybindListMode = 1
        Library.KeybindBackground = KeybindBackground;
        Library.KeyUilistlayout = KeyListLayout;
        Library.KeybindFrame = KeybindOuter;
        Library.KeybindContainer = KeybindContainer;
        Library:MakeDraggable(KeybindOuter);
    
        local SpecListOuter = Library:Create('Frame', {
            BorderSizePixel = 0;
            Position = _UDim2New(1, -220, 0.3, 0);
            Size = _UDim2New(0, 210, 0, 20);
            Visible = false;
            ZIndex = 100;
            Parent = ScreenGui;
        });
        
        local SpecListInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = _UDim2New(1, 0, 1, 7);
            ZIndex = 101;
            Parent = SpecListOuter;
        });

        local SpecListBackground = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = _UDim2New(1, 0, 0, 0);
            Position = _UDim2New(0, 0, 0, 0);
            ZIndex = -1;
            Parent = SpecListOuter;
        });
    
        Library:AddToRegistry(SpecListInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        }, true);
    
        Library:AddToRegistry(SpecListBackground, {
            BorderColor3 = 'OutlineColor';
            BackgroundColor3 = 'MainColor';
        });

        local FrameLine3 = Library:Create('Frame', {
            BorderColor3 = Library.AccentColor;
            BackgroundColor3 = Library.AccentColor;
            BorderSizePixel = 0;
            Position = _UDim2New(0, 0, 0, 24);
            Size = _UDim2New(1, 0, 0, 2);
            ZIndex = 202;
            Parent = SpecListInner;
        });
    
        Library:AddToRegistry(FrameLine3, {
            BorderColor3 = 'AccentColor';
            BackgroundColor3 = "AccentColor";
        });
    
        local SpecListLabel = Library:CreateLabel({
            Size = _UDim2New(1, 0, 0, 20);
            Position = _UDim2fromOffset(5, 2),
            TextXAlignment = Enum.TextXAlignment.Center,
            Text = 'Spectators List';
            ZIndex = 104;
            Parent = SpecListInner;
        });
    
        local SpecListContainer = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = _UDim2New(1, 0, 1, -20);
            Position = _UDim2New(0, 0, 0, 30);
            ZIndex = 1;
            Parent = SpecListInner;
        });

        local ListLayout = Library:Create('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical;
            HorizontalAlignment = Enum.HorizontalAlignment.Left;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Padding = _UDimNew(0, 5);
            Parent = SpecListContainer;
        });
    
        Library:Create('UIPadding', {
            PaddingLeft = _UDimNew(0, 5),
            Parent = SpecListContainer,
        })
        
        Library.SpecUIlistlayout = ListLayout;
        Library.SpecListBG = SpecListBackground;
        Library.SpecListFrame = SpecListOuter;
        Library.SpecListContainer = SpecListContainer;
        Library:MakeDraggable(SpecListOuter);
    end;
    

    local PlayersContainerLabels = {}

    function Library:UpdateSpecList(Players)
    
        local YSize = 0
        local XSize = 0

        for i, v in next, PlayersContainerLabels do
            v.Visible = false
            Library.RegistryMap[v].Properties.TextColor3 = 'FontColor'
        end

        for i, v in next, Players do
            if not PlayersContainerLabels[v] then
                PlayersContainerLabels[v] = Library:CreateLabel({
                    TextXAlignment = Enum.TextXAlignment.Center;
                    Size = _UDim2New(1, 0, 0, 18);
                    TextSize = 14;
                    Visible = false;
                    ZIndex = 110;
                    TextColor3 = Library.FontColor;
                    Text = v;
                    Parent = Library.SpecListContainer;
                }, true);
                Library.RegistryMap[PlayersContainerLabels[v]].Properties.TextColor3 = 'FontColor'
            end

            PlayersContainerLabels[v].Visible = true
        end
        
        for _, Label in next, _GetChildren(Library.SpecListContainer) do
            if _IsA(Label, 'TextLabel') and Label.Visible then
                YSize = YSize + Label.AbsoluteSize.Y + Library.SpecUIlistlayout.Padding.Offset
                if (Label.TextBounds.X > XSize) then
                    XSize = Label.TextBounds.X
                end
            end
        end
        if Toggles.Spectator_List.Value then
            if YSize == 0 then
                Library.SpecListBG.Size = _UDim2New(1, 0, 0, 0)
                Library.SpecListBG.BackgroundTransparency = 1
                if Toggles.Speclist_dynamic.Value then
                    if getgenv().ToggleMenu == true then
                        Library.SpecListFrame.Visible = true
                    else
                        Library.SpecListFrame.Visible = false
                    end
                end
            else
                Library.SpecListBG.Size = _UDim2New(0, _MathMax(XSize + 20, 210), 0, YSize + 30)
                Library.SpecListBG.BackgroundTransparency = 0
                Library.SpecListFrame.Visible = true
            end
        end
    end
    function Library:SetSpecListVisibility(Bool)
        Library.SpecListFrame.Visible = Bool;
    end
    function Library:SetWatermarkVisibility(Bool)
        Library.Watermark.Visible = Bool;
    end;
    function Library:SetKeyListVisibility(Bool)
        Library.KeybindFrame.Visible = Bool;
    end;
    
    local function removeHtmlTags(str)
        return _StringGsub(str, "<.->", "")
    end
    function Library:SetWatermark(Text)    
        local X, Y = Library:GetTextBounds(removeHtmlTags(Text), Library.Font, 15);
        Library.Watermark.Size = _UDim2New(0, X + 18, 0, (Y * 1.5) + 0); 
        Library.WatermarkText.Text = Text; 
    end;

    function Library:Notify(Text, Time, Parent)
        local XSize, YSize = Library:GetTextBounds(Text, Library.Font, 15);
        
        YSize = (YSize * 1.5) + 3
    
        local NotifyOuter = Library:Create('Frame', {
            Position = _UDim2New(0, 100, 0, 10);
            BorderColor3 = _Color3New(0,0,0);
            Size = _UDim2New(0, 0, 0, YSize);
            ClipsDescendants = true;
            ZIndex = 100;
            Parent = Library.NotificationArea;
        });
    
        if _StringLower(_tostring(Parent)) == "center" then
            NotifyOuter.Parent = Library.NotificationAreaCenter
        end
    
        local NotifyInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = _UDim2New(1, 0, 1, 0);
            ZIndex = 101;
            Parent = NotifyOuter;
        });
    
        Library:AddToRegistry(NotifyInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        }, true);
    
        local InnerFrame = Library:Create('Frame', {
            BackgroundColor3 = _Color3New(1, 1, 1);
            BorderSizePixel = 0;
            Position = _UDim2New(0, 1, 0, 1);
            Size = _UDim2New(1, -2, 1, -2);
            ZIndex = 102;
            Parent = NotifyInner;
        });
    
        local Gradient = Library:Create('UIGradient', {
            Color = _ColorSequenceNew({
                _ColorSequenceKeypointNew(0, Library:GetDarkerColor(Library.MainColor)),
                _ColorSequenceKeypointNew(1, Library.MainColor),
            });
            Rotation = -90;
            Parent = InnerFrame;
        });
    
        Library:AddToRegistry(Gradient, {
            Color = function()
                return _ColorSequenceNew({
                    _ColorSequenceKeypointNew(0, Library:GetDarkerColor(Library.MainColor)),
                    _ColorSequenceKeypointNew(1, Library.MainColor),
                });
            end
        });
    
        local NotifyLabel = Library:CreateLabel({
            Position = _UDim2New(0, 3, 0, 1);
            Size = _UDim2New(1, -4, 1, -1);
            Text = Text;
            TextXAlignment = Enum.TextXAlignment.Left;
            TextSize = 15;
            ZIndex = 103;
            Parent = InnerFrame;
        });
    
        local TopColor = Library:Create('Frame', {
            BackgroundColor3 = Library.AccentColor;
            BorderSizePixel = 0;
            Position = _UDim2New(0, 1, 0, 1);
            Size = _UDim2New(1, -2, 0, 2);
            ZIndex = 104;
            Parent = NotifyOuter;
        });
    
        Library:AddToRegistry(TopColor, {
            BackgroundColor3 = 'AccentColor';
        }, true);
    
        _Pcall(NotifyOuter.TweenSize, NotifyOuter, _UDim2New(0, XSize + 12, 0, YSize), 'Out', 'Quad', 0.5, true);
    
        _TaskSpawn(function()
            _Wait(Time or 5);
    
            _Pcall(NotifyOuter.TweenSize, NotifyOuter, _UDim2New(0, 0, 0, YSize), 'Out', 'Quad', 0.5, true);
    
            _Wait(0.5)
    
            _Destroy(NotifyOuter);
        end);
    end;
    
    function Library:CreateWindow(...)
        local Arguments = { ... }
        local Config = { AnchorPoint = Vector2.zero }
    
        if _Type(...) == 'table' then
            Config = ...;
        else
            Config.Title = Arguments[1]
            Config.AutoShow = Arguments[2] or false;
        end
    
        if _Type(Config.Title) ~= 'string' then Config.Title = 'No title' end
        if _Type(Config.TabPadding) ~= 'number' then Config.TabPadding = 0 end
        if _Type(Config.MenuFadeTime) ~= 'number' then Config.MenuFadeTime = 0.2 end
    
        if typeof(Config.Position) ~= 'UDim2' then Config.Position = _UDim2fromOffset(175, 50) end
        if typeof(Config.Size) ~= 'UDim2' then Config.Size = _UDim2fromOffset(801, 600) end
        if typeof(Config.Color) ~= 'Color3' then Config.Color = Library.FontColor end

        if Config.Center then
            Config.AnchorPoint = _Vector2New(0.5, 0.5)
            Config.Position = UDim2.fromScale(0.5, 0.5)
        end
    
        local Window = {
            Tabs = {};
            TabButtons = {};
        };
    
        local Outer = Library:Create('Frame', {
            AnchorPoint = Config.AnchorPoint,
            BackgroundColor3 = Library.OutlineColor;
            BorderSizePixel = 0;
            BorderMode = Enum.BorderMode.Outline;
            Position = Config.Position,
            Size = Config.Size,
            Visible = false;
            ZIndex = 1;
            Parent = ScreenGui;
        });
        Window.MainFrame = Outer

    
        local Outer2 = Library:Create('Frame', {
            AnchorPoint = Config.AnchorPoint,
            BackgroundColor3 = Library.MainColor;
            BorderSizePixel = 0;
            BorderMode = Enum.BorderMode.Inset;
            Position = Config.Position,
            Size = Config.Size,
            Visible = false;
            ZIndex = 0;
            Parent = ScreenGui;
        });
        
        Library:MakeDraggable(Outer, 25, Outer2);
        
        local Inner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor; -- sirex: why is it Library.Background :WHAT:
            BorderColor3 = Library.OutlineColor;
            BorderSizePixel = 1;
            BorderMode = Enum.BorderMode.Outline;
            Position = _UDim2New(0, 1, 0, 1);
            Size = _UDim2New(1, -2, 1, -2);
            ZIndex = 1;
            Parent = Outer;
        });

        local WindowGlow = Library:Create('ImageLabel', {
            ImageColor3 = Library.AccentColor;
            BackgroundTransparency = 1;
            AnchorPoint = _Vector2New(0.5, 0.5);
            Size =  _UDim2New(0, 849, 0, 650);
            Position = _UDim2New(0.5, 0, 0.5, 0);
            BorderSizePixel = 0;
            Visible = false;
            ZIndex = -90;
            Image = "rbxassetid://73863974528152";
            Parent = Outer;
        });
        

        Library:AddToRegistry(Inner, {
            BackgroundColor3 = 'BackgroundColor';
            BorderColor3 = 'OutlineColor';
        });

        Library:AddToRegistry(Outer, {
            BackgroundColor3 = 'OutlineColor';
        });

        Library:AddToRegistry(WindowGlow, {
            ImageColor3 = 'AccentColor';
        });
    
        Library:AddToRegistry(Outer2, {
            BackgroundColor3 = 'OutlineColor';
        });


        local WindowLabel = Library:CreateLabel({---- window name
            Position = _UDim2New(0.5, 0, 0, 0);
            RichText = true;
            Size = _UDim2New(0, 0, 0, 25);
            TextColor3 = Config.Color;
            Text = Config.Title or '';
            TextXAlignment = Enum.TextXAlignment.Center;
            ZIndex = 1;
            TextSize = 18,
            Parent = Inner;
        });
    
        local MainSectionOuter = Library:Create('Frame', {
            BackgroundColor3 = _Color3FromRGB(255, 0, 0);
            BorderSizePixel = 0;
            Position = _UDim2New(0, 8, 0, 25);
            Size = _UDim2New(1, -16, 1, -33);
            ZIndex = 1;
            Parent = Inner;
        });
    
        --[[Library:AddToRegistry(MainSectionOuter, {
            BackgroundColor3 = 'BackgroundColor';
        });]]
    
        local MainSectionInner = Library:Create('Frame', {
            BackgroundColor3 = _Color3FromRGB(255, 0, 0);
            BorderSizePixel = 0;
            Position = _UDim2New(0, 0, 0, 0);
            Size = _UDim2New(1, 0, 1, 0);
            ZIndex = 1;
            Parent = MainSectionOuter;
        });
    
        --[[[Library:AddToRegistry(MainSectionInner, {
            BackgroundColor3 = 'BackgroundColor';
        });]]
    
        local TabArea = Library:Create('Frame', {
            BackgroundTransparency = 0;
            BorderSizePixel = 1;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Outline;
            Position = _UDim2New(0, 0, 0, 0);
            Size = _UDim2New(1, 0, 0, 28);
            ZIndex = 1;
            Parent = MainSectionInner;
        });

        Library:AddToRegistry(TabArea, {
            BorderColor3 = 'OutlineColor';
        });
    
        local TabListLayout = Library:Create('UIListLayout', {
            Padding = _UDimNew(0, Config.TabPadding);
            FillDirection = Enum.FillDirection.Horizontal;
            HorizontalAlignment = Enum.HorizontalAlignment.Center;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = TabArea;
        });
    
        local TabContainer = Library:Create('Frame', {
            AnchorPoint = _Vector2New(0.5, 0.5);
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            Position = _UDim2New(0.5, 0, 0.5, 14);
            Size = _UDim2New(1, 0, 1, -30);
            ZIndex = 2;
            Parent = MainSectionInner;
        });
        
    
        Library:AddToRegistry(TabContainer, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });
    
        Library.WindowGlow = WindowGlow

        function Library:SetGlowVis(Bool)
            Library.WindowGlow.Visible = Bool;
        end;

        function Window:SetWindowTitle(Title)
            WindowLabel.Text = Title;
        end;
        
        function Window:AddTab(Name)
            local Tab = {
                Groupboxes = {};
                Tabboxes = {};
            };
    
            -- local TabButtonWidth = Library:GetTextBounds(Name, Library.Font, 16);
    
            local TabButton = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderSizePixel = 1;
                Size = _UDim2New(0, 8, 1, 0);
                ZIndex = 1;
                Parent = TabArea;
            });
            _TableInsert(Window.TabButtons, TabButton)
            for i, v in next, Window.TabButtons do
                v.Size = _UDim2New(1/#Window.TabButtons, -Config.TabPadding, 1, 0)
            end
            
            Library:AddToRegistry(TabButton, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });
    
            local TabButtonLabel = Library:CreateLabel({
                Position = _UDim2New(0, 0, 0, 0);
                Size = _UDim2New(1, 0, 1, -1);
                Text = Name;
                ZIndex = 1;
                TextSize = 14;
    
                Parent = TabButton;
            });
            
            Library:AddToRegistry(TabButtonLabel, {
                TextColor3 = 'FontColorDark';
            });
            
            local Blocker = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderSizePixel = 0;
                Position = _UDim2New(0, 0, 1, 0);
                Size = _UDim2New(1, 0, 0, 2);
                BackgroundTransparency = 1;
                ZIndex = 3;
                Parent = TabButton;
            });
    
            Library:AddToRegistry(Blocker, {
                BackgroundColor3 = 'MainColor';
            });
    
            local TabFrame = Library:Create('Frame', {
                Name = 'TabFrame',
                BackgroundTransparency = 1;
                Position = _UDim2New(0, 0, 0, 0);
                Size = _UDim2New(1, 0, 1, 0);
                Visible = false;
                ZIndex = 2;
                Parent = TabContainer;
            });
            Tab.MainFrame = TabFrame
    
            local LeftSide = Library:Create('ScrollingFrame', {
                BackgroundTransparency = 1;
                BorderSizePixel = 0;
                Position = _UDim2New(0, 8 - 1, 0, 8 - 1);
                Size = _UDim2New(0.33525, -12 + 2, 0, 507 + 12);
                CanvasSize = _UDim2New(0, 0, 0, 0);
                BottomImage = '';
                TopImage = '';
                ScrollBarThickness = 0;
                ZIndex = 2;
                Parent = TabFrame;
            });
    
            local CenterSide = Library:Create('ScrollingFrame', {
                BackgroundTransparency = 1;
                BorderSizePixel = 0;
                Position = _UDim2New(0.3325, 4 + 1, 0, 8 - 1);
                Size = _UDim2New(0.33525, -12 + 2, 0, 507 + 12);
                CanvasSize = _UDim2New(0, 0, 0, 0);
                BottomImage = '';
                TopImage = '';
                ScrollBarThickness = 0;
                ZIndex = 2;
                Parent = TabFrame;
            });
    
            local RightSide = Library:Create('ScrollingFrame', {
                BackgroundTransparency = 1;
                BorderSizePixel = 0;
                Position = _UDim2New(0.664, 4 + 1, 0, 8 - 1);
                Size = _UDim2New(0.33525, -12 + 2, 0, 507 + 12);
                CanvasSize = _UDim2New(0, 0, 0, 0);
                BottomImage = '';
                TopImage = '';
                ScrollBarThickness = 0;
                ZIndex = 2;
                Parent = TabFrame;
            });
    
            Library:Create('UIListLayout', {
                Padding = _UDimNew(0, 8);
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                HorizontalAlignment = Enum.HorizontalAlignment.Center;
                Parent = LeftSide;
            });
    
            Library:Create('UIListLayout', {
                Padding = _UDimNew(0, 8);
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                HorizontalAlignment = Enum.HorizontalAlignment.Center;
                Parent = RightSide;
            }); 
    
            Library:Create('UIListLayout', {
                Padding = _UDimNew(0, 8);
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                HorizontalAlignment = Enum.HorizontalAlignment.Center;
                Parent = CenterSide;
            }); 
    
            for _, Side in next, { LeftSide, RightSide, CenterSide } do
                _GetPropertyChangedSignal(Side:WaitForChild('UIListLayout'), 'AbsoluteContentSize'):Connect(function()
                    Side.CanvasSize = _UDim2fromOffset(0, Side.UIListLayout.AbsoluteContentSize.Y);
                end);
            end;
    
            function Tab:ShowTab() ------ showing tab
                for _, Tab in next, Window.Tabs do
                    Tab:HideTab();
                end;

                Blocker.BackgroundTransparency = 0;
                TabButton.BackgroundColor3 = Library.MainColor;
                Library.RegistryMap[TabButton].Properties.BackgroundColor3 = 'MainColor';
                TabButtonLabel.TextColor3 = Library.AccentColor;
                Library.RegistryMap[TabButtonLabel].Properties.TextColor3 = 'AccentColor';
                TabFrame.Visible = true;
            end;
    
            function Tab:HideTab()

                Blocker.BackgroundTransparency = 1;
                TabButton.BackgroundColor3 = Library.BackgroundColor;
                Library.RegistryMap[TabButton].Properties.BackgroundColor3 = 'BackgroundColor';
                TabButtonLabel.TextColor3 = Library.FontColorDark
                Library.RegistryMap[TabButtonLabel].Properties.TextColor3 = 'FontColorDark';
                TabFrame.Visible = false;
            end;
    
            function Tab:SetLayoutOrder(Position)
                TabButton.LayoutOrder = Position;
                TabListLayout:ApplyLayout();
            end;
    
            function Tab:AddGroupbox(Info)
                local Groupbox = {};
    
                local BoxOuter = Library:Create('Frame', {
                    BackgroundColor3 = Library.BackgroundColor;
                    BorderColor3 = Library.BorderColor;
                    BorderMode = Enum.BorderMode.Inset;
                    Size = _UDim2New(1, 0, 0, 507 + 2);
                    ZIndex = 2;
                    Parent = Info.Side == 1 and LeftSide or Info.Side == 3 and CenterSide or RightSide;
                });
    
                Library:AddToRegistry(BoxOuter, {
                    BackgroundColor3 = 'BackgroundColor';
                    BorderColor3 = 'OutlineColor';
                });
    
                local BoxInner = Library:Create('Frame', {
                    BackgroundColor3 = Library.BackgroundColor;
                    BorderColor3 = _Color3New(0, 0, 0);
                    BorderSizePixel = 0;
                    -- BorderMode = Enum.BorderMode.Inset;
                    Size = _UDim2New(1, -2, 1, -2);
                    Position = _UDim2New(0, 1, 0, 1);
                    ZIndex = 4;
                    Parent = BoxOuter;
                });
    
                Library:AddToRegistry(BoxInner, {
                    BackgroundColor3 = 'BackgroundColor';
                });
    
                local Highlight = Library:Create('Frame', {
                    BackgroundColor3 = _Color3FromRGB(255,255,255);
                    BackgroundTransparency = 0.9;
                    BorderSizePixel = 0;
                    Position = _UDim2New(0, 4, 0, 32 - 4);
                    Size = _UDim2New(0.96, 0, 0, 1);
                    ZIndex = 5;
                    Parent = BoxInner;
                });

                local GroupboxLabel = Library:CreateLabel({
                    Size = _UDim2New(1, 0, 0, 18);
                    Position = _UDim2New(0, 6, 0, 5);
                    TextColor3 = Library.AccentColor;
                    TextSize = 14;
                    Text = Info.Name;
                    TextXAlignment = Enum.TextXAlignment.Left;
                    ZIndex = 5;
                    Parent = BoxInner;
                });

                Library:AddToRegistry(GroupboxLabel, {
                    TextColor3 = 'AccentColor';
                });

                local Container = Library:Create('Frame', {
                    BackgroundTransparency = 1;
                    Position = _UDim2New(0, 4, 0, 40-4);
                    Size = _UDim2New(1, -4, 2, -40);
                    ZIndex = 1;
                    Parent = BoxInner;
                });
    
                Library:Create('UIListLayout', {
                    FillDirection = Enum.FillDirection.Vertical;
                    SortOrder = Enum.SortOrder.LayoutOrder;
                    Parent = Container;
                });
    
                function Groupbox:Resize()
                    local Size = 0;
    
                    for _, Element in next, _GetChildren(Groupbox.Container) do
                        if (not _IsA(Element, 'UIListLayout')) and Element.Visible then
                            Size = Size + Element.Size.Y.Offset;
                        end;
                    end;
    
                    BoxOuter.Size = _UDim2New(1, 0, 0, 20 + Size + 2 + 22 - 4);
                end;
    
                Groupbox.Container = Container;
                setmetatable(Groupbox, BaseGroupbox);
    
                Groupbox:AddBlank(3);
                Groupbox:Resize();
    
                Tab.Groupboxes[Info.Name] = Groupbox;
    
                return Groupbox;
            end;
    
            function Tab:AddLeftGroupbox(Name)
                return Tab:AddGroupbox({ Side = 1; Name = Name; });
            end;
    
            function Tab:AddCenterGroupbox(Name)
                return Tab:AddGroupbox({ Side = 3; Name = Name; });
            end;
    
            function Tab:AddRightGroupbox(Name)
                return Tab:AddGroupbox({ Side = 2; Name = Name; });
            end;
    
            function Tab:AddTabbox(Info)
                local Tabbox = {
                    Tabs = {};
                };
    
                local BoxOuter = Library:Create('Frame', {
                    BackgroundColor3 = Library.BackgroundColor;
                    BorderColor3 = Library.OutlineColor;
                    BorderMode = Enum.BorderMode.Inset;
                    Size = _UDim2New(1, 0, 0, 509);
                    ZIndex = 2;
                    Parent = Info.Side == 1 and LeftSide or Info.Side == 3 and CenterSide or RightSide;
                });
    
                Library:AddToRegistry(BoxOuter, {
                    BackgroundColor3 = 'BackgroundColor';
                    BorderColor3 = 'OutlineColor';
                });
    
                local BoxInner = Library:Create('Frame', {
                    BackgroundColor3 = Library.BackgroundColor;
                    BorderColor3 = _Color3New(0, 0, 0);
                    -- BorderMode = Enum.BorderMode.Inset;
                    BorderSizePixel = 0;
                    Size = _UDim2New(1, -2, 1, -2);
                    Position = _UDim2New(0, 1, 0, 1);
                    ZIndex = 4;
                    Parent = BoxOuter;
                });
    
                Library:AddToRegistry(BoxInner, {
                    BackgroundColor3 = 'BackgroundColor';
                });

                local TabboxTitle = Library:CreateLabel({
                    Size = _UDim2New(1, 0, 0, 18);
                    Position = _UDim2New(0, 6, 0, 5);
                    TextColor3 = Library.AccentColor;
                    TextSize = 14;
                    Text = Info.Title or "Tabbox Title";
                    TextXAlignment = Enum.TextXAlignment.Left;
                    ZIndex = 5;
                    Parent = BoxInner;
                });
            
                Library:AddToRegistry(TabboxTitle, {
                    TextColor3 = 'AccentColor';
                });
    
                local Highlight = Library:Create('Frame', {
                    BackgroundColor3 = _Color3FromRGB(255,255,255);
                    BackgroundTransparency = 0.9;
                    BorderSizePixel = 0;
                    Position = _UDim2New(0, 4, 0, 28);
                    Size = _UDim2New(0.96, 0, 0, 1);
                    ZIndex = 10;
                    Parent = BoxInner;
                });
    
                local TabboxButtons = Library:Create('Frame', {
                    BackgroundTransparency = 1;
                    Position = _UDim2New(0, 0, 0, 35 - 4);
                    Size = _UDim2New(1, 0, 0, 18);
                    ZIndex = 5;
                    Parent = BoxInner;
                });
    
                Library:Create('UIListLayout', {
                    FillDirection = Enum.FillDirection.Horizontal;
                    HorizontalAlignment = Enum.HorizontalAlignment.Left;
                    SortOrder = Enum.SortOrder.LayoutOrder;
                    Parent = TabboxButtons;
                });
    
                function Tabbox:AddTab(Name)
                    local Tab = {};
    
                    local TextSizeX, _ = Library:GetTextBounds(Name, Library.Font, 14);

                    local Button = Library:Create('Frame', {
                        BackgroundColor3 = Library.BackgroundColor;
                        BorderColor3 = _Color3New(0, 0, 0);
                        BorderSizePixel = 0;
                        Size = _UDim2New(0, TextSizeX + 10, 1, 0);
                        ZIndex = 6;
                        Parent = TabboxButtons;
                    });
    
                    Library:AddToRegistry(Button, {
                        BackgroundColor3 = 'BackgroundColor';
                    });
    
                    local ButtonLabel = Library:CreateLabel({
                        Size = _UDim2New(1, 0, 1, 0);
                        TextSize = 14;
                        Text = Name;
                        TextXAlignment = Enum.TextXAlignment.Center;
                        ZIndex = 7;
                        Parent = Button;
                    });

                    Library:AddToRegistry(ButtonLabel, {
                        TextColor3 = 'FontColorDark';
                    });
    
                    local Underline = Library:Create('Frame', {
                        BackgroundColor3 = Library.AccentColor;
                        BorderSizePixel = 0;
                        Position = _UDim2New(0.5, -TextSizeX / 2, 1, -1);
                        Size = _UDim2New(0, TextSizeX, 0, 2);
                        Visible = false;
                        ZIndex = 9;
                        Parent = Button;
                    });
    
                    Library:AddToRegistry(Underline, {
                        BackgroundColor3 = 'AccentColor';
                    });
    
                    local Container = Library:Create('Frame', {
                        BackgroundTransparency = 1;
                        Position = _UDim2New(0, 4, 0, 60 - 4);
                        Size = _UDim2New(1, -4, 1, -40);
                        ZIndex = 1;
                        Visible = false;
                        Parent = BoxInner;
                    });
    
                    Library:Create('UIListLayout', {
                        FillDirection = Enum.FillDirection.Vertical;
                        SortOrder = Enum.SortOrder.LayoutOrder;
                        Parent = Container;
                    });
    
                    function Tab:Show()
                        for _, Tab in next, Tabbox.Tabs do
                            Tab:Hide();
                        end;
    
                        Container.Visible = true;
                        Underline.Visible = true;
    
                        ButtonLabel.TextColor3 = Library.FontColor
                        Library.RegistryMap[ButtonLabel].Properties.TextColor3 = 'FontColor';
    
                        
                        Tab:Resize();
                    end;
    
                    function Tab:Hide()
                        Container.Visible = false;
                        Underline.Visible = false;
    
                        ButtonLabel.TextColor3 = Library.FontColorDark
                        Library.RegistryMap[ButtonLabel].Properties.TextColor3 = 'FontColorDark';
    
                    end;
    
                    function Tab:Resize()
                        local TabCount = 0;
    
                        if (not Container.Visible) then
                            return;
                        end;
    
                        local Size = 0;
    
                        for _, Element in next, _GetChildren(Tab.Container) do
                            if (not _IsA(Element, 'UIListLayout')) and Element.Visible then
                                Size = Size + Element.Size.Y.Offset;
                            end;
                        end;
    
                        BoxOuter.Size = _UDim2New(1, 0, 0, 20 + Size + 2 + 40 - 4);
                    end;
    
                    Button.InputBegan:Connect(function(Input)
                        if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                            Tab:Show();
                            Tab:Resize();
                        end;
                    end);
    
                    Tab.Container = Container;
                    Tabbox.Tabs[Name] = Tab;
    
                    setmetatable(Tab, BaseGroupbox);
    
                    Tab:AddBlank(3);
                    Tab:Resize();
    
                    -- Show first tab (number is 2 cus of the UIListLayout that also sits in that instance)
                    if #_GetChildren(TabboxButtons) == 2 then
                        Tab:Show();
                    end;
    
                    return Tab;
                end;
    
                Tab.Tabboxes[Info.Name or ''] = Tabbox;
    
                return Tabbox;
            end;
    
            function Tab:AddLeftTabbox(Title)
                return Tab:AddTabbox({ Title = Title, Side = 1; });
            end;
            
            function Tab:AddCenterTabbox(Title)
                return Tab:AddTabbox({ Title = Title, Side = 3; });
            end;
    
            function Tab:AddRightTabbox(Title)
                return Tab:AddTabbox({ Title = Title, Side = 2; });
            end;
    
            TabButton.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    Tab:ShowTab();
                end;
            end);
    
            -- This was the first tab added, so we show it by default.
            if #_GetChildren(TabContainer) == 1 then
                Tab:ShowTab();
            end;
    
            Window.Tabs[Name] = Tab;
            return Tab;
        end;
    
        local ModalElement = Library:Create('TextButton', {
            BackgroundTransparency = 1;
            Size = _UDim2New(0, 0, 0, 0);
            Visible = true;
            Text = '';
            Modal = false;
            Parent = ScreenGui;
        });
        
        local TransparencyCache = {};
        local ConnectionCache = {};
        local Toggled = false;
        local Fading = false;
        getgenv().ToggleMenu = Toggled
    
        function Library:Toggle()
            if Fading then
                return;
            end;
    
            local FadeTime = Config.MenuFadeTime;
            Fading = true;
            Toggled = (not Toggled);
            ModalElement.Modal = Toggled;
    
            getgenv().ToggleMenu = Toggled
            
            if Toggled then
                -- A bit scuffed, but if we're going from not toggled -> toggled we want to show the frame immediately so that the fade is visible.
                Outer.Visible = true;
    
                _TaskSpawn(function()
                    -- TODO: add cursor fade?
                    local State = InputService.MouseIconEnabled;
                    local State2 = InputService.MouseBehavior;

                    local Cursor = Drawing.new('Triangle');
                    Cursor.Thickness = 1;
                    Cursor.Filled = true;
                    Cursor.Visible = true;
    
                    local CursorOutline = Drawing.new('Triangle');
                    CursorOutline.Thickness = 1;
                    CursorOutline.Filled = false;
                    CursorOutline.ZIndex = 2
                    CursorOutline.Color = _Color3New(0, 0, 0);
                    CursorOutline.Visible = true;
    
                    local BoxFill = Drawing.new("Square")
                    BoxFill.Thickness = 1;
                    BoxFill.Filled = true;
                    BoxFill.Color = _Color3New(0, 0, 0);
                    BoxFill.Visible = true;
                    BoxFill.Size = _Vector2New(6,6)
    
                    local BoxFill2 = Drawing.new("Square")
                    BoxFill2.Thickness = 1;
                    BoxFill2.Filled = true;
                    BoxFill2.Color = _Color3New(0, 0, 0);
                    BoxFill2.Visible = true;
                    BoxFill2.Size = _Vector2New(10,4)
    
                    local BoxFill3 = Drawing.new("Square")
                    BoxFill3.Thickness = 1;
                    BoxFill3.Filled = true;
                    BoxFill3.Color = _Color3New(0, 0, 0);
                    BoxFill3.Visible = true;
                    BoxFill3.Size = _Vector2New(4,5)
    
                    local BoxFill4 = Drawing.new("Square")
                    BoxFill4.Thickness = 1;
                    BoxFill4.Filled = true;
                    BoxFill4.Color = _Color3New(0, 0, 0);
                    BoxFill4.Visible = true;
                    BoxFill4.Size = _Vector2New(4,4)
    
                    while Toggled and not Library.Unloaded do
                        InputService.MouseIconEnabled = false;
                        InputService.MouseBehavior = Enum.MouseBehavior.Default
    
                        local mPos = _GetMouseLocation(InputService);
    
                        Cursor.Color = Library.AccentColor;
    
                        BoxFill.Color = Library.AccentColor
                        BoxFill.Position = mPos + _Vector2New(3,3)
    
                        BoxFill2.Color = Library.AccentColor
                        BoxFill2.Position = mPos + _Vector2New(3,5)
    
                        BoxFill3.Color = Library.AccentColor
                        BoxFill3.Position = mPos + _Vector2New(5,8)
    
                        BoxFill4.Color = Library.AccentColor
                        BoxFill4.Position = mPos + _Vector2New(7,7)
    
                        local outerA = _Vector2New(mPos.X, mPos.Y)
                        local outerB = _Vector2New(mPos.X + 16, mPos.Y + 6)
                        local outerC = _Vector2New(mPos.X + 6, mPos.Y + 16)
                        
                        CursorOutline.PointA = outerA
                        CursorOutline.PointB = outerB
                        CursorOutline.PointC = outerC
        
                        local centroid = (outerA + outerB + outerC) / 3
                
                        Cursor.PointA = (centroid + (outerA - centroid) * 0.7)
                        Cursor.PointB = (centroid + (outerB - centroid) * 0.7) + _Vector2New(2,1)
                        Cursor.PointC = (centroid + (outerC - centroid) * 0.7) + _Vector2New(1,2)
    
                        RenderStepped:Wait();
                    end;
    
                    InputService.MouseIconEnabled = State;
                    InputService.MouseBehavior = State2
    
                    Cursor:Remove();
                    CursorOutline:Remove();
                    BoxFill:Remove()
                    BoxFill2:Remove()
                    BoxFill3:Remove()
                    BoxFill4:Remove()
                end);
            else
                for Frame, Val in next, Library.OpenedFrames do
                    Frame.Visible = false;
                    Library.OpenedFrames[Frame] = nil;
                end;
            end;
        
            Outer.Visible = Toggled;
    
            Fading = false;
        end
    
        Library:GiveSignal(InputService.InputBegan:Connect(function(Input, Processed)
            if _Type(Library.ToggleKeybind) == 'table' and Library.ToggleKeybind.Type == 'KeyPicker' then
                if Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode.Name == Library.ToggleKeybind.Value then
                    _TaskSpawn(Library.Toggle)
                end
            elseif Input.KeyCode == Enum.KeyCode.RightControl or (Input.KeyCode == Enum.KeyCode.RightShift and (not Processed)) then
                _TaskSpawn(Library.Toggle)
            end
        end))
    
        if Config.AutoShow then _TaskSpawn(Library.Toggle) end
    
        Window.Holder = Outer;
    
        return Window;
    end;
    
    local function OnPlayerChange()
        local PlayerList = GetPlayersString();
    
        for _, Value in next, Options do
            if Value.Type == 'Dropdown' and Value.SpecialType == 'Player' then
                Value:SetValues(PlayerList);
            end;
        end;
    end;
    
    Library:AddSignal(Players.PlayerAdded, OnPlayerChange)
    Library:AddSignal(Players.PlayerRemoving, OnPlayerChange)
    
    getgenv().Library = Library
    
    local function ConnectKeyPickerToToggle(toggle, keypicker)
        local Toggle = Toggles[toggle]
        local Keypicker = Options[keypicker]
        if Toggle and Keypicker and Keypicker.ConnectedToggles then
            _TableInsert(Keypicker.ConnectedToggles, Toggle)
        end
    end
    getgenv().ConnectKeyPickerToToggle = ConnectKeyPickerToToggle

local Library = getgenv().Library
local ThemeManager = getgenv().ThemeManager
local SaveManager = getgenv().SaveManager
local EspPreviewManager = getgenv().EspPreviewManager
local Toggles = getgenv().Toggles
local Options = getgenv().Options
local Flags = getgenv().Flags

return Library, ThemeManager, SaveManager, EspPreviewManager, Toggles, Options, Flags
