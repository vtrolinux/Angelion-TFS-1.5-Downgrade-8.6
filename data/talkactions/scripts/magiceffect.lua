function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	if player:getAccountType() < ACCOUNT_TYPE_COMMUNITYMANAGER then
		return false
	end

	local effect = tonumber(param)
	if effect and effect > 0 then
		player:getPosition():sendMagicEffect(effect)
	end

	return false
end
