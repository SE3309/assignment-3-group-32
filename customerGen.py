import csv
import random
import string

with open('customer.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    field = ["customerId", "address", "emailAddress", "phoneNumber"]
    address_type = ["Street", "Avenue", "Boulevard", "Drive", "Court", "Place", "Square", "Lane", "Road", "Trail", "Parkway", "Commons"]
    street_names = ["Brent", "Chestnut", "Cedar", "Elm", "Hickory", "Maple", "Oak", "Pine", "Spruce", "Willow", "Ash", "Birch", "Cypress", "Dogwood", "Fir", "Hemlock", "Juniper", "Linden", "Magnolia", "Mulberry", "Palm", "Poplar", "Sycamore", "Walnut", "Yew"]
    emailHosts = ["gmail", "outlook", "yahoo", "hotmail", "aol", "protonmail", "zoho", "icloud", "mail", "gmx", "yandex", "tutanota", "mailfence", "disroot", "riseup", "mailbox", "posteo", "kolabnow", "ctemplar", "scryptmail", "mailbox", "startmail", "countermail", "hushmail", "luxsci", "runbox", "fastmail", "mailfence"]
    writer.writerow(field)

    for i in range(1433):
        phoneNumber = ''.join(random.choices(string.digits, k=9))
        address = ''.join(str(random.randint(1, 8000)) + " " + street_names[random.randint(0, len(street_names)-1)] +" "+ address_type[random.randint(0, 11)])
        email_user = ''.join(random.choices(string.ascii_letters + string.digits, k=random.randint(4, 18)))
        email_host = random.choice(emailHosts)
        emailAddress = f"{email_user}@{email_host}.com"
        writer.writerow([9+i, address, emailAddress, phoneNumber])
