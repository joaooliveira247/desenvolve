secret_number = 32
tryes = 3
guess_round = 1

while guess_round <= tryes:
    print("number of tryes: ", guess_round, "of", tryes)
    guess = int(input("Type a number:\n"))

    if guess == secret_number:
        print("You guess!")
        break
    else:
        if guess > secret_number:
            print("Type a lower number!")
        elif guess < secret_number:
            print("Type a greatter number!")

    guess_round += 1
