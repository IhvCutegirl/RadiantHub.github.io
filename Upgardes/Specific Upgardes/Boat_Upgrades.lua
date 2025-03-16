local Boat_Upgrades_Module = {}

local Boats={"Boat_2","Boat_3","Boat_4","Boat_5"}
local Boat_Pads={"Boat_2_Pad_1","Boat_2_Pad_2","Boat_3_Pad_1","Boat_3_Pad_2","Boat_3_Pad_3","Boat_3_Pad_4","Boat_4_Pad_1","Boat_4_Pad_2","Boat_4_Pad_3","Boat_4_Pad_4","Boat_4_Pad_5","Boat_4_Pad_6","Boat_4_Pad_7","Boat_5_Pad_1","Boat_5_Pad_2","Boat_5_Pad_3","Boat_5_Pad_4","Boat_5_Pad_5","Boat_5_Pad_6","Boat_5_Pad_7","Boat_5_Pad_8","Boat_5_Pad_9","Boat_5_Pad_10","Boat_5_Pad_11","Boat_5_Pad_12","Boat_5_Pad_13","Boat_5_Pad_14"}

function Boat_Upgrades_Module:Boat_Upgrades_Specific()
    for _, value in ipairs(Boats) do
        local args = {
            [1] = value, -- UPGARDE BOAT
            [2] = "Boating"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Tycoons: Purchase"):InvokeServer(unpack(args))
        task.wait()
    end

    for _, value in ipairs(Boat_Pads) do
        local args = {
            [1] = value,
            [2] = "Boating" -- boat slaves upgrades
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Tycoons: Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Boat_Upgrades_Module
