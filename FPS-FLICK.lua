
-- Detected obfuscation: Luraph v15
-- Local names are inferred from use (the original names are not in the bytecode)

if not game:IsLoaded() then
	game.Loaded:Wait()
end

if not getinfo then
end

local tbl = {}
local v = nil
setthreadidentity(2)
local v2 = nil

for _, v3 in getgc(true) do
	if typeof(v3) == "table" then
		local value = rawget(v3, "Detected")
		local value2 = rawget(v3, "Kill")

		if typeof(value) == "function" and not v then
			v = value

			hookfunction(v, function()
				return true
			end)

			table.insert(tbl, v)
		end

		if rawget(v3, "Variables") and rawget(v3, "Process") and typeof(value2) == "function" and not v2 then
			hookfunction(value2, function()
			end)

			table.insert(tbl, value2)
			v2 = value2
		end
	end
end

local v3 = nil
local v4 = newcclosure

v3 = hookfunction(getrenv().debug.info, v4(function(...)
	local v5 = table.pack(...)
	if v and ... == v then
		return coroutine.yield(coroutine.running())
	end
	return v3(table.unpack(v5, 1, v5.n))
end))

setthreadidentity(7)
task.wait(3)
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local localPlayer = Players.LocalPlayer
local currentCamera = workspace.CurrentCamera

pcall(function()
	NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
end)

local v5 = nil
local v6 = nil

local function fn()
	local response = nil

	pcall(function()
		response = game:HttpGet("https://raw.githubusercontent.com/platinww/CrustyMain/refs/heads/main/universal/ftgs.lua")
	end)

	if not response or response == "" or response:match("404: Not Found") then
		local request_ = request or http_request or syn and syn.request or fluxus and fluxus.request

		if request_ then
			pcall(function()
				local v7 = request_({
					Url = "https://raw.githubusercontent.com/platinww/CrustyMain/refs/heads/main/universal/ftgs.lua",
					Method = "GET",
				})

				if v7 and v7.Success and v7.Body and v7.Body ~= "" and not v7.Body:match("404: Not Found") then
					response = v7.Body
				end
			end)
		end
	end

	if response and response ~= "" then
		response = response:gsub("local j=\"https://platinstudio.xyz/raw/WindIcons\"", "local j=\"https://raw.githubusercontent.com/eeeiqjjj/icon.github.io/refs/heads/main/lucide.lua\"")
		response = response:gsub("if u==false or not l then return nil end", "if u==false or not l then return setmetatable({Url=\"\",ImageRectOffset=Vector2.zero,ImageRectSize=Vector2.zero},{__index=function(t,k)if k==1 then return \"\" elseif k==2 then return{ImageRectPosition=Vector2.zero,ImageRectSize=Vector2.zero}end end}) end")
		response = response:gsub("if not%%(ok and data%%)then return nil end", "if not(ok and data)then return setmetatable({Url=\"\",ImageRectOffset=Vector2.zero,ImageRectSize=Vector2.zero},{__index=function(t,k)if k==1 then return \"\" elseif k==2 then return{ImageRectPosition=Vector2.zero,ImageRectSize=Vector2.zero}end end}) end")
		local chunk = loadstring(response)

		if chunk then
			v5 = chunk()
		end
	end
end

fn()

if not v5 then
	warn("[Uwu Hub] Failed to load WindUI!")
	return
end

