extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "hm_buscuit"
    self.value = 2
    self.values = [1, 50]
    self.rarity = "uncommon"
    self.groups = ["food", "hailey_symbols"]

    self.texture = load_texture("res://haileymod/symbols/hailey-placeholder.png")
    self.name = "Biscuit"
    self.description = "Yummy!"
