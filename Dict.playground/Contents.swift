import Cocoa

// Dictionary
// Key - value
// Type-safe
// aynı key veremezsin

var dictionary: [String: String] = ["name": "isim", "book":"kitap"]
var ages =  ["ali": 30, "ayşe":20]
var infos =  ["ali": (30,"Istanbul"), "ayşe":(20,"Van")]

infos["fatma"] = (50, "Sivas")
infos
