extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "hm_lesbian_flag"
    self.value = 3
    self.values = []
    self.rarity = "none"
    self.groups = ["hailey_symbols", "flag"]

    self.texture = load_texture("res://haileymod/symbols/lesbian-flag.png")
    self.name = "Lesbian Flag"
    self.description = '"Always liked the lesbian flag colours!" -Harriet\n<color_7234BF>Only obtainable through <icon_hm_harriet>.<end>'

    self.findable = false
