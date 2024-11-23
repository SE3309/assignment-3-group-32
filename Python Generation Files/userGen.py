import csv
import random
import string

with open('users.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    field = ["userId", "userType", "username", "firstName", "lastName", "password"]

    writer.writerow(field)
    writer.writerow(["", "Admin", "chickenking", "Chicken", "King", "KFCyummy@"])
    writer.writerow(["", "Admin", "bigTiffa", "Spaghetti", "Linguine", "Meatball@"])
    writer.writerow(["", "Admin", "Bepan", "Steppin", "Big", "BiggieSmall@"])
    writer.writerow(["", "Admin", "QQ", "Intel", "Quartus", "PrimePrincess@"])
    writer.writerow(["", "Admin", "Xx_teaEfftea_xX", "Discord", "Nitro", "FiveNighteyNien@"])
    writer.writerow(["", "Admin", "Rativities", "Chef", "Ratatouille", "ScurryAround@"])
    writer.writerow(["", "Admin", "PastaLaVista", "Pasta", "La", "VistaBaby@"])
    writer.writerow(["", "Admin", "Pablo", "Frontyardigan", "Backyardigan", "Pabl0@123"])

    firstName = ["Sal", "Torrence", "Allister", "Lou", "Myca", "Marquita", "Tommy", "Anson", "Cecily", "Vale", "Nonnah", "Boniface", "Truda", "Nadean", "Clemmy", "Rosamund", "Gearard", "Christoper", "Jerry", "Sasha", "Denny", "Jeniece", "Moishe", "Trever", "Ernst", "Grata", "Kelcey", "Shay", "Bliss", "Deborah", "Gerda", "Neron", "Nathalie", "Janetta", "Richart", "Donelle", "Jayson", "Lothario", "Yankee", "Clim", "Trisha", "Kayne", "Carena", "Valentia", "Reinwald", "Arch", "Shaylynn", "Terra", "Rosanne", "Ramona", "Johnny", "Melesa", "Corty", "Salome", "Tracie", "Tammie", "Marnie", "Rafa", "Rustin", "Dita", "Lucky", "Agnese", "Natividad", "Salomo", "Bone", "Almeta", "Rolf", "Osborne", "Melita", "Ceil", "Joey", "Cornie", "Margaretta", "Lawton", "Shalne", "Christoph", "Barn", "Marcy", "Kristy", "Manny", "Ollie", "Jordan", "Matt", "Felizio", "Jodi", "Marcile", "Kurtis", "Stephannie", "Freddie", "Jacenta", "Dex", "Hillery", "Nonie", "Oberon", "Malena", "Nanny", "Sabine", "Trish", "Kat", "Helga"]
    lastName = ["Jakel", "Duckering", "Dewfall", "Joannidi", "Beales", "Windibank", "Beglin", "Elix", "Stearley", "Castelletti", "Klimkin", "Sayes", "Scraggs", "Roubottom", "Emmatt", "Pendleberry", "Emerton", "MacDearmid", "Geely", "Beceril", "Hansman", "Durtnell", "Bointon", "McGuinley", "Avrahm", "Goghin", "Mynard", "Mettetal", "Giorgiutti", "Gundry", "Boatman", "Shirland", "Dael", "Younge", "Brimble", "Foulsham", "Rabbage", "Aldham", "Binion", "Mueller", "Tillyer", "Byer", "McAuliffe", "Mardoll", "Enderby", "Burges", "Killner", "Rickman", "Bakhrushin", "Moxsom", "Matveichev", "Percifull", "Varian", "Frickey", "Regglar", "Flegg", "Dominelli", "Savine", "Munford", "Holligan", "Salters", "Missen", "Presser", "Bitterton", "Hector", "McCallion", "Landre", "Brunone", "Boocock", "Hartus", "Jeannenet", "Paoloni", "Shedden", "Laxon", "Reffe", "Corr", "Azemar", "Tonry", "Gyorgy", "Spawell", "Pirrie", "Dominici", "Duding", "De Morena", "Davisson", "Isenor", "McKinn", "Spalls", "Munnis", "Van Dijk", "Haslewood", "Panichelli", "Mayler", "Ardling", "Tonkin", "Gun", "Washtell", "Goolding", "Iacoviello", "Jeaffreson"]
    for i in range(1491):
        N = random.randint(4, 31)
        N = random.randint(8, 31)
        username = ''.join(random.choices(string.ascii_lowercase +
                                     string.ascii_uppercase + string.digits, k=N))
        password = ''.join(random.choices(string.ascii_lowercase +
                                     string.ascii_uppercase + string.digits, k=N))
        writer.writerow(["", "Customer", username , firstName[random.randint(0, 99)], lastName[random.randint(0, 99)], password])
