extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "bee"

func patch_description(description):

    return join(description, "<color_E14A68>Stings<end> adjacent <icon_hm_hailey>.")


func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("hm_hailey").set_destroyed().animate("shake"))
