# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.player_model.root] run return 0
execute on passengers if entity @s[tag=aj.player_model.data] unless data entity @s {data:{rigHash: 'f7d082fc8f75c696aac56ad7eafd5f30141ee201e0e3396ab8a9a91a7d6eb79d'}} on vehicle run function animated_java:player_model/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1