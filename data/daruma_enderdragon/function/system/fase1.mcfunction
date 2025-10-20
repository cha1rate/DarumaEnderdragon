## timer.mcfunction
# タイマーの処理
execute if score timer fase1 matches 1.. run scoreboard players remove timer fase1 1
# アクションバーの処理
execute as @a if score timer fase1 matches 80.. if score game is_actionbar matches 0 run function daruma_enderdragon:system/actionbar/fase1