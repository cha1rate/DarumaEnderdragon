## start.mcfunction
# スコアセット/リセット
function daruma_enderdragon:system/reset/set_variable

## 演出
# サウンド
execute as @a at @s run playsound block.enchantment_table.use master @s
# タイトル
title @a times 1s 3s 1s
title @a title {"text":"- 開始 - ","color":"red"}

## ゲーム設定
gamerule doDaylightCycle true
gamerule doWeatherCycle true