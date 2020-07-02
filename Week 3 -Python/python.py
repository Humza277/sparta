from snake import Snake

class Python(Snake):
    def __init__(self):
        self.cold_blooded = bool
        self.tetrapod = bool
        self.heart_chambers = [3, 4]
        self.eat = bool

    def digest_large_prey(self):
        print("The Snake eats prey larger than itself")

    def constrict(self):
        print("The Snake eats prey larger than itself")

    def climb(self):
        print("The Snake eats prey larger than itself")

    def shed_skin(self):
        print("The Snake eats prey larger than itself")