local function fn2()
	if v5 and v5.AddTheme then
		pcall(function()
			v5:AddTheme({
				Name = "Cyberpunk",
				Accent = Color3.fromHex("#ff0055"),
				Dialog = Color3.fromHex("#0f1123"),
				Outline = Color3.fromHex("#00f0ff"),
				Text = Color3.fromHex("#ffffff"),
				Placeholder = Color3.fromHex("#00f0ff"),
				Background = Color3.fromHex("#080914"),
				Button = Color3.fromHex("#1a0033"),
				Icon = Color3.fromHex("#00f0ff"),
				Toggle = Color3.fromHex("#ff0055"),
				Checkbox = Color3.fromHex("#00f0ff"),
			})

			v5:AddTheme({
				Name = "Dracula",
				Accent = Color3.fromHex("#bd93f9"),
				Dialog = Color3.fromHex("#21222c"),
				Outline = Color3.fromHex("#ff79c6"),
				Text = Color3.fromHex("#f8f8f2"),
				Placeholder = Color3.fromHex("#8be9fd"),
				Background = Color3.fromHex("#282a36"),
				Button = Color3.fromHex("#44475a"),
				Icon = Color3.fromHex("#8be9fd"),
				Toggle = Color3.fromHex("#50fa7b"),
				Checkbox = Color3.fromHex("#bd93f9"),
			})

			v5:AddTheme({
				Name = "Tokyo Night",
				Accent = Color3.fromHex("#7aa2f7"),
				Dialog = Color3.fromHex("#16161e"),
				Outline = Color3.fromHex("#7dcfff"),
				Text = Color3.fromHex("#c0caf5"),
				Placeholder = Color3.fromHex("#bb9af7"),
				Background = Color3.fromHex("#1a1b26"),
				Button = Color3.fromHex("#24283b"),
				Icon = Color3.fromHex("#bb9af7"),
				Toggle = Color3.fromHex("#9ece6a"),
				Checkbox = Color3.fromHex("#7aa2f7"),
			})

			v5:AddTheme({
				Name = "Vaporwave",
				Accent = Color3.fromHex("#ff71ce"),
				Dialog = Color3.fromHex("#20003b"),
				Outline = Color3.fromHex("#05ffa1"),
				Text = Color3.fromHex("#fffbfe"),
				Placeholder = Color3.fromHex("#01cdfe"),
				Background = Color3.fromHex("#18002e"),
				Button = Color3.fromHex("#2d0059"),
				Icon = Color3.fromHex("#01cdfe"),
				Toggle = Color3.fromHex("#05ffa1"),
				Checkbox = Color3.fromHex("#ff71ce"),
			})

			v5:AddTheme({
				Name = "Onyx Gold",
				Accent = Color3.fromHex("#ffd700"),
				Dialog = Color3.fromHex("#141414"),
				Outline = Color3.fromHex("#ffd700"),
				Text = Color3.fromHex("#ffffff"),
				Placeholder = Color3.fromHex("#f3c623"),
				Background = Color3.fromHex("#0d0d0d"),
				Button = Color3.fromHex("#222222"),
				Icon = Color3.fromHex("#f3c623"),
				Toggle = Color3.fromHex("#ffd700"),
				Checkbox = Color3.fromHex("#ffd700"),
			})

			v5:AddTheme({
				Name = "Blood Moon",
				Accent = Color3.fromHex("#ff0000"),
				Dialog = Color3.fromHex("#1e0505"),
				Outline = Color3.fromHex("#ff1a1a"),
				Text = Color3.fromHex("#ffffff"),
				Placeholder = Color3.fromHex("#ff4d4d"),
				Background = Color3.fromHex("#120303"),
				Button = Color3.fromHex("#330000"),
				Icon = Color3.fromHex("#ff4d4d"),
				Toggle = Color3.fromHex("#ff0000"),
				Checkbox = Color3.fromHex("#ff0000"),
			})
		end)
	end
end

fn2()
local str = "Dark"

pcall(function()
	if isfile and isfile("UwuHub/default_theme.txt") and readfile then
		local str2 = readfile("UwuHub/default_theme.txt"):gsub("%s+", "")

		if str2 ~= "" and v5 and v5.Themes and v5.Themes[str2] then
			str = str2
		end
	end
end)

local str2 = "https://platinstudio.xyz"

