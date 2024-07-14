-- safe_zone.lua


local safeZone = { x = 1500, y = -1200, z = 13, width = 100, depth = 100, height = 50 }

-- Function to check if a player is in the safe zone
function isPlayerInSafeZone(player)
    local px, py, pz = getElementPosition(player)
    return (px >= safeZone.x and px <= safeZone.x + safeZone.width) and
           (py >= safeZone.y and py <= safeZone.y + safeZone.depth) and
           (pz >= safeZone.z and pz <= safeZone.z + safeZone.height)
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
