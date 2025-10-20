say 更新しました

## ゲームルールの設定
# doDaylightCycle ははゲーム開始後にtrueに変更
time set day
weather clear
difficulty easy
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning true
gamerule fallDamage true

## ゲームのフェーズ
scoreboard objectives add gamefase dummy
scoreboard players set game gamefase 0

## タイマー
# 準備時間タイマー
# だるまさんがころんだクールタイム
scoreboard objectives add fase1 dummy
scoreboard players set timer fase1 0

# だるまさんがころんだコールカウント
scoreboard objectives add fase2 dummy
scoreboard players set timer fase2 0

# 静止時間用カウントダウン
scoreboard objectives add fase3 dummy
scoreboard players set timer fase3 0

# ボスバー
bossbar add daruma:timer "残り時間"
bossbar set daruma:timer name {"text": "残り時間"}
bossbar set daruma:timer players @a
bossbar set daruma:timer max 250
bossbar set daruma:timer color red
bossbar set daruma:timer visible false

# ランダム値
scoreboard objectives add random_fase1 dummy
scoreboard players set game random_fase1 0
scoreboard objectives add random_fase2 dummy
scoreboard players set game random_fase2 0

# fase1のアクションバー用
scoreboard objectives add is_actionbar dummy
scoreboard players set game is_actionbar 0


## 動いた検知用のスコア
scoreboard objectives add moved dummy
scoreboard players set @a moved 0
# 基本移動
scoreboard objectives add walked minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprinted minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add sneaked minecraft.custom:minecraft.crouch_one_cm
# 空中系
scoreboard objectives add falled minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add climbed minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add swimed minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add walked_on_water minecraft.custom:minecraft.walk_on_water_one_cm
# 乗り物系
scoreboard objectives add rided_horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add rided_boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add rided_minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add rided_pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add rided_strider minecraft.custom:minecraft.strider_one_cm
# ジャンプ判定
scoreboard objectives add ground dummy
scoreboard objectives add oldGround dummy
scoreboard objectives add is_jumped dummy
scoreboard players set @a is_jumped 0
# エンドラの死亡判定
scoreboard objectives add inEnd dummy
scoreboard players set game inEnd 0