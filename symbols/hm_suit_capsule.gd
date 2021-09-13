extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "hm_suit_capsule"
    self.value = -1
    self.values = []
    self.rarity = "uncommon"
    self.groups = ["capsule"]
    add_sfx_redirect("capsule")

    self.texture = load_texture("res://haileymod/symbols/suit-capsule.png")
    self.name = "Suit Capsule"
    self.description = "<color_E14A68>Destroys<end> itself. Adds <all_or_suit> when <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().set_destroyed().animate("shake"))
    symbol.add_effect(effect().add_symbol_group("suit", "uncommon"))
