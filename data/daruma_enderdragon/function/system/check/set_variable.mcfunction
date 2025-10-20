## check.mcfunction
# スコアの初期化
scoreboard players set @s moved 0

# 基本移動
scoreboard players set @s walked 0
scoreboard players set @s sprinted 0
scoreboard players set @s sneaked 0
# 空中系
scoreboard players set @s falled 0
scoreboard players set @s climbed 0
scoreboard players set @s swimed 0
scoreboard players set @s walked_on_water 0
# 乗り物系
scoreboard players set @s rided_horse 0
scoreboard players set @s rided_boat 0
scoreboard players set @s rided_minecart 0
scoreboard players set @s rided_pig 0
scoreboard players set @s rided_strider 0
# ジャンプ
scoreboard players set @s is_jumped 0