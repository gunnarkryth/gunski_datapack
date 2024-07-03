# Level 1
execute as @s[scores={level=1..}] run attribute @s generic.attack_damage modifier add d3606f5c-d999-47a1-a3cd-dc306188da16 1 add_value
execute as @s[scores={level=1..}] run attribute @s generic.max_health modifier add eaaa6558-3cfe-4794-9a56-e665c7257221 2 add_value
execute as @s[scores={level=1..}] run attribute @s generic.scale modifier add cda4acb8-8b0d-470a-87a5-37d2a84ce567 0.1 add_value

# Level 2
execute as @s[scores={level=2..}] run attribute @s generic.attack_damage modifier add 7ce83fac-44bf-4e6a-a5b6-d9567a6b33cb 1 add_value
execute as @s[scores={level=2..}] run attribute @s generic.max_health modifier add e9a78968-728a-41a5-b4bb-349b41967630 2 add_value
execute as @s[scores={kills=3..}] run attribute @s generic.attack_damage modifier add f52e340d-3136-4961-9078-8f87a7bc8a6d 3 add_value
tellraw @s[scores={kills=3..}] "RAGE"
attribute @s generic.attack_damage modifier remove f52e340d-3136-4961-9078-8f87a7bc8a6d