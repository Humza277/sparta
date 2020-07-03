from Reptile import Reptile

class Snake(Reptile):
    def __init__(self):
        self.cold_blooded = True
        self.forked_tounge = True
        self.venom = bool
        self.limbs = False


    def use_tongue_to_smell(self):
        print("Snake uses tongue to taste the air for prey")
