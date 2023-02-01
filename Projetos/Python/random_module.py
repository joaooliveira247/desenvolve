from random import random

secret_number = round(random() * 100)
tryes = 3

print(secret_number)
for guess_round in range(1, tryes + 1):
    print("number of tryes: ", guess_round, "of", tryes)
    guess = int(input("Type a number:\n"))

    if guess < 1 or guess > 100:
        print("You need type a number between 1 and 100")
        continue

    if guess == secret_number:
        print("You guess!")
        break
    else:
        if guess > secret_number:
            print("Type a lower number!")
        elif guess < secret_number:
            print("Type a greatter number!")