local function fn3()
	local str3 = ""

	pcall(function()
		if gethwid then
			str3 = gethwid()
		elseif get_hwid then
			str3 = get_hwid()
		elseif syn and syn.get_hwid then
			str3 = syn.get_hwid()
		elseif fluxus and fluxus.get_device_id then
			str3 = fluxus.get_device_id()
		elseif identifyexecutor and game:GetService("RbxAnalyticsService") then
			str3 = identifyexecutor() .. "_" .. game:GetService("RbxAnalyticsService"):GetClientId()
		elseif game:GetService("RbxAnalyticsService") then
			str3 = game:GetService("RbxAnalyticsService"):GetClientId()
		end
	end)

	if not str3 or str3 == "" then
		pcall(function()
			str3 = tostring(game:GetService("Players").LocalPlayer.UserId)
		end)
	end

	return tostring(str3 or ""):gsub("%s+", "")
end

local v7 = fn3()

local function fn4(arg, arg2, body)
	local request_ = request or http_request or syn and syn.request
	local request_2

	if request_ then
		request_2 = request_
	else
		request_2 = fluxus and fluxus.request
	end

	local request_3 = request_2 or http and http.request

	if request_3 then
		local v8 = nil

		pcall(function()
			local tbl2 = { Url = arg }
			local v9 = arg2
			local method

			if arg2 then
				method = v9
			else
				method = "GET"
			end

			tbl2.Method = method
			tbl2.Headers = { ["Content-Type"] = "application/json", ["x-hwid"] = v7 }
			tbl2.Body = body
			v8 = request_3(tbl2)
		end)

		if v8 and v8.Body then
			return v8.Body
		end
	end

	if arg2 == "GET" or not arg2 then
		local ok, result = pcall(function()
			return game:HttpGet(arg)
		end)

		if ok and result then
			return result
		end
	end

	return nil
end

local function fn5(arg)
	if not arg or arg == "" then
		return false, "Please enter an access key."
	end
	local str3 = arg:gsub("%s+", "")
	local get = fn4(str2 .. "/key/verify-key?key=" .. HttpService:UrlEncode(str3) .. "&hwid=" .. HttpService:UrlEncode(v7), "GET")
	if not get then
		return false, "Failed to connect to platinstudio.xyz server."
	end
	local data = nil

	pcall(function()
		data = HttpService:JSONDecode(get)
	end)

	if data and data.success == true then
		return true, data.message or "Key verified successfully!", data
	end
	local error = data and data.error or "Invalid Key"

	if error == "key hwid doesnt same" then
		error = "HWID Mismatch! Please reset your HWID at platinstudio.xyz/key/reset-hwid"
	elseif error == "Key expired" then
		error = "Key has expired! Get a new key at platinstudio.xyz/key/get-key"
	elseif error == "Key not found" then
		error = "Invalid Key! This key does not exist."
	end

	return false, error, data
end

local function fn6()
	local txt

	pcall(function()
		if isfile and isfile("UwuHub/key.txt") then
			txt = readfile("UwuHub/key.txt")
		end
	end)

	return txt
end

local function fn7(arg)
	pcall(function()
		if isfolder and not isfolder("UwuHub") then
			makefolder("UwuHub")
		end

		if writefile then
			writefile("UwuHub/key.txt", arg)
		end
	end)
end

local flag = false
local fire = nil
local flag2 = false
local flag3 = false
local flag4 = false
local tbl2 = {}
local flag5 = false
local flag6 = false

