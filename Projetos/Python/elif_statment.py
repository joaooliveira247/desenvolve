secret_number = 32

guess = int(input("Type a number:\n"))

if guess == secret_number:
    print("You guess!")
else:
    if guess > secret_number:
        print("Type a lower number!")
    elif guess < secret_number:
        print("Type a greatter number!")