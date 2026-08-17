import os

DIR = os.path.dirname(os.path.abspath(__file__))

LOOT_TABLE = 'instant_effect{color:[0.945,0.871,0.380],power:1919810}'


def cube(particle, radius):
    """12 edges of a cube centred on the caller, radius in hundredths of a block."""
    edge = round(radius * 0.01, 2)
    clip = []
    for i in range(-radius, radius + 1, 20):
        block = round(i * 0.01, 2)
        clip.append(f"particle {particle} ~{edge} ~-{edge} ~{block} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~-{edge} ~-{edge} ~{block} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~{block} ~-{edge} ~{edge} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~{block} ~-{edge} ~-{edge} 0 0 0 1000000 1 force")

        clip.append(f"particle {particle} ~{edge} ~{edge} ~{block} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~-{edge} ~{edge} ~{block} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~{block} ~{edge} ~{edge} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~{block} ~{edge} ~-{edge} 0 0 0 1000000 1 force")

        clip.append(f"particle {particle} ~{edge} ~{block} ~{edge} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~-{edge} ~{block} ~{edge} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~{edge} ~{block} ~-{edge} 0 0 0 1000000 1 force")
        clip.append(f"particle {particle} ~-{edge} ~{block} ~-{edge} 0 0 0 1000000 1 force")
    return clip


def write(name, lines):
    path = os.path.join(DIR, name)
    with open(path, "w", newline="\r\n") as f:
        f.write("\n".join(lines))
    print(f"{name} : {len(lines)} line(s)")


# targeted container
main = cube("end_rod", 60)
main.append("")
main.append("# loot table layer")
main.append("execute if data block ~ ~ ~ LootTable run return run function lalib:player/find_block/fx/loot_table")
main.append('execute if data block ~ ~ ~ components."minecraft:custom_data".lalib.LootTable run function lalib:player/find_block/fx/loot_table')
write("main.mcfunction", main)

# loot table container : one size smaller
write("loot_table.mcfunction", cube(LOOT_TABLE, 50))
