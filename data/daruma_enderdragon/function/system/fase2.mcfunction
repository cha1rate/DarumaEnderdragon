## timer.mcfunction
# titleを表示
execute if score game random_fase2 matches 1..9 if score timer fase2 matches 150 run function daruma_enderdragon:system/call/1
execute if score game random_fase2 matches 10 if score timer fase2 matches 114 run function daruma_enderdragon:system/call/2

# タイマーの処理
execute if score timer fase2 matches 1.. run scoreboard players remove timer fase2 1