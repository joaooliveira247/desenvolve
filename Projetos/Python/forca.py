def jogo():
    print("Jogo da forca")

    palavra_secreta = "banana"

    enforcou = False
    acertou = False

    while (not enforcou and not acertou):

        chute = input("Qual letra ?\n")

        index = 0

        for letra in palavra_secreta:
            if chute == letra:
                print(f"Letra {letra} encontrada na posição {index}")
            index += 1

        print("Jogando ...")

    print("Fim do Jogo")


if __name__ == "__main__":
    jogo()
