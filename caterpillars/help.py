from kivy.uix.screenmanager import Screen
from kivy.uix.rst import RstDocument
from scrollable_label import ScrollableLabel

help_text="""
Most logic games are actually games of deductive reasoning. This one, however, is one of only a few games belonging to a relatively small selection that uses inductive reasoning.  

Inductive reasoning has its place in the scientific method. Scientists use it to form hypotheses and theories. Deductive reasoning allows them to apply the theories to specific situations.
So, I believe, it is a good idea to develop inductive reason skills with games. 
Two most known games based on inductive reasoning are Zendo and Eleusis.

At each level of this game you are to guess the rule that describes a subset of sequences of multicolored segments (caterpillars).
At the beginning of the game you get 14 caterpillars: 7 of them correspond to the rule, and 7 do not.
Additionally, you can create a custom caterpillar and check whether it corresponds to the rule.
At the moment you feel that you've caught on to the pattern, you can take a test to check your guess.
Any suggestions that may improve game-play or design--or that may include new and interesting rules-- are welcome!


(press space to return to main screen)
"""

class Help(Screen):

    def __init__(self,**kwargs):
        super(Help, self).__init__(**kwargs)
        self.name="wtf"
        wtf_text = ScrollableLabel(text = help_text)
        self.add_widget(wtf_text)
