-- safe_zone.lua
-- اسکریپت سیف زون ساده برای MTA

local safeZone = { x = 1000, y = 1000, z = 10, radius = 50 }

-- تابعی برای بررسی اینکه بازیکن در سیف زون است یا خیر
function isPlayerInSafeZone(player)
    local px, py, pz = getElementPosition(player)
    local distance = getDistanceBetweenPoints3D(px, py, pz, safeZone.x, safeZone.y, safeZone.z)
    return distance <= safeZone.radius
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
