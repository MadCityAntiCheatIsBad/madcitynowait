local Client = {};
Client.fenv = function(...)
return getfenv(...)
end

Client.Run = function(v, ...)
warn(...)
end

for i,v in pairs(getreg()) do
if Client.Run("cc") then
if type(v) == "function" then
Client.Run("NoWait")
if Client.fenv(v).HoldProgress then
Client.fenv(v).HoldProgress = function(...)
return true;
end
end
end
end
end
