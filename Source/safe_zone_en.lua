-- safe_zone.lua

--Read HowCreateSafeZone  and you can edit your pos
local safeZone = { x = 1000, y = 1000, z = 10, radius = 50 }

-- Function to check if a player is in the safe zone
function isPlayerInSafeZone(player)
    local px, py, pz = getElementPosition(player)
    local distance = getDistanceBetweenPoints3D(px, py, pz, safeZone.x, safeZone.y, safeZone.z)
    return distance <= safeZone.radius
end

-- Function to prevent damage to players in the safe zone
function preventDamage(attacker, weapon, bodypart, loss)
    if isPlayerInSafeZone(source) then
        cancelEvent()
        outputChatBox("🔒 You are in a Safe Zone and cannot take damage! 🔒", source, 0, 255, 0)
    end
end

-- Attach the function to the "onPlayerDamage" event
addEventHandler("onPlayerDamage", getRootElement(), preventDamage)