local function fn8(arg)
	flag6 = arg

	if arg then
		pcall(function()
			if setfpscap then
				setfpscap(999)
			end

			local level01 = Enum.QualityLevel.Level01
			settings().Rendering.QualityLevel = level01
			settings().Network.IncomingReplicationLag = 0

			for k, v8 in pairs({
				FFlagDisablePostFx = "True",
				FIntRenderShadowIntensity = "0",
				DFIntTextureQualityOverride = "1",
				FIntFRMMinGrassDistance = "0",
				FIntFRMMaxGrassDistance = "0",
			}) do
				pcall(function()
					if setfflag then
						setfflag(k, v8)
					end
				end)
			end
		end)

		pcall(function()
			Lighting.GlobalShadows = false
			Lighting.FogEnd = 9e9
			Lighting.Brightness = 1

			for _, child in ipairs(Lighting:GetChildren()) do
				if child:IsA("PostEffect") or child:IsA("Atmosphere") or child:IsA("Clouds") or child:IsA("Sky") then
					child.Enabled = false
				end
			end
		end)

		local function fn9(arg2)
			pcall(function()
				if arg2:IsA("Decal") or arg2:IsA("Texture") then
					arg2:Destroy()
				elseif arg2:IsA("ParticleEmitter") or arg2:IsA("Trail") or arg2:IsA("Beam") or arg2:IsA("Smoke") or arg2:IsA("Fire") or arg2:IsA("Sparkles") then
					arg2.Enabled = false
				elseif arg2:IsA("BasePart") and not arg2:IsA("MeshPart") then
					arg2.Material = Enum.Material.SmoothPlastic
					arg2.CastShadow = false
					arg2.Reflectance = 0
				end
			end)
		end

		for _, descendant in ipairs(workspace:GetDescendants()) do
			fn9(descendant)
		end

		if workspace.Terrain then
			pcall(function()
				workspace.Terrain.WaterWaveSize = 0
				workspace.Terrain.WaterWaveSpeed = 0
				workspace.Terrain.WaterReflectance = 0
				workspace.Terrain.WaterTransparency = 0
			end)
		end
	end
end

workspace.DescendantAdded:Connect(function(descendant)
	if flag6 then
		pcall(function()
			if descendant:IsA("Decal") or descendant:IsA("Texture") then
				descendant:Destroy()
			elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") or descendant:IsA("Beam") or descendant:IsA("Smoke") or descendant:IsA("Fire") or descendant:IsA("Sparkles") then
				descendant.Enabled = false
			elseif descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
				descendant.Material = Enum.Material.SmoothPlastic
				descendant.CastShadow = false
				descendant.Reflectance = 0
			end
		end)
	end
end)

local function fn9()
	if flag3 then
		task.spawn(function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Command"):FireServer("Play")
			local spectateGui = localPlayer.PlayerGui:FindFirstChild("SpectateGui")

			if spectateGui then
				spectateGui:Destroy()
			end
		end)
	end
end

local function fn10(character)
	local humanoid = character:WaitForChild("Humanoid", 5)

	if humanoid then
		humanoid.Died:Connect(function()
			fn9()
		end)
	end
end

if localPlayer.Character then
	fn10(localPlayer.Character)
end

localPlayer.CharacterAdded:Connect(fn10)

pcall(function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StartSpectating").OnClientEvent:Connect(function()
		fn9()
	end)
end)

localPlayer.PlayerGui.ChildAdded:Connect(function(child)
	if flag3 and child.Name == "SpectateGui" then
		task.defer(function()
			fn9()
		end)
	end
end)

local function fn11(player)
	if tbl2[player] then
		pcall(function()
			tbl2[player]:Destroy()
		end)

		tbl2[player] = nil
	end

	if player.Character then
		local uwuESP = player.Character:FindFirstChild("UwuESP")

		if uwuESP then
			pcall(function()
				uwuESP:Destroy()
			end)
		end
	end
end

local function fn12(player)
	if player == localPlayer then
		return
	end

	local function fn13(character)
		if not flag4 then
			return
		end
		fn11(player)
		local highlight = Instance.new("Highlight")
		highlight.Name = "UwuESP"
		highlight.Adornee = character
		highlight.FillColor = Color3.fromRGB(255, 60, 60)
		highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
		highlight.FillTransparency = 0.5
		highlight.OutlineTransparency = 0
		highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlight.Parent = character
		tbl2[player] = highlight
	end

	if player.Character then
		fn13(player.Character)
	end

	player.CharacterAdded:Connect(fn13)
