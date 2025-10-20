## check.mcfunction
# 毎tick実行
execute store result score @s ground run data get entity @s OnGround
# ジャンプ判定
execute if score @s oldGround matches 1 if score @s ground matches 0 run scoreboard players set @s is_jumped 1
# 比較用にスコア保存
scoreboard players operation @s oldGround = @s ground