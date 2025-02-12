local Players = game:GetService("Players")
setclipboard("https://discord.gg/UV8Tsa5k9d")
local function setUnixTime()
    local unixTime = tick()
    getgenv().startTime = unixTime
end

setUnixTime()

if not getgenv().yetexecuted then
    getgenv().yetexecuted = true
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ezlols/rivals-v3/refs/heads/main/main.lua"))()
    end)

    if not success then
        function sendNotification(title, message, duration)
            game.StarterGui:SetCore("SendNotification", {
                Title = title or "Notification",
                Text = message or "No message provided.",
                Icon = "rbxassetid://135755849962682",
                Duration = duration or 3
            })
        end

        sendNotification("Error", "Server is updating..", 56)
		sendNotification("Info", "Currently you cant use 8BIT. For more info join discord. Link copied to clipboard.", 56)
		wait(2222)
        Players.LocalPlayer:Kick("Working on server, please be patient. After the server is online, the script will start working again.")
    end
else
    function sendNotification(title, message, duration)
        game.StarterGui:SetCore("SendNotification", {
            Title = title or "Notification",
            Text = message or "burr.",
            Icon = "rbxassetid://116912659948477",
            Duration = duration or 3
        })
    end

    sendNotification("Notification", "Already executed...", 2)
    sendNotification("Notification", "Wait for it to load or exit game and execute.", 15)
end