end

for _, player in ipairs(Players:GetPlayers()) do
	fn12(player)
end

Players.PlayerAdded:Connect(fn12)
Players.PlayerRemoving:Connect(fn11)

local function fn13(arg)
	flag4 = arg

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= localPlayer then
			if arg then
				if player.Character then
					fn11(player)
					local highlight = Instance.new("Highlight")
					highlight.Name = "UwuESP"
					highlight.Adornee = player.Character
					highlight.FillColor = Color3.fromRGB(255, 60, 60)
					highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
					highlight.FillTransparency = 0.5
					highlight.OutlineTransparency = 0
					highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					highlight.Parent = player.Character
					tbl2[player] = highlight
				end
			else
				fn11(player)
			end
		end
	end
end

local flag7 = false
local n = 1.33

local function fn14()
	pcall(function()
		RunService:UnbindFromRenderStep("GameStretcher")
	end)

	if flag7 then
		RunService:BindToRenderStep("GameStretcher", Enum.RenderPriority.Last.Value, function()
			if currentCamera then
				currentCamera.CFrame = currentCamera.CFrame * CFrame.new(0, 0, 0, n, 0, 0, 0, 1, 0, 0, 0, 1)
			end
		end)
	end
end

local tbl3 = {
	Target1 = "rbxassetid://111096036182464",
	Circle1 = "rbxassetid://132476826867424",
	Cat1 = "rbxassetid://71595702163164",
	Circle2 = "rbxassetid://97295979014116",
	Fire1 = "rbxassetid://117629507426462",
	Bone = "rbxassetid://91332214450495",
	Heavy = "rbxassetid://117800574318822",
	Circle3 = "rbxassetid://133500073952194",
	Target2 = "rbxassetid://115549531310713",
	Cat2 = "rbxassetid://70624690737167",
	["Nyan Cat"] = "rbxassetid://95246331144167",
	Cat3 = "rbxassetid://115747384032954",
	["Minecraft Sword"] = "rbxassetid://103419271184489",
	["I show speed"] = "rbxassetid://96629117165250",
	Target3 = "rbxassetid://109472300803864",
	Anime1 = "rbxassetid://76347589206559",
	HelloKity = "rbxassetid://99592516454875",
	BaseplateDecal = "rbxassetid://83520160375628",
	TungTungTungSahur = "rbxassetid://128878142732909",
	Blackhole = "rbxassetid://126469024596619",
}

local tbl4 = {
	"Target1",
	"Circle1",
	"Cat1",
	"Circle2",
	"Fire1",
	"Bone",
	"Heavy",
	"Circle3",
	"Target2",
	"Cat2",
	"Nyan Cat",
	"Cat3",
	"Minecraft Sword",
	"I show speed",
	"Target3",
	"Anime1",
	"HelloKity",
	"BaseplateDecal",
	"TungTungTungSahur",
	"Blackhole",
}

local tbl5 = {
	"Dark",
	"Light",
	"Rose",
	"Aqua",
	"Emerald",
	"Midnight",
	"Cyberpunk",
	"Dracula",
	"Tokyo Night",
	"Vaporwave",
	"Onyx Gold",
	"Blood Moon",
}

local screenGui = nil
local imageLabel = nil
local enabled = false
local str3 = "Target1"
local n2 = 32

local function fn15()
	if not screenGui then
		screenGui = Instance.new("ScreenGui")
		screenGui.Name = "UwuCrosshair"
		screenGui.ResetOnSpawn = false
		screenGui.IgnoreGuiInset = true
		screenGui.DisplayOrder = 999999
		screenGui.Parent = gethui and gethui() or localPlayer:WaitForChild("PlayerGui")
		imageLabel = Instance.new("ImageLabel")
		imageLabel.Name = "Crosshair"
		imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
		imageLabel.Size = UDim2.fromOffset(n2, n2)
		imageLabel.BackgroundTransparency = 1
		imageLabel.ScaleType = Enum.ScaleType.Fit
		imageLabel.Parent = screenGui
	end

	imageLabel.Image = tbl3[str3] or ""
	imageLabel.Size = UDim2.fromOffset(n2, n2)
	screenGui.Enabled = enabled
