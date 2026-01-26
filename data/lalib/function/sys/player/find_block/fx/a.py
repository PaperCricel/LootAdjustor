import pyperclip

clip = []

for i in range(-60,61,20):
    block = round(i * 0.01, 1)
    clip.append(f"particle end_rod ~0.6 ~-0.6 ~{block} 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~-0.6 ~-0.6 ~{block} 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~{block} ~-0.6 ~0.6 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~{block} ~-0.6 ~-0.6 0 0 0 1000000 1 force")

    clip.append(f"particle end_rod ~0.6 ~0.6 ~{block} 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~-0.6 ~0.6 ~{block} 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~{block} ~0.6 ~0.6 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~{block} ~0.6 ~-0.6 0 0 0 1000000 1 force")

    clip.append(f"particle end_rod ~0.6 ~{block} ~0.6 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~-0.6 ~{block} ~0.6 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~0.6 ~{block} ~-0.6 0 0 0 1000000 1 force")
    clip.append(f"particle end_rod ~-0.6 ~{block} ~-0.6 0 0 0 1000000 1 force")

pyperclip.copy("\n".join(clip))