--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local function measureExecutionTime(codeBlock)
    local startTime = os.clock()
    codeBlock()
    local endTime = os.clock()
    local elapsedTime = endTime - startTime
    return elapsedTime
end

local function classifyPerformance(time)
    if time < 0.1 then
        return "Perfect"
    elseif time < 0.25 then
      return "Excellent"
    elseif time < 0.5 then
        return "Great"
    elseif time < 0.75 then
        return "Considerable"
    elseif time < 1 then
        return "Average"
    elseif time < 2 then
        return "Poor"
    else
        return "Bad"
    end
end

local time = measureExecutionTime(function()
    -- // Example code. Replace with your own code
local bootTime     = os.time()
local cloneref = cloneref or function(o) return o end
local ChatService = cloneref(game:GetService("Chat"))
local TextChatService = cloneref(game:GetService("TextChatService"))
local isLegacyChat = TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
local Niggaversion     = "v2.1.5 Private Beta unreleased"
local Game                                                      = game
local Services                                                  = setmetatable({}, {
    __index = function(Self, Service)
        local Cache                                             = Game.GetService(Game, Service)

        rawset(Self, Service, Cache)

        return Cache
    end
})

-- // Cleanup
do
    if getgenv()["Discord.gg/kxxDkhHzzN"] then
        for Index, Connection in next, getgenv()["Discord.gg/kxxDkhHzzN"] do
            Connection:Disconnect()
        end
    end

    getgenv()["Discord.gg/kxxDkhHzzN"]                          = {}
end
-- // Cleanup End

local Downloads                                                 = {}
local List                                                      = {}
local Modules                                                   = {}
local Config                                                    = ({...})[1]

local Version                                                   = "V2"
local Client                                                    = Services.Players.LocalPlayer
local Camera                                                    = Services.Workspace.CurrentCamera

local FindFirstChild                                            = Game.FindFirstChild
local WaitForChild                                              = Game.WaitForChild
local IsLoaded                                                  = Game.IsLoaded

Services.StarterGui:SetCore("SendNotification", {
    Title                                                       = "You horney ass",
    Text                                                        = "Loading in PHYSICS\nThis only works on R6 Characters",
    Icon = "rbxassetid://12384616142";
    Duration = 10;
})

Services.StarterGui:SetCore("SendNotification", {
    Title                                                       = "THANK YOU!",
    Text                                                        = "Contact me on _garbage.cans Discord", --All thanks to @incognito.tabDiscord Hey conquest please tell what more to improve!
    --Icon = "rbxassetid://Gyat.png";                                       
    Duration = 30;
})

Services.StarterGui:SetCore("SendNotification", {
    Title                                                       = "The Revival of the script",
    Text                                                        = "⚠️BUGS MAY OCCUR⚠️",
    Icon = "rbxassetid://3203186317";
    Duration = 10;
})

if not IsLoaded(Game) then Game.Loaded:Wait() end

local function CustomRequire(File, Bool)
    local Custom                                                = getcustomasset(string.format("Fondra-Physics/Modules/%s", File), true)
    local Object                                                = (Game.GetObjects(Game, Custom)[1]):Clone()

    if Bool then return Object end

    local Source                                                = Object.Source
    local Loadstring                                            = loadstring(Source, Object.Name)
    local Original                                              = getfenv(Loadstring)

    getfenv(Loadstring).script                                  = Object
    getfenv(Loadstring).require                                 = function(New)
        return CustomRequire(New)
    end

    local Data                                                  = {pcall(function()
        return Loadstring()
    end)}

    if(Data[1] == false)then
        return nil
    else
        table.remove(Data, 1)

        return unpack(Data)
    end
end

local function CustomRequest(Link, Custom)
    local Success, Result                                       = pcall(request, Custom or {
        Url                                                     = Link,
        Method                                                  = "GET"
    })

    if not Success then
        function chat(msg)
            if not isLegacyChat then
                game.TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
            else
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
            end
        end
        task.spawn(function()
            chat("HTTP SPY DETECTED KICKING USER")
        end)
        wait(3)
        Client:Kick("NOO SPYING!!")
        local Imagemonkey = "Thugwaffen.mp4"
        local inst = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
        local Video = Instance.new("VideoFrame", inst)

        Video.Position = UDim2.new(0, 0, -0.1, 0)
        Video.Size = UDim2.new(1, 0, 1.1, 0)
        inst.Name = "Nettspend"
        Video.Name = "gyat!"

        Video.Video = getcustomasset(Imagemonkey)
        Video.Active = true
        Video.Visible = true
        Video.Looped = false
        Video:Play()

        wait(28.5)

        Video:Destroy()
        inst:Destroy()
        return ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
    end
    if not typeof(Result) == "table" then
        function chat(msg)
            if not isLegacyChat then
                game.TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
            else
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
            end
        end
        task.spawn(function()
            chat("HTTP SPY DETECTED KICKING USER")
        end)
        wait(3)
        Client:Kick("NOO SPYING!!")
        local Imagemonkey = "Thugwaffen.mp4"
        local inst = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
        local Video = Instance.new("VideoFrame", inst)

        Video.Position = UDim2.new(0, 0, -0.1, 0)
        Video.Size = UDim2.new(1, 0, 1.1, 0)
        inst.Name = "Nettspend"
        Video.Name = "gyat!"

        Video.Video = getcustomasset(Imagemonkey)
        Video.Active = true
        Video.Visible = true
        Video.Looped = false
        Video:Play()

        wait(28.5)

        Video:Destroy()
        inst:Destroy()
        return ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
    end
    
    return Result.Body
end

local function DiscordJoin(Code)
    request({
        Url                                                     = "http://127.0.0.1:6463/rpc?v=1",
        Method                                                  = "POST",
    
        Headers = {
            ["Content-Type"]                                    = "application/json",
            ["Origin"]                                          = "https://discord.com"
        },
    
        Body                                                    = Services.HttpService:JSONEncode({
            cmd                                                 = "INVITE_BROWSER",
            args                                                = { code = Code },
            nonce                                               = Services.HttpService:GenerateGUID(false)
        }),
    })
end

do
    if not Config.Version then
        if isfolder("Fondra-Physics") then delfolder("Fondra-Physics") end
        function chat(msg)
            if not isLegacyChat then
                game.TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
            else
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
            end
        end
        task.spawn(function()
            chat("VERSION CHECK DENIED KICKING PLAYER")
        end)
        wait(3)
        Client:Kick("Fondra Physics\nThis is out of date, please get the new loader.\nDiscord.gg/kxxDkhHzzN")

        local Imagemonkey = "Thugborean.mp4"
        local inst = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
        local Video = Instance.new("VideoFrame", inst)

        Video.Position = UDim2.new(0, 0, -0.1, 0)
        Video.Size = UDim2.new(1, 0, 1.1, 0)
        inst.Name = "Nettspend"
        Video.Name = "gyat!"

        Video.Video = getcustomasset(Imagemonkey)
        Video.Active = true
        Video.Visible = true
        Video.Looped = false
        Video:Play()

        wait(27)
        ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)

        Video:Destroy()
        inst:Destroy()

        return DiscordJoin("kxxDkhHzzN")
    end

    if Config.Version ~= Version then
        if isfolder("Fondra-Physics") then delfolder("Fondra-Physics") end
        function chat(msg)
            if not isLegacyChat then
                game.TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
            else
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
            end
        end
        task.spawn(function()
            chat("VERSION CHECK DENIED KICKING PLAYER")
        end)
        wait(3)
        Client:Kick("Fondra Physics\nThis is out of date, please get the new loader.\nDiscord.gg/kxxDkhHzzN")

        local Imagemonkey = "Thugborean.mp4"
        local inst = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
        local Video = Instance.new("VideoFrame", inst)

        Video.Position = UDim2.new(0, 0, -0.1, 0)
        Video.Size = UDim2.new(1, 0, 1.1, 0)
        inst.Name = "Nettspend"
        Video.Name = "gyat!"

        Video.Video = getcustomasset(Imagemonkey)
        Video.Active = true
        Video.Visible = true
        Video.Looped = false
        Video:Play()

        wait(27)
        ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)

        Video:Destroy()
        inst:Destroy()

        return DiscordJoin("kxxDkhHzzN")
    end

    Downloads                                                   = {
        Modules                                                 = {
            ["FX.rbxm"]                                         = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Boobs%20v2/Modules/FX.rbxm",
            ["Apply.rbxm"]                                      = "https://cdn.discordapp.com/attachments/1291889580068573184/1323457158037114880/Apply.rbxm?ex=67749507&is=67734387&hm=31470424d04be40c2c653fc239aaef1536abb6ae7a50a34f1820c6f3e24fc7f7&",
            ["Gender.rbxm"]                                     = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Boobs%20v2/Modules/Gender.rbxm",
            ["Spring.rbxm"]                                     = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Boobs%20v2/Modules/Spring.rbxm",
            ["Assets.rbxm"]                                     = "https://cdn.discordapp.com/attachments/1291889580068573184/1323457158481973319/Assets.rbxm?ex=67749507&is=67734387&hm=08c9a628783455a6841f4e01f7ebc0b6e45e4a5bae5719d70215016911c0f5ef&",
        },

        ["Nipple"]                                              = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Boobs%20v2/Nipple.png",
        ["Loaded.mp3"]                                          = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Loaded.mp3",
        ["Gyat.png"]                                            = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Gyat.png",
        ["Thugborean.mp4"]                                      = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Thugborean.mp4",
        ["Sigmaland.mp4"]                                       = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Sigmaland.mp4",
        ["Thugwaffen.mp4"]                                       = "https://github.com/Katlantis/Roblox/raw/refs/heads/main/Thugwaffen.mp4",
    }

    if not isfile("Fondra-Physics/Passed") then
        Services.StarterGui:SetCore("SendNotification", {
            Title                                               = "IT WORKED!",
            Text                                                = "Downloading files, this might take a bit.",
        })
        print("Version check passed")
        print("DOWNLOADING FILES!")

        function chat(msg)
            if not isLegacyChat then
                game.TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
            else
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
            end
        end
        task.spawn(function()
            chat("Version check passed")
            wait(2)
            chat("DOWNLOADING FILES!")
        end)
        
        local Imagemonkey = "Sigmaland.mp4"
        local inst = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
        local Video = Instance.new("VideoFrame", inst)

        Video.Position = UDim2.new(0, 0, -0.1, 0)
        Video.Size = UDim2.new(1, 0, 1.1, 0)
        inst.Name = "Nettspend"
        Video.Name = "gyat!"

        Video.Video = getcustomasset(Imagemonkey)
        Video.Active = true
        Video.Visible = true
        Video.Looped = false
        Video:Play()

        wait(15)
        Video:Destroy()
        inst:Destroy()
    end

    for Directory, Table in next, Downloads do
        if typeof(Table) ~= "table" then 
            writefile(string.format("Fondra-Physics/%s", Directory), CustomRequest(Table))

            continue
        end

        for Name, Link in next, Table do
            if isfile(string.format("Fondra-Physics/%s/%s", Directory, Name)) then continue end
    
            writefile(string.format("Fondra-Physics/%s/%s", Directory, Name), CustomRequest(Link))
        end
    end

    writefile("Fondra-Physics/Passed", "Downloaded")
    DiscordJoin("kxxDkhHzzN")