end

local function fn16()
	local tbl6 = {
		SilentAim = flag,
		InstantRespawn = flag3,
		CustomCrosshair = enabled,
		CrosshairType = str3,
		CrosshairSize = n2,
		ESPPlayers = flag4,
		FPSBoost = flag6,
		GameStretcher = flag7,
		StretchFactor = math.floor(n * 100),
		Theme = str or "Dark",
		AutoLoad = flag5,
	}

	pcall(function()
		if isfolder and not isfolder("UwuHub") then
			makefolder("UwuHub")
		end

		if writefile then
			writefile("UwuHub/config.json", HttpService:JSONEncode(tbl6))
		end
	end)

	if v5 and v5.Notify then
		v5:Notify({ Title = "Config", Content = "Configuration saved successfully!", Duration = 3 })
	end
end

local function fn17()
	pcall(function()
		if isfile and isfile("UwuHub/config.json") and readfile then
			local json = readfile("UwuHub/config.json")
			local data = HttpService:JSONDecode(json)

			if data then
				if data.SilentAim ~= nil then
					flag = data.SilentAim
				end

				if data.InstantRespawn ~= nil then
					flag3 = data.InstantRespawn
				end

				if data.CustomCrosshair ~= nil then
					enabled = data.CustomCrosshair
					fn15()
				end

				if data.CrosshairType then
					str3 = data.CrosshairType
					fn15()
				end

				if data.CrosshairSize then
					n2 = data.CrosshairSize
					fn15()
				end

				if data.ESPPlayers ~= nil then
					fn13(data.ESPPlayers)
				end

				if data.FPSBoost ~= nil then
					fn8(data.FPSBoost)
				end

				if data.GameStretcher ~= nil then
					flag7 = data.GameStretcher

					if data.StretchFactor then
						n = data.StretchFactor / 100
					end

					fn14()
				end

				if data.Theme and v5 and v5.SetTheme then
					pcall(function()
						v5:SetTheme(data.Theme)
					end)

					str = data.Theme
				end

				if data.AutoLoad ~= nil then
					flag5 = data.AutoLoad
				end

				if v5 and v5.Notify then
					v5:Notify({ Title = "Config", Content = "Configuration loaded successfully!", Duration = 3 })
				end
			end
		elseif v5 and v5.Notify then
			v5:Notify({ Title = "Config", Content = "No saved config found!", Duration = 3 })
		end
	end)
end

local function fn18()
	if v6 then
		pcall(function()
			v6:Destroy()
		end)

		v6 = nil
	end

	if screenGui then
		pcall(function()
			screenGui:Destroy()
		end)

		screenGui = nil
	end

	pcall(function()
		RunService:UnbindFromRenderStep("GameStretcher")
	end)

	fn13(false)
end

pcall(function()
	if isfile and isfile("UwuHub/autoload.txt") and readfile then
		if readfile("UwuHub/autoload.txt"):match("true") then
			flag5 = true
			task.delay(0.5, fn17)
		end
	end
end)

