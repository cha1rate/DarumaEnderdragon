## check.mcfunction
# 実行者：@a
# 毎tick実行
# 基本移動
scoreboard players operation @s moved += @s walked
scoreboard players operation @s moved += @s sprinted
scoreboard players operation @s moved += @s sneaked
# 空中系
scoreboard players operation @s moved += @s falled
scoreboard players operation @s moved += @s climbed
scoreboard players operation @s moved += @s swimed
scoreboard players operation @s moved += @s walked_on_water
# 乗り物系
scoreboard players operation @s moved += @s rided_horse
scoreboard players operation @s moved += @s rided_boat
scoreboard players operation @s moved += @s rided_minecart
scoreboard players operation @s moved += @s rided_pig
scoreboard players operation @s moved += @s rided_strider
# ジャンプ
function daruma_enderdragon:system/check/is_jumped
scoreboard players operation @s moved += @s is_jumped

# 動いた時の処理
execute if score @s moved matches 1.. run function daruma_enderdragon:game/gameover