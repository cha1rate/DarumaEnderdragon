## start.mcfunction

## タイマーの残り時間の最大値を設定
# fase1: コールとコールの間のクールタイム
# fase2: コールのカウント中
# fase3: 停止していないといけない時間

# 各faseの時間を乱数で決定
function daruma_enderdragon:system/random/fase1
function daruma_enderdragon:system/random/fase2

scoreboard players operation timer fase1 = game random_fase1
execute if score game random_fase2 matches 1..9 run scoreboard players set timer fase2 150
execute if score game random_fase2 matches 10 run scoreboard players set timer fase2 114
scoreboard players set timer fase3 250

# faseの値設定
scoreboard players set game gamefase 1