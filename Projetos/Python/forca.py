from random import randrange


def read_words(path):
    with open(path, "r", encoding="UTF-8") as archive:
        return [x.strip().lower() for x in archive.readlines()]


def raffle_word(path):
    words = read_words(path)
    return words[randrange(0, len(words))]


def jogo():
    print("Jogo da forca")

    palavra_secreta = raffle_word("./words.txt")
    letras_acertadas = ["_"] * len(palavra_secreta)
    tryes = 0

    while not tryes > (len(palavra_secreta) - 1):

        chute = input("Qual letra ?\n")
        chute = chute.strip()

        index = 0

        for letra in palavra_secreta:
            if chute.lower() == letra.lower():
                letras_acertadas[index] = letra
            index += 1
        tryes += 1
        palavra_parcial = "".join(letras_acertadas)
        print(palavra_parcial)
        if palavra_parcial == palavra_secreta:
            print("You Win")
            break

    print("Parece que não foi dessa vez")


if __name__ == "__main__":
    jogo()
