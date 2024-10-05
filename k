local allowedUsers = {
    [2614817092] = true,
    [3581345275] = true,
    -- Add other UserIds here
}

local player = game.Players.LocalPlayer
local userId = player.UserId

local function checkUserId(userId)
    return allowedUsers[userId] or false
end

if checkUserId(userId) then
    print("Access granted : " .. userId)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/qoleole/g/refs/heads/main/n"))()
else
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = "Access denied, dude u must buy the script.";
        Color = Color3.fromRGB(255, 0, 0);
    })
    print("Access denied, dude u must buy the script")
end