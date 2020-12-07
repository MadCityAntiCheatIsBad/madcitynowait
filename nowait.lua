local Client = {};
Client.fenv = function(...)
return getfenv(...)
end

Client.Run = function(...)
warn(...)
end

Client.Run("nowait")
for i,v in pairs(getreg()) do
if type(v) == "function" then
if Client.fenv(v).HoldProgress then
Client.fenv(v).HoldProgress = function(...)
return true;
end
end
end
end
