local Trading_Upgrades_Module = {}

local Trading_Upgrades = {"Trading Plaza","Trading Booths","TradingTerminal","Bigger Booth","Even Bigger Booth","Booth Skins","Booth Skin - Egg","Booth Skin - Parrot","Booth Skin - Axolotl","Booth Skin - Corgi","Booth Skin - Dragon","Booth Skin - Giraffe","Booth Skin - Panda","Booth Skin - Unicorn","Booth Skin - Pixel","Booth Skin - Fishing","Booth Skin - Safety","Booth Skin - Pinata","Booth Skin - Summer","Booth Skin - Strawberry","Pet Index","Index Shop","Advanced Index Shop","Random Discounts","Collections Expert","Collections Master","More Pet Details","Mailbox","Cheaper Mailbox","Bigger Mailbox","Even Bigger Mailbox","Super Sized Mailbox","Huge Mailbox"}

function Trading_Upgrades_Module:Trading_Upgrades_Specific()
    for _, value in ipairs(Trading_Upgrades) do
        local args = {
            [1] = value
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Trading_Upgrades_Module
