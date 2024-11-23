import csv
import random
import string

with open('products.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    field = ["productId", "creatorId", "ringId", "necklaceId", "gemId", "metalId", "type", "name", "mass", "price"]
    writer.writerow(field)
    random.randint(0,1)
    for i in range(100):
        name = ''.join(random.choices(string.ascii_lowercase, k=(random.randint(4,10))))
        if random.randint(0,2) == 0:
            rings = random.randint(1,441)
            necklaces = "NULL"
            jewelryType = "Ring"
        else:
            rings = "NULL"
            necklaces = random.randint(1,23)
            jewelryType = "Necklace"

        gemId = random.randint(0, 49)
        if gemId == 0:
            gemId = "NULL"

        writer.writerow(["", random.randint(1,1442), rings, necklaces, gemId, random.randint(1, 29), jewelryType, name, "",""])
