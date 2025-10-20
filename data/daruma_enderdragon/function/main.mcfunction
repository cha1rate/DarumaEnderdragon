## main.mcfunction

## タイマーの実行
execute if score game gamefase matches 1 unless score timer fase1 matches 0 run function daruma_enderdragon:system/fase1
execute if score game gamefase matches 2 unless score timer fase2 matches 0 run function daruma_enderdragon:system/fase2
execute if score game gamefase matches 3 unless score timer fase3 matches 0 run function daruma_enderdragon:system/fase3

## ボスバー
# ボスバーの表示
execute if score game gamefase matches 2 if score timer fase2 matches 0 run bossbar set daruma:timer visible true
execute if score game gamefase matches 3 if score timer fase3 matches 0 run bossbar set daruma:timer visible false

## ゲームフェイズの設定
# フェーズの受け渡し
execute if score game gamefase matches 1 if score timer fase1 matches 0 run scoreboard players set game gamefase 2
execute if score game gamefase matches 2 if score timer fase2 matches 0 run scoreboard players set game gamefase 3
execute if score game gamefase matches 3 if score timer fase3 matches 0 run function daruma_enderdragon:game/roop

## ゲーム終了を判定
execute in the_end run function daruma_enderdragon:game/end