Removed :C
enjoy for hovermode

local LocalPlayer = game:GetService("Players").LocalPlayer
local Car = game.Workspace.ObjectSelection:FindFirstChild(LocalPlayer.Name.."'s Vehicle")

if Car then
  if Car.CarChassis then
    Car.CarChassis.HoverMode.Value = true
    Car.CarChassis.Boosting.Value = true
  end
end
