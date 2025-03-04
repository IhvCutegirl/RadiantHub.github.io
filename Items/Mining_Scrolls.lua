local Mining_Scrolls = {}

function Mining_Scrolls:Mining_Scrolls_Consume()
    local args = {
        [1] = "3357c6d07b644b6b90b1dbc7977dc64e",
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "4aa5ab15667847ee9ac30e5f3f16bc59",
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "fc6e623c38b143f2a1e69f05000a2e83",
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

end

return Mining_Scrolls
