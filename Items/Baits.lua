local Consume_Baits = {}

function Consume_Baits:Consume_Baits_All()

    local args = {
        [1] = "49f3a7f912c940bd8e058adfc247ceb7", -- basic bait
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))

    local args = {
        [1] = "9f611402d4ac4601890be3fa9a76c8f7",-- rare bait
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))

    local args = {
        [1] = "2577ce1b318b4899898d7e81f80ba7bf", --epic bait
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))

    local args = {
        [1] = "8dffeecd775c41e29966a0c8e3533d33", -- legendary bait
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))

end

return Consume_Baits
