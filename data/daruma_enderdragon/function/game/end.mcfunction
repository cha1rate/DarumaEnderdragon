## end.mcfunction
# エンダードラゴンにtag=targetを付与
execute if entity @e[type=ender_dragon] run scoreboard players set game inEnd 1
execute as @e[type=ender_dragon, tag=!target] unless entity @e[type=ender_dragon, tag=target] run tag @s add target
# エンダードラゴンが死亡したらゲーム終了
execute if score game inEnd matches 1 unless entity @e[type=ender_dragon, tag=target] run function daruma_enderdragon:system/stop

## 演出
# パーティクル
execute if score game inEnd matches 1 unless entity @e[type=ender_dragon, tag=target] as @a at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
# サウンド
execute if score game inEnd matches 1 unless entity @e[type=ender_dragon, tag=target] as @a at @s run playsound item.trident.thunder master @s
# タイトル
execute if score game inEnd matches 1 unless entity @e[type=ender_dragon, tag=target] run title @a times 1s 4s 1s
execute if score game inEnd matches 1 unless entity @e[type=ender_dragon, tag=target] run title @a title {"text":"- CLEAR - ","color":"yellow"}

# ゲーム終了用のステータスを変更
execute unless entity @e[type=ender_dragon, tag=target] run scoreboard players set game inEnd 0