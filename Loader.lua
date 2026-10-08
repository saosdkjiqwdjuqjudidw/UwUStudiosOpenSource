if not game:IsLoaded() then
	game.Loaded:Wait()
end

local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")

local function fn(arg)
	local str = arg:gsub("github%.com/([^/]+)/([^/]+)/raw/", "raw.githubusercontent.com/%1/%2/")
	local response = nil

	pcall(function()
		response = game:HttpGet(str)
	end)

	if not response or response == "" or response:match("404: Not Found") then
		local request_ = request or http_request or syn and syn.request or fluxus and fluxus.request
		local request_2

		if request_ then
			request_2 = request_
		else
			request_2 = http and http.request
		end

		if request_2 then
			pcall(function()
				local v = request_2({ Url = str, Method = "GET" })

				if v and v.Success and v.Body and v.Body ~= "" and not v.Body:match("404: Not Found") then
					response = v.Body
				end
			end)
		end
	end

	return response
end

local function fn2()
	local str = ""

	pcall(function()
		local productInfo = MarketplaceService:GetProductInfo(game.PlaceId)

		if productInfo and productInfo.Name then
			str = productInfo.Name
		end
	end)

	if str == "" then
		pcall(function()
			str = game.Name
		end)
	end

	return tostring(str or "")
end

local function fn3()
	local json = [[{
  "Games": {
    "ink": {
      "Name": "Ink Game",
      "Script": "https://raw.githubusercontent.com/platinww/UwU/refs/heads/main/INK-GAME"
    },
    "flick": {
      "Name": "FPS Flick",
      "Script": "https://raw.githubusercontent.com/platinww/UwU/refs/heads/main/FpsFlick"
    },
    "strongest": {
      "Name": "The Strongest Battlegrounds",
      "Script": "https://raw.githubusercontent.com/stormzdev/the-strongest-battlegrounds/refs/heads/main/invisibility.lua"
    }
  }
}]]

	if not json or json == "" then
		warn("[Uwu Hub Loader] Failed to load loader json")
		return
	end
	local data = nil

	if not pcall(function()
		data = HttpService:JSONDecode(json)
	end) or not data or not data.Games then
		warn("[Uwu Hub Loader] Invalid loader json format")
		return
	end

	local v = fn2()
	local str = v:lower()
	local v2 = nil

	for k, game_ in pairs(data.Games) do
		if string.find(str, tostring(k):lower(), 1, true) then
			v2 = game_
			break
		else
			v2 = nil
		end
	end

	if v2 and v2.Script and v2.Script ~= "" then
		local v3 = fn(v2.Script)

		if v3 and v3 ~= "" then
			print("[Uwu Hub Loader] Matched " .. (v2.Name or v))
			local chunk, v4 = loadstring(v3)

			if chunk then
				task.spawn(chunk)
			else
				warn("[Uwu Hub Loader] Compile Error " .. tostring(v4))
			end

			return
		end
	end

	warn("[Uwu Hub Loader] Unsupported game " .. v)
end

fn3()