end

do
    Modules.Apply                                               = CustomRequire("Apply.rbxm")
    Modules.Gender                                              = CustomRequire("Gender.rbxm")

    Modules.FX                                                  = CustomRequire("FX.rbxm")
    Modules.Spring                                              = CustomRequire("Spring.rbxm")
    Modules.Assets                                              = CustomRequire("Assets.rbxm")
end

local Apply                                                     = function(Model, Gender, Mode)
    local Humanoid                                              = WaitForChild(Model, "Humanoid")
    local HumanoidRootPart                                      = WaitForChild(Model, "HumanoidRootPart")

    if not Humanoid then return end
    if not HumanoidRootPart then return end

    if FindFirstChild(Model, "CustomRig") then return end
    if Humanoid.RigType == Enum.HumanoidRigType.R15 then return end

    local Torso                                                 = FindFirstChild(Model, "Torso")
    local Head                                                  = FindFirstChild(Model, "Head")
    local RightArm                                              = FindFirstChild(Model, "Right Arm")
    local LeftArm                                               = FindFirstChild(Model, "Left Arm")
    local RightLeg                                              = FindFirstChild(Model, "Right Leg")
    local LeftLeg                                               = FindFirstChild(Model, "Left Leg")

    if not Torso then return end
    if not Head then return end

    if not RightArm then return end
    if not RightLeg then return end

    if not LeftArm then return end
    if not LeftLeg then return end

    local Player                                                = FindFirstChild(Services.Players, Model.Name)
    local Gender                                                = Gender and Gender or Config.Gender[math.random(1, #Config.Gender)]
    local Mode                                                  = Mode and Mode or Config.Mode[math.random(1, #Config.Mode)]    
    local Result, Body                                          = Modules.Apply(Model, Gender, Mode, Modules.FX)

    if Config.Physics.Enabled then
        table.insert(List, { 
            Player                                              = Player and Player or "NPC",
            Character                                           = Model
        })
    end

    local Boobs                                                 = FindFirstChild(Body, "Boobs Motor")
    local Dick                                                  = FindFirstChild(Body, "Dick Motor")
    local Ass                                                   = FindFirstChild(Body, "Ass Motor")
    local Pussy                                                 = FindFirstChild(Body, "Pussy Motor")

    if Boobs then Body.Pussy["PrimaryPussy"].Transparency = Config.Debug and 0 or 1 end
    if Boobs then Body.Boobs["PrimaryBoobs"].Transparency = Config.Debug and 0 or 1 end
    if Ass then Body.Ass["PrimaryCheeks"].Transparency  = Config.Debug and 0 or 1 end
    if Dick then Body.Dick["PrimaryDick"].Transparency = Config.Debug and 0 or 1 end

    if Config.Debug then
        print(Result.Success, Result.Message)
    end
end

local Render                                                    = function(Delta)
    for Index, Data in next, List do
        local Player                                            = Data.Player
        local Character                                         = Data.Character
        local Body                                              = FindFirstChild(Character, "Body")

        if not Body then continue end
        if not Character then table.remove(List, Index) continue end

        local Torso                                             = FindFirstChild(Character, "Torso")
        local Head                                              = FindFirstChild(Character, "Head")
                
        if not Torso then table.remove(List, Index) continue end
        if not Head then table.remove(List, Index) continue end
        if not Torso.Position then table.remove(List, Index) continue end

        local Ass                                               = Config.Physics.Ass
        local Pussy                                             = Config.Physics.Pussy
        local Dick                                              = Config.Physics.Dick
        local Boobs                                             = Config.Physics.Boobs
        local Distance                                          = (Torso.Position - Camera.CFrame.Position).Magnitude

        local Information                                       = Data.Information or {
            Boobs           = {
                Last                                            = tick(),
                LastPosition                                    = Torso.Position,
                LastRotation                                    = Torso.RotVelocity,
                Spring                                          = Modules.Spring.new(Vector3.new(0, 0, 0))
            },

            Pussy           = {

                Last                                            = tick(),
                LastPosition                                    = Torso.Position,
                LastRotation                                    = Torso.RotVelocity,
                Spring                                          = Modules.Spring.new(Vector3.new(0, 0, 0))
            },
            
            Ass             = {
                Last                                            = tick(),
                LastPosition                                    = Torso.Position,
                LastRotation                                    = Torso.RotVelocity,
                Spring                                          = Modules.Spring.new(Vector3.new(0, 0, 0))
            },
            
            Dick            = {
                Last                                            = tick(),
                LastPosition                                    = Torso.Position,
                LastRotation                                    = Torso.RotVelocity,
                Spring                                          = Modules.Spring.new(Vector3.new(0, 0, 0))
            }
        }

        if not Data.Information then
            Information.Boobs.Spring.Target                     = Boobs.Target
            Information.Boobs.Spring.Speed                      = Boobs.Speed
            Information.Boobs.Spring.Damper                     = Boobs.Damper

            Information.Ass.Spring.Target                       = Ass.Target
            Information.Ass.Spring.Speed                        = Ass.Speed
            Information.Ass.Spring.Damper                       = Ass.Damper

            Information.Pussy.Spring.Target                         = Pussy.Target
            Information.Pussy.Spring.Speed                      = Pussy.Speed
            Information.Pussy.Spring.Damper                         = Pussy.Damper

            Information.Dick.Spring.Target                      = Dick.Target
            Information.Dick.Spring.Speed                       = Dick.Speed
            Information.Dick.Spring.Damper                      = Dick.Damper
        end

        if not Data.Information then Data.Information = Information end
        if Distance > Config.Physics.Distance then continue end

        if not Player then table.remove(List, Index) continue end
        if not Information then table.remove(List, Index) continue end

        if (tick() - Information.Boobs.Last >= 0.01) and (FindFirstChild(Body, "Boobs Motor")) and (Torso) then         
            Information.Boobs.Last                              = tick()

            Information.Boobs.Spring:TimeSkip(Delta * 1.5)
            Information.Boobs.Spring:Impulse((Information.Boobs.LastPosition - Torso.Position) + Vector3.new((Information.Boobs.LastRotation - Torso.RotVelocity).Y / 4), 0, 0)

            Body["Boobs Motor"].C0                              = Body["Boobs Motor"]:GetAttribute("OriginalC0") * CFrame.Angles(math.rad(6 * Information.Boobs.Spring.Velocity.Y), math.rad(5*Information.Boobs.Spring.Velocity.X), 0)
            Information.Boobs.LastPosition                      = Torso.Position
            Information.Boobs.LastRotation                      = Torso.RotVelocity
        end

        if (tick() - Information.Pussy.Last >= 0.01) and (FindFirstChild(Body, "Pussy Motor")) and (Torso) then         
            Information.Pussy.Last                              = tick()

            Information.Pussy.Spring:TimeSkip(Delta * 1.5)
            Information.Pussy.Spring:Impulse((Information.Pussy.LastPosition - Torso.Position) + Vector3.new((Information.Pussy.LastRotation - Torso.RotVelocity).Y / 8), 0, 0)

            Body["Pussy Motor"].C0                              = Body["Pussy Motor"]:GetAttribute("OriginalC0") * CFrame.Angles(math.rad(0.4 * Information.Pussy.Spring.Velocity.Y), math.rad(4*Information.Pussy.Spring.Velocity.X), 0)
            Information.Pussy.LastPosition                      = Torso.Position
            Information.Pussy.LastRotation                      = Torso.RotVelocity
        end
        
        if (tick() - Information.Ass.Last >= 0.01) and (FindFirstChild(Body, "Ass Motor")) and (Torso) then         
            Information.Ass.Last                                = tick()

            Information.Ass.Spring:TimeSkip(Delta * 1.5)
            Information.Ass.Spring:Impulse((Information.Ass.LastPosition - Torso.Position) + Vector3.new((Information.Ass.LastRotation - Torso.RotVelocity).Y / 4), 0, 0)

            Body["Ass Motor"].C0                                = Body["Ass Motor"]:GetAttribute("OriginalC0") * CFrame.Angles(math.rad(6 * Information.Ass.Spring.Velocity.Y), math.rad(5*Information.Ass.Spring.Velocity.X), 0)
            Information.Ass.LastPosition                        = Torso.Position
            Information.Ass.LastRotation                        = Torso.RotVelocity
        end
        
        if (tick() - Information.Dick.Last >= 0.01) and (FindFirstChild(Body, "Dick Motor")) and (Torso) then                   
            Information.Dick.Last                               = tick()

            Information.Dick.Spring:TimeSkip(Delta * 1.5)
            Information.Dick.Spring:Impulse((Information.Dick.LastPosition - Torso.Position) + Vector3.new((Information.Dick.LastRotation - Torso.RotVelocity).Y / 4), 0, 0)

            Body["Dick Motor"].C0                               = Body["Dick Motor"]:GetAttribute("OriginalC0") * CFrame.Angles(math.rad(1 * Information.Dick.Spring.Velocity.Y), math.rad(1*Information.Dick.Spring.Velocity.X), 0)
            Information.Dick.LastPosition                       = Torso.Position
            Information.Dick.LastRotation                       = Torso.RotVelocity
        end
                
        Data.Information                                        = Information
    end
end

getgenv()["Discord.gg/kxxDkhHzzN"]["RunService"]                = Services.RunService.RenderStepped:Connect(Render)
    
if Game.CreatorId == 5212858 then
    for Index, Object in next, Services.Workspace.Live:GetChildren() do
        local Character                                         = Object
        local Name                                              = Object.Name
        local Gender                                            = Modules.Gender(Character, Character.Name)

        if Config.Gender[1] ~= "Randomized" then Gender = nil; Mode = nil end
        if string.sub(Name, 1, 1) ~= "." then continue end

        getgenv()["Discord.gg/kxxDkhHzzN"][Character]           = Character.ChildAdded:Connect(function(New)
            task.wait()

            if New:IsA("Model") then return end
            if New:IsA("Highlight") then return end

            if not FindFirstChild(Character, "Humanoid") then return end
            if not FindFirstChild(Character, "HumanoidRootPart") then return end

            Apply(Character, Gender, Mode)
        end)

        if not FindFirstChild(Character, "Humanoid") then continue end
        if not FindFirstChild(Character, "HumanoidRootPart") then continue end

        Apply(Character, Gender, Mode)
    end

    for Index, Object in next, Services.Workspace.NPCs:GetChildren() do
        local Character                                         = Object
        local Name                                              = Object.Name
        local Gender, Mode                                      = Modules.Gender(Character, Character.Name)

        if Config.Gender[1] ~= "Randomized" then Gender = nil; Mode = nil end

        getgenv()["Discord.gg/kxxDkhHzzN"][Character]           = Character.ChildAdded:Connect(function(New)
            task.wait()

            if New:IsA("Model") then return end
            if New:IsA("Highlight") then return end

            if not FindFirstChild(Character, "Humanoid") then return end
            if not FindFirstChild(Character, "HumanoidRootPart") then return end

            Apply(Character, Gender, Mode)
        end)
        
        if not FindFirstChild(Character, "Humanoid") then continue end
        if not FindFirstChild(Character, "HumanoidRootPart") then continue end

        Apply(Character, Gender, Mode)
    end
end

for Index, Player in next, Services.Players:GetPlayers() do 
    local Player                                                = Player
    local Character                                             = Player.Character
    local Gender, Mode                                          = Character and Modules.Gender(Character, string.split(Character.Humanoid.DisplayName, " ")[1])

    if Config.Gender[1] ~= "Randomized" then Gender = nil; Mode = nil end
    if Character then Apply(Character, Gender, Mode) end

    getgenv()["Discord.gg/kxxDkhHzzN"][Player.Name]             = Player.CharacterAdded:Connect(function(New)
        task.wait(1)

        WaitForChild(New, "HumanoidRootPart")
        WaitForChild(New, "Humanoid")

        Gender, Mode                                            = Modules.Gender(New, string.split(New.Humanoid.DisplayName, " ")[1])

        Apply(New, Gender, Mode)
    end)
end

getgenv()["Discord.gg/kxxDkhHzzN"]["PlayerAdded"]               = Services.Players.PlayerAdded:Connect(function(Player)
    local Player                                                = Player
    local Character                                             = Player.Character
    local Gender, Mode                                          = Character and Modules.Gender(Character, string.split(Character.Humanoid.DisplayName, " ")[1])

    if Config.Gender[1] ~= "Randomized" then Gender = nil; Mode = nil end
    if Character then Apply(Character, Gender, Mode) end

    getgenv()["Discord.gg/kxxDkhHzzN"][Player.Name]             = Player.CharacterAdded:Connect(function(New)
        task.wait(1)

        WaitForChild(New, "HumanoidRootPart")
        WaitForChild(New, "Humanoid")

        Gender, Mode                                            = Modules.Gender(New, string.split(New.Humanoid.DisplayName, " ")[1])

        Apply(New, Gender, Mode)
    end)  
end)

local music = Instance.new("Sound", game.Players.LocalPlayer.Backpack)
music.Volume = 1
music.Name = "Music"
music.SoundId = getcustomasset("Fondra-Physics/Loaded.mp3")
music.Looped = false

music:Play()
print("Loaded " .. os.time() - bootTime .. " seconds.")

function chat(msg)
    if not isLegacyChat then
        game.TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
    else
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    end
end
task.spawn(function()
    chat("/e cheer")
end)
wait(0.01)
task.spawn(function()
    chat("1st 🏆 goon script sucsessfully " .. Niggaversion .. " loaded in " .. os.time() - bootTime .. " seconds enjoy you're goon session! 😩😏😘😋")
end)
task.spawn(function()
        wait(2)
        chat("This script is client sided meaning no players will be able to see by this.")--Contact me in blue app if you saw this message _goon.intellect
        wait(6)
        chat("My tag _garbage.cans yk what this is")
        wait(7)
        chat("This message and all the messages i said before are automated!")
end)
print(string.format("Execution time: %.6f seconds - Performance: %s", time, classifyPerformance(time)))
