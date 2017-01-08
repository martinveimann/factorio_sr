-- reset recipes so changes in the config are working in previously saved games
script.on_event(defines.events.on_player_created, function(event) resetRecipes(event) end)

function resetRecipes(_event)
   srPlayer = game.players[_event.player_index]
   srPlayer.print("Specialized refineries: resetting recipes..")
   srPlayer.force.reset_recipes()
end