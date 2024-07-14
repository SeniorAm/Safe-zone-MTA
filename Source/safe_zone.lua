-- safe_zone.lua
-- اسکریپت سیف زون ساده برای MTA

local safeZone = { x = 1500, y = -1200, z = 13, width = 100, depth = 100, height = 50 }

-- تابعی برای بررسی اینکه بازیکن در سیف زون است یا خیر
function isPlayerInSafeZone(player)
    local px, py, pz = getElementPosition(player)
    return (px >= safeZone.x and px <= safeZone.x + safeZone.width) and
           (py >= safeZone.y and py <= safeZone.y + safeZone.depth) and
           (pz >= safeZone.z and pz <= safeZone.z + safeZone.height)
end

-- تابعی برای جلوگیری از آسیب دیدن بازیکن در سیف زون
function preventDamage(attacker, weapon, bodypart, loss)
    if isPlayerInSafeZone(source) then
        cancelEvent()
        outputChatBox("🔒 شما در سیف زون هستید و آسیب نمی‌بینید! 🔒", source, 0, 255, 0)
    end
end

-- اتصال تابع به رویداد "onPlayerDamage"
addEventHandler("onPlayerDamage", getRootElement(), preventDamage)
