extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "coconut_half"

func patch_groups(groups):
    groups.push_back("haileyeats")
    return groups
