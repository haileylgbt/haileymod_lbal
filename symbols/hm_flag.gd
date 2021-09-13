extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "hm_flag"
    self.value = 1
    self.values = []
    self.rarity = "common"
    self.groups = ["flag"]

    self.texture = load_texture("res://haileymod/symbols/flag.png")
    self.name = "Flag"
    self.description = "A blank white flag. Could use a bit of colour."
