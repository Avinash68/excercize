class lexicon(object):
    Direction = ["north", "south", "east", "west", "down", "up", "left", "right", "back"]
    Verbs = ["Go", "stop", "kill", "eat"]
    Stop = ["The", "in", "of", "from", "at", "it"]
    Nouns = ["Door", "bear", "princess", "cabinet"]
    number = range(0, 11)

    def __init__(self, sentences):
        self.sentences = sentences

    def go(self, direction):
        return self.paths.get(direction, None)

    def add_paths(self, paths):
        self.paths.update(paths)
