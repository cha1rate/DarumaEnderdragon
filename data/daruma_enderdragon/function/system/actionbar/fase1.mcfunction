## timer.mcfunction
scoreboard players set game is_actionbar 1
execute as @s run title @s actionbar {"text": "== クールタイム中 ==", "color": "white", "bold": true}
schedule function daruma_enderdragon:system/actionbar/reset/set_variable 3.5s