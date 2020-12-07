local Client = {};
local WC = require(game.ReplicatedStorage.Modules.WeaponCore)
Client.OldWeaponCore = {};

for i,v in next, WC do
Client.OldWeaponCore[i] = v;
end

Client.OldWeaponCore.IcePath = function(...)
Client.OldWeaponCore:IcePath(...)
end

Client.OldWeaponCore.IcePath(game.Players.LocalPlayer.Character)
