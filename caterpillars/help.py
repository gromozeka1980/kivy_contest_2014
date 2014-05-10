from kivy.uix.screenmanager import Screen
from kivy.uix.rst import RstDocument

help_text="""Most of the logic games are actually games of deductive logic.
This one is of very small family of games that uses inductive logic (most
known games from this family are Eleusis and Zendo).
At each level of this game you are to guess the rule,
that describes a subset of sequences of multicolor segments (caterpillars).
At the beginning  of the game you get 14 caterpillars,
7 of them correspond to the rule and 7 don't.
Besides you can create a custom caterpillar and check wether it corresponds to the rule.
At the moment you feel that you've catched the pattern, you can take a test to check your guess.

Any suggestions, that may improve gameplay or design,
and of course new interesting rules are welcome.
"""

class Help(Screen):

    def __init__(self,**kwargs):
        super(Help, self).__init__(**kwargs)
        self.name="wtf"
        wtf_text = RstDocument(text=help_text)
        self.add_widget(wtf_text)
