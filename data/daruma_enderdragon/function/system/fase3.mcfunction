## timer.mcfunction
# 歩いたかどうかの検知
execute as @a if score timer fase3 matches 250 run function daruma_enderdragon:system/check/set_variable
execute as @a run function daruma_enderdragon:system/check/check
# 発光エフェクトを付与
execute as @a run effect give @s glowing 4 0 true
# 鼓動サウンド+アクションバーにテキスト表示
execute as @a at @s if score timer fase3 matches 250 run function daruma_enderdragon:system/sound/heartbeat
execute as @a at @s if score timer fase3 matches 200 run function daruma_enderdragon:system/sound/heartbeat
execute as @a at @s if score timer fase3 matches 150 run function daruma_enderdragon:system/sound/heartbeat
execute as @a at @s if score timer fase3 matches 100 run function daruma_enderdragon:system/sound/heartbeat
execute as @a at @s if score timer fase3 matches 50 run function daruma_enderdragon:system/sound/heartbeat

# タイマーの処理とボスバー
execute if score timer fase3 matches 1.. run scoreboard players remove timer fase3 1
execute store result bossbar daruma:timer value run scoreboard players get timer fase3