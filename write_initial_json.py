import json

data = {
    "Dschungel": "world",
    "Mit Papa": "new_world",
    "Weihnachten 2020": "world_20201221"
    }

with open("config_worlds.json", "w") as write_file:
    json.dump(data, write_file)
