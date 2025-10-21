## guide.mcfunction
# ゲーム開始のガイドを表示
tellraw @a [{"text": "-------------------------------------------------"}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": "        - だるまさんがころんだ エンドラ討伐 - ","color": "red", "bold": true, "italic": true}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": "       難易度： "},{"text": "[ イージー ]", "bold": true, "color": "yellow", "clickEvent": {"action": "run_command", "value": "/execute as @a run difficulty easy"}, "hoverEvent": {"action":"show_text","value": "イージー"}},{"text": "   "},{"text": "[ ノーマル ]", "bold": true, "color": "yellow", "clickEvent": {"action": "run_command", "value": "/execute as @a run difficulty normal"}, "hoverEvent": {"action":"show_text","value": "ノーマル"}},{"text": "   "},{"text": "[ ハード ]", "bold": true, "color": "yellow", "clickEvent": {"action": "run_command", "value": "/execute as @a run difficulty hard"}, "hoverEvent": {"action":"show_text","value": "ハード"}}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": "       クリックでゲームを開始します"}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": "       "},{"text": "[ 開始 ]", "bold": true, "color": "yellow", "clickEvent": {"action": "run_command", "value": "/function daruma_enderdragon:game/start"}, "hoverEvent": {"action":"show_text","value": "ゲームスタート"}}]
tellraw @a [{"text": " "}]