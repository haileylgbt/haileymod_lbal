extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.findable = false

    self.id = "hm_void_hailey"
    self.value = 0
    self.values = [1, -1, 8]
    self.rarity = "uncommon"
    self.groups = ["organism", "human", "hailey_symbols"]

    self.texture = load_texture("res://haileymod/symbols/void-hailey.png")
    self.name = "Void Hailey"
    self.description = "Gives <icon_coin><color_FBF236>1<end> less for each adjacent <all_and_fruit>. Gives <icon_coin><color_FBF236>1<end> more for each adjacent <icon_empty>. <color_E14A68>Destroys<end> itself if adjacent to 0 <icon_empty>. Gives <icon_coin><color_FBF236>8<end> when <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
    var empty_tally : int = 0
    var fruit_tally : int = 0
    for i in adjacent:
        if "fruit" in i.groups:
            fruit_tally += 1
        if i.type == "empty":
            empty_tally += 1
    symbol.add_effect(effect().change_value_bonus(empty_tally - fruit_tally))
    if not empty_tally:
        symbol.add_effect(effect().set_destroyed())
        symbol.add_effect(effect().if_destroyed().change_value_bonus(8))
