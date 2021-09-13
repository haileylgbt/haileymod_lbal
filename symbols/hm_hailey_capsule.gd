extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "hm_hailey_capsule"
    self.value = -25
    self.values = []
    self.rarity = "very_rare"
    self.groups = ["capsule"]
    add_sfx_redirect("capsule")

    self.texture = load_texture("res://haileymod/symbols/hailey-capsule.png")
    self.name = "Hailey Capsule"
    self.description = "<color_E14A68>Destroys<end> itself. Adds <all_or_hailey_symbols> when <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().set_destroyed().animate("shake"))
    symbol.add_effect(effect().add_symbol_group("hailey_symbols", "very_rare"))
