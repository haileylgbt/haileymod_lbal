extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "hm_trans_flag"
    self.value = 2
    self.values = []
    self.rarity = "very_rare"
    self.groups = ["hailey_symbols", "flag"]

    self.texture = load_texture("res://haileymod/symbols/trans-flag.png")
    self.name = "Trans Flag"
    self.description = '"There! Much better!" -Hailey\n<color_7234BF>Only obtainable through <icon_hm_hailey>.<end>'

    self.findable = false
