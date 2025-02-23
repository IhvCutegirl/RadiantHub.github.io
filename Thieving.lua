local Thieving = {}
-- "Wood", "Blue", "Black", "Marble", "Steam Punk", "Tech", "Royal", "Purple Castle"
function Thieving:Auto_Thieving_Selected_Function(Passed_Auto_Thieving_Selected)
    for _, lockpick in ipairs(Passed_Auto_Thieving_Selected) do
        if lockpick == "Wood" then
            local args = {
                [1] = 2388
            }   
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Blue" then
            local args = {
                [1] = 2390
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))            
        end
        if lockpick == "Black" then
            local args = {
                [1] = 2392
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Marble" then
            local args = {
                [1] = 2387
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Steam Punk" then
            local args = {
                [1] = 2386
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Tech" then
            local args = {
                [1] = 2389
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Royal" then
            local args = {
                [1] = 2391
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Purple Castle" then
            local args = {
                [1] = 2385
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
    end
end

return Thieving
