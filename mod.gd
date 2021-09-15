extends Reference

var starting_symbols
var symbol_list

func load(modloader: Reference, mod_info, tree: SceneTree):
    print("awww shit, here comes pacman")
    # ...

    modloader.add_mod_symbol("res://haileymod/symbols/hm_suit_capsule.gd")
    modloader.add_mod_symbol("res://haileymod/symbols/hm_hailey_capsule.gd")
    modloader.add_mod_symbol("res://haileymod/symbols/hm_hailey.gd")
#   modloader.add_mod_symbol("res://haileymod/symbols/hm_void_hailey.gd")
    modloader.add_mod_symbol("res://haileymod/symbols/hm_harriet.gd")
    modloader.add_mod_symbol("res://haileymod/symbols/hm_flag.gd")
    modloader.add_mod_symbol("res://haileymod/symbols/hm_biscuit.gd")
    modloader.add_mod_symbol("res://haileymod/symbols/hm_trans_flag.gd")
    modloader.add_mod_symbol("res://haileymod/symbols/hm_lesbian_flag.gd")
    modloader.add_mod_symbol("res://haileymod/symbols/hm_paradigm_shifter.gd")

    modloader.add_symbol_patch("res://haileymod/symbol-patches/bee.gd")


func modify_starting_symbols(symbols):
    starting_symbols = symbols
    starting_symbols.append("hm_hailey")

    return (starting_symbols)
