# Give the audio advancements to the players
advancement grant @a[scores={find_issue_audio=1..}] only issue:audio/level_1
advancement grant @a[scores={find_issue_audio=15..}] only issue:audio/level_2
advancement grant @a[scores={find_issue_audio=50..}] only issue:audio/level_3

# Give the fix advancements to the players
advancement grant @a[scores={find_issue_and_fix=1..}] only issue:fix/level_1
advancement grant @a[scores={find_issue_and_fix=15..}] only issue:fix/level_2
advancement grant @a[scores={find_issue_and_fix=50..}] only issue:fix/level_3

# Give the gameplay advancements to the players
advancement grant @a[scores={find_issue_gameplay=1..}] only issue:gameplay/level_1
advancement grant @a[scores={find_issue_gameplay=15..}] only issue:gameplay/level_2
advancement grant @a[scores={find_issue_gameplay=50..}] only issue:gameplay/level_3

# Give the performance advancements to the players
advancement grant @a[scores={find_issue_perf=1..}] only issue:performance/level_1
advancement grant @a[scores={find_issue_perf=15..}] only issue:performance/level_2
advancement grant @a[scores={find_issue_perf=50..}] only issue:performance/level_3

# Give the visual advancements to the players
advancement grant @a[scores={find_issue_visual=1..}] only issue:visual/level_1
advancement grant @a[scores={find_issue_visual=15..}] only issue:visual/level_2
advancement grant @a[scores={find_issue_visual=50..}] only issue:visual/level_3

# At the end reset the schedule
schedule function issue:loop/1_minute 60s replace
