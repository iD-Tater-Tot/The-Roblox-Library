local Players = game:GetService("Players")
local replayPart = script.Parent
local initialSpawn = script.InitialSpawnLocation.Value

local function onTouch(otherPart)
	local character = otherPart:FindFirstAncestorOfClass("Model")
	if not character then return end

	local player = Players:GetPlayerFromCharacter(character)
	if not player then return end

	player.RespawnLocation = initialSpawn
	player:LoadCharacter()
end

replayPart.Touched:Connect(onTouch)
