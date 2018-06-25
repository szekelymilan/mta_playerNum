local curr = 0
function updatePlayerCount()
  local max = getMaxPlayers()

  -- Call the REST API
  fetchRemote('http://localhost/.api/?curr='..curr..'&max='..max, function(data) end)
end

addEventHandler('onResourceStart', resourceRoot, function()
  curr = getPlayerCount(); updatePlayerCount()
end)

addEventHandler('onPlayerJoin', root, function()
  curr = curr + 1; updatePlayerCount()
end)

addEventHandler('onPlayerQuit', root, function()
  curr = curr - 1; updatePlayerCount()
end)