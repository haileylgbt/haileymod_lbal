extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.findable = false
    # not finished yet

    self.id = "hm_paradigm_shifter"
    self.value = 0
    self.values = [1, 50]
    self.rarity = "very_rare"
    self.groups = ["organism", "human"]

    self.texture = load_texture("res://haileymod/symbols/paradigm-shifter.png")
    self.name = "Paradigm Shifter"
    self.description = "<color_7234BF>Changes the world around it with a single touch.<end>"

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("hm_trans_flag").change_type("hm_lesbian_flag").animate("shake"))
        symbol.add_effect_for_symbol(i, effect().if_type("hm_lesbian_flag").change_type("hm_trans_flag").animate("shake"))
