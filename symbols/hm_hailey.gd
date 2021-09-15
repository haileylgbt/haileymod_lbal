extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "hm_hailey"
    self.value = 4
    self.values = [1, 50, 2]
    self.rarity = "very_rare"
    self.groups = ["organism", "human", "hailey_symbols", "doglikes"]

    self.texture = load_texture("res://haileymod/symbols/hailey.png")
    self.name = "Hailey"
    self.description = "<color_E14A68>Eats<end> adjacent <all_and_fruit>. Gives <icon_coin><color_FBF236>1<end> more for each <all_and_fruit> <color_E14A68>eaten<end>. <color_7234BF>Has secret behaviours.<end>"

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("fruit").set_destroyed().animate("bounce"))
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_group("fruit").set_target(symbol).change_value_bonus(values[0]))
        symbol.add_effect_for_symbol(i, effect().if_type("hm_flag").change_type("hm_trans_flag").animate("shake"))
        symbol.add_effect_for_symbol(i, effect().if_type("hm_harriet").set_value_bonus(1).animate("bounce"))