local function fn19()
	if v6 then
		return
	end
	local v8 = v5
	local createWindow = v8.CreateWindow

	local tbl6 = {
		Title = "Uwu Hub | FPS Flick",
		Icon = "bird",
		Folder = "UwuHub",
		ToggleKey = Enum.KeyCode.G,
		Size = UDim2.fromOffset(650, 480),
		Transparent = false,
		Background = "",
	}

	local v9 = str
	local theme

	if str then
		theme = v9
	else
		theme = "Dark"
	end

	tbl6.Theme = theme
	tbl6.Author = "discord.gg/uwustudios"

	tbl6.User = {
		Enabled = true,
		Callback = function()
		end,
		Anonymous = false,
	}

	local color = Color3.fromHex

	tbl6.OpenButton = {
		Title = "Uwu Hub",
		CornerRadius = UDim.new(1, 0),
		StrokeThickness = 3,
		Enabled = true,
		Draggable = true,
		OnlyMobile = false,
		Scale = 0.5,
		Color = ColorSequence.new(Color3.fromHex("#A5B4FC"), color("#FFFFFF")),
	}

	v6 = createWindow(v8, tbl6)
	local v10 = v6:Tab({ Title = "Aim", Icon = "crosshair" })

	v10:Toggle({
		Title = "Silent Aim",
		Value = false,
		Callback = function(arg)
			flag = arg

			if arg and not flag2 then
				local ok, result = pcall(function()
					local BulletHandler = require(game:GetService("ReplicatedStorage").ModuleScripts.GunModules.BulletHandler)
					fire = BulletHandler.Fire

					BulletHandler.Fire = function(arg2)
						if flag then
							local mouseLocation = UserInputService:GetMouseLocation()

							if localPlayer.Character then
								local huge = math.huge

								for _, player in ipairs(Players:GetPlayers()) do
									if player ~= localPlayer and player.Character then
										local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
										local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

										if humanoidRootPart and humanoid and humanoid.Health > 0 then
											local v11 = currentCamera:WorldToScreenPoint(humanoidRootPart.Position)

											if v11.Z > 0 then
												local magnitude = (Vector2.new(v11.X, v11.Y) - mouseLocation).Magnitude

												if magnitude < huge then
													closestPart = humanoidRootPart
													huge = magnitude
												end
											end
										end
									end
								end
							end

							if closestPart then
								arg2.Direction = (closestPart.Position - arg2.Origin).Unit
							end
						end

						return fire(arg2)
					end

					flag2 = true
				end)

				if not ok then
					warn("[Uwu Hub] Silent Aim hook error: " .. tostring(result))

					if v6 and v5 then
						v5:Notify({
							Title = "Error",
							Content = "Failed to activate Silent Aim: " .. tostring(result),
							Duration = 5,
						})
					end
				end
			end
		end,
	})

	v10:Toggle({
		Title = "Instant Respawn",
		Value = false,
		Callback = function(arg)
			flag3 = arg
		end,
	})

	local v11 = v6:Tab({ Title = "Visual", Icon = "eye" })

	v11:Toggle({
		Title = "FPS Boost",
		Value = false,
		Callback = function(arg)
			fn8(arg)
		end,
	})

	v11:Toggle({
		Title = "Custom Crosshair",
		Value = false,
		Callback = function(arg)
			enabled = arg
			fn15()
		end,
	})

	v11:Dropdown({
		Title = "Crosshair Type",
		Values = tbl4,
		Value = "Target1",
		Callback = function(arg)
			str3 = arg
			fn15()
		end,
	})

	v11:Slider({
		Title = "Crosshair Size",
		Value = { Min = 10, Max = 120, Default = 32 },
		Step = 1,
		Callback = function(arg)
			n2 = arg
			fn15()
		end,
	})

	v11:Toggle({
		Title = "ESP Players",
		Value = false,
		Callback = function(arg)
			fn13(arg)
		end,
	})

	v11:Toggle({
		Title = "Game Stretcher",
		Value = false,
		Callback = function(arg)
			flag7 = arg
			fn14()
		end,
	})

	v11:Slider({
		Title = "Stretch Factor",
		Value = { Min = 50, Max = 250, Default = 133 },
		Step = 1,
		Callback = function(arg)
			n = arg / 100
		end,
	})

	local v12 = v6:Tab({ Title = "UI Settings", Icon = "settings" })

	v12:Dropdown({
		Title = "Theme",
		Values = tbl5,
		Value = str or "Dark",
		Callback = function(arg)
			str = arg

			if v5 and v5.SetTheme then
				v5:SetTheme(arg)
			end

			pcall(function()
				if isfolder and not isfolder("UwuHub") then
					makefolder("UwuHub")
				end

				if writefile then
					writefile("UwuHub/default_theme.txt", arg)
				end
			end)
		end,
	})

	v12:Toggle({
		Title = "Auto Load Config",
		Value = flag5,
		Callback = function(arg)
			flag5 = arg

			pcall(function()
				if isfolder and not isfolder("UwuHub") then
					makefolder("UwuHub")
				end

				if writefile then
					writefile("UwuHub/autoload.txt", arg and "true" or "false")
				end
			end)
		end,
	})

	v12:Button({
		Title = "Save Config",
		Callback = function()
			fn16()
		end,
	})

	v12:Button({
		Title = "Load Config",
		Callback = function()
			fn17()
		end,
	})

	v12:Keybind({
		Title = "Toggle UI Keybind",
		Value = "G",
		Callback = function()
			if v6 and v6.Toggle then
				v6:Toggle()
			end
		end,
	})

	v12:Slider({
		Title = "UI Scale",
		Value = { Min = 50, Max = 150, Default = 100 },
		Step = 1,
		Callback = function(arg)
			if v6 and v6.SetUIScale then
				v6:SetUIScale(arg / 100)
			end
		end,
	})

	v12:Button({
		Title = "Unload UI",
		Callback = function()
			fn18()
		end,
	})

	v5:Notify({ Title = "Uwu Hub", Content = "Hub loaded successfully! Toggle: G key", Duration = 5 })
