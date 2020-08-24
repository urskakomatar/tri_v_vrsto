class Igra:

    def __init__(self, igralec='X'):
        self.igralec = igralec
        self.plosca = ["-", "-", "-",
                       "-", "-", "-",
                       "-", "-", "-"]

    # plosca
    # 0 1 2
    # 3 4 5
    # 6 7 8

    def izpis_igre(self, stevilo=1):
        print(f"{self.plosca[0]} | {self.plosca[1]} | {self.plosca[2]}")
        print("------------------------")
        print(f"{self.plosca[3]} | {self.plosca[4]} | {self.plosca[5]}")
        print("------------------------")
        print(f"{self.plosca[6]} | {self.plosca[7]} | {self.plosca[8]}")
        print("########################")

    def shrani_potezo(self, polje):
        if self.napacna_poteza(polje):
            return False
        # veš da je polje število, spremeniš ga v integer in odšteješ 1, ker uporabnik vnaša številke 1-9, ti jih rabiš od 0-8
        polje = int(polje) - 1
        if self.ponovljena_poteza(polje):
            return False

        self.plosca[polje] = self.igralec
        return True

    def napacna_poteza(self, polje):
        if polje not in ['1', '2', '3', '4', '5', '6', '7', '8', '9']:
            print("Nepravilen vnos")
            return True
        return False

    def ponovljena_poteza(self, polje):
        if self.plosca[polje] != '-':
            print("Polje je že zasedeno")
            return True
        return False

    # zmaga,poraz
    def preveri_situacijo(self):
        self.zmaga()
        self.neodloceno()

    #    matrika = self.matrika

    def zmaga(self):
        # vrstice
        if self.plosca[0] == self.plosca[1] == self.plosca[2] != '-':
            return self.igralec
        elif self.plosca[3] == self.plosca[4] == self.plosca[5] != '-':
            return self.igralec
        elif self.plosca[6] == self.plosca[7] == self.plosca[8] != '-':
            return self.igralec
        # stolpci
        elif self.plosca[0] == self.plosca[3] == self.plosca[6] != '-':
            return self.igralec
        elif self.plosca[1] == self.plosca[4] == self.plosca[7] != '-':
            return self.igralec
        elif self.plosca[2] == self.plosca[5] == self.plosca[8] != '-':
            return self.igralec
        # diagonale
        elif self.plosca[0] == self.plosca[4] == self.plosca[8] != '-':
            return self.igralec
        elif self.plosca[2] == self.plosca[4] == self.plosca[6] != '-':
            return self.igralec
        return False

    def neodloceno(self):
        if '-' not in self.plosca:
            return True
        return False

    def menjava_igralcev(self):
        if self.igralec == "X":
            self.igralec = "O"
        elif self.igralec == "O":
            self.igralec = "X"

    # def konec_igre:
    #   pass

# def nova_igra:
# pass
