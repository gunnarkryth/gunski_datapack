# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.player_model.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'player_model', 'function_path': 'animated_java:player_model/set_default_pose'}
execute on passengers if entity @s[tag=aj.player_model.bone.h_head] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,1.5f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.player_model.bone.right_arm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.25f,0f,1f,0f,1.375f,-1.2246467991473532e-16f,0f,-1f,-3.061616997868383e-17f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.player_model.bone.left_arm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.25f,0f,1f,0f,1.375f,-1.2246467991473532e-16f,0f,-1f,3.061616997868383e-17f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.player_model.bone.torso] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,0.75f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.player_model.bone.right_leg] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.125f,0f,1f,0f,0.75f,-1.2246467991473532e-16f,0f,-1f,-1.5308084989341915e-17f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.player_model.bone.left_leg] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.125f,0f,1f,0f,0.75f,-1.2246467991473532e-16f,0f,-1f,1.5308084989341915e-17f,0f,0f,0f,1f], start_interpolation: -1}