end

local function fn20()
	local v8 = fn6()

	if v8 and v8 ~= "" then
		if fn5(v8) then
			fn19()
			return
		end
	end

	local v9 = v5:CreateWindow({
		Title = "Uwu Hub | Key System",
		Icon = "key-round",
		Folder = "UwuHub",
		Size = UDim2.fromOffset(420, 280),
		Transparent = false,
		Theme = str or "Dark",
		Author = "platinstudio.xyz",
	})

	local v10 = v9:Tab({ Title = "Key Verification", Icon = "shield-check" })
	local str4 = ""

	v10:Input({
		Title = "Enter Key",
		Placeholder = "Paste your key here...",
		Callback = function(arg)
			str4 = arg
		end,
	})

	v10:Button({
		Title = "Verify Key",
		Icon = "check-circle",
		Callback = function()
			if str4 == "" then
				v5:Notify({ Title = "Warning", Content = "Please enter a key!", Duration = 3 })
				return
			end
			local v11, v12 = fn5(str4)

			if v11 then
				fn7(str4)
				v5:Notify({ Title = "Success!", Content = v12, Duration = 3 })
				task.wait(1)
				v9:Destroy()
				v5 = nil
				v6 = nil
				fn()
				fn2()

				if v5 then
					fn19()
				end
			else
				v5:Notify({ Title = "Key Error", Content = v12, Duration = 5 })
			end
		end,
	})

	v10:Button({
		Title = "Get Key (Copy Link)",
		Icon = "external-link",
		Callback = function()
			pcall(function()
				setclipboard("https://platinstudio.xyz/key/get-key")
			end)

			v5:Notify({ Title = "Copied!", Content = "Key link copied to clipboard.", Duration = 3 })
		end,
	})

	v10:Button({
		Title = "Reset HWID",
		Icon = "refresh-cw",
		Callback = function()
			pcall(function()
				setclipboard("https://platinstudio.xyz/key/reset-hwid")
			end)

			v5:Notify({ Title = "Copied!", Content = "HWID reset link copied to clipboard.", Duration = 3 })
		end,
	})
end

fn20()
