from AnimalOOP import animal

class Reptile(animal):
    def __init__(self):
        self.cold_blooded = bool
        self.tetrapod = bool
        self.heart_chambers = [3, 4]
        self.eat = bool

    def seek_heat(self):
        print("Reptile seeks the heat")

    def hunt(self):
        print("Reptile hunts for food")

    def use_venom(self):
        print("Reptile uses venom")

    def attract_mate_through_scent(self):
        print("Reptile smells to find the male/female of the species")