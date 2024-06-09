FM = {}
FM.disableMoodles = true;

function FM.onPlayerUpdate(player)
	if FM.disableMoodles and player:isLocalPlayer() then
		local stats = player:getStats();
		stats:setBoredom(0.0);
		stats:setIdleboredom(0.0);
		stats:setPanic(0.0);
		stats:setStress(0.0);
	end
end

Events.OnPlayerUpdate.Add(FM.onPlayerUpdate);
