# Cancel the lottery if there is only one player
execute if data storage game:lottery {player_count:1} run return run function lottery:cancel with storage game:lottery players[0]

# Otherwise, announce the winner
function lottery:winner with storage game:lottery
