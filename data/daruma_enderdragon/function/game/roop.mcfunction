## roop.mcfunction
# スコアセット/リセット
function daruma_enderdragon:system/reset/set_variable

## 演出
# パーティクル
execute as @a at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
# サウンド
execute as @a at @s run playsound entity.player.levelup master @s
# タイトル
title @a times 1s 3s 1s
title @a title {"text":"- 解放 - ","color":"yellow"}