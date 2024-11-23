import csv

with open('rings.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    field = ["ringId", "name", "size", "volume"]
    rings = ["Solitaire", "Halo", "Pave", "Cluster", "Three-Stone", "Infinity", "Eternity Band", "Channel Set",
             "Bezel Set", "Tension", "Vintage", "Cocktail", "Signet", "Stackable", "Split Shank", "Pear-Shaped",
             "Heart-Shaped", "Nature-Inspired", "Celtic", "Minimalist"]
    sizes = [3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 11.5, 12, 12.5, 13, 13.5]
    volume = 0.03861944901923
    ringVar = [1.48, 1.00, 1.38, 1.07, 1.19, 1.37, 1.40, 1.09, 1.36, 1.26, 1.37, 1.03, 1.16, 1.16, 1.18, 1.06, 0.92, 1.02, 1.46, 1.30, 1.42]
    writer.writerow(field)
    for i in range(len(rings)):
        for j in range(len(sizes)):
            writer.writerow(["", rings[i], sizes[j], float(volume * sizes[j]*ringVar[i])])
