function thisCode()
    repeat task.wait() until game:IsLoaded()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end

    function TPReturner()
        local Site
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        for _, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if ID == tostring(Existing) then
                        Possible = false
                        break
                    end
                end
                if Possible then
                    table.insert(AllIDs, ID)
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    return
                end
            end
        end
    end

    function Teleport()
        TPReturner()
    end

    -- Hàm bay tới rương và giảm tốc độ khi gần
    local function flyToChestAndStop(targetPos, initialSpeed, slowDistance)
        local character = game.Players.LocalPlayer.Character
        local rootPart = character and character:FindFirstChild("HumanoidRootPart")
        if not rootPart then return end

        local direction = (targetPos - rootPart.Position).Unit
        local distance = (targetPos - rootPart.Position).Magnitude
        local speed = initialSpeed

        -- Bay tới rương
        while distance > 2 do
            -- Giảm tốc độ khi khoảng cách nhỏ hơn `slowDistance`
            if distance < slowDistance then
                speed = math.max(50, speed * 0.9) -- Tốc độ giảm dần nhưng không dưới 50
            end

            rootPart.CFrame = rootPart.CFrame + direction * speed * task.wait()
            distance = (targetPos - rootPart.Position).Magnitude
        end

        -- Đảm bảo nhân vật dừng tại vị trí chính xác của rương
        rootPart.CFrame = CFrame.new(targetPos)
        return true
    end

    task.spawn(function()
        while true do
            local character = game.Players.LocalPlayer.Character
            local rootPart = character and character:FindFirstChild("HumanoidRootPart")
            if not rootPart then
                task.wait(1)
                continue
            end

            -- Tìm rương gần nhất
            local Chest = game.Workspace:FindFirstChild("Chest4") or 
                          game.Workspace:FindFirstChild("Chest3") or 
                          game.Workspace:FindFirstChild("Chest2") or 
                          game.Workspace:FindFirstChild("Chest1") or 
                          game.Workspace:FindFirstChild("Chest")
            
            if Chest then
                -- Bay tới rương và giảm tốc khi gần
                local reached = flyToChestAndStop(Chest.Position, 350, 50) -- Tốc độ ban đầu là 400, giảm khi cách rương 50
                if reached then
                    -- Nhặt rương
                    firesignal(Chest.Touched, rootPart)
                    task.wait(1) -- Chờ 1 giây sau khi nhặt
                end
            else
                -- Không có rương, đổi server
                Teleport()
                break
            end

            task.wait(1)
        end
    end)
end

thisCode()
