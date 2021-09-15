extends "res://modloader/ModSymbol.gd"

empty_count = 0

func empty_tally():
    empty_count += 1

func init(modloader: Reference, params):
    self.modloader = modloader

    self.findable = false

    self.id = "hm_void_hailey"
    self.value = 0
    self.values = [1, -1, 50]
    self.rarity = "uncommon"
    self.groups = ["organism", "human", "hailey_symbols"]

    self.texture = load_texture("res://haileymod/symbols/void-hailey.png")
    self.name = "Void Hailey"
    self.description = "Gives <icon_coin><color_FBF236>1<end> less for each adjacent <all_and_fruit>. Gives <icon_coin><color_FBF236>1<end> more for each adjacent <icon_empty>. <color_E14A68>Destroys<end> itself if adjacent to 0 <icon_empty>. Gives <icon_coin><color_FBF236>8<end> when <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("fruit").set_target(symbol).change_value_bonus(values[1]))
        symbol.add_effect_for_symbol(i, effect().if_type("empty").set_target(symbol).change_value_bonus(values[0]).empty_tally())
        print(adjacent)
        print(i)
