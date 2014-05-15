from lsystem_image import LSystemImage
from kivy.app import App
from math import *
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.togglebutton import ToggleButton
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
import os
from kivy.metrics import sp
from kivy.uix.gridlayout import GridLayout
from kivy.uix.screenmanager import Screen
from scrollable_label import ScrollableLabel

syntax="""
 $|%         : turn 180 degrees or the largest possible turn < 180 degrees

 $f% or $d%    : draw a line using the current direction/length
 $g% or $m%    : move forward instead of drawing

 $+%         : turn left
 $-%         : turn right
 $\%{ANGLE}  : turn left {ANGLE} degrees
 $/%{ANGLE}  : turn right {ANGLE} degrees

 $[%         : save state (position, angle, size, etc.)
 $]%         : restore state
 $!%         : reverse the meaning of '+' and '-' and '\' and '/'

 $@%{SCALE}  : multiply the current line length by {SCALE}
 $@q%{SCALE} : multiply the line length by the square root of {SCALE}
 $@I%{SCALE} : multiply the line length by the reciprocal of {SCALE}

 $c%{INDEX}  : set color map index to {INDEX}

 $<%{COUNT}  : increment color map index by {COUNT}
 $>%{COUNT}  : decrement color map index by {COUNT}

 {LETTER}$=%{COMMANDS} : associate {COMMANDS} with character {LETTER}
""".replace("$","[color=#ff0000][b]").replace("%","[/b][/color]")


CATALOG_ROOT = os.path.join(os.path.dirname(__file__),"l")

class LSystemsEdit(Screen):

    def __init__(self,**kwargs):
        super(LSystemsEdit, self).__init__(**kwargs)
        self.name="edit"
        self.main_layout=BoxLayout(orientation='horizontal')

        self.edit_layout=BoxLayout(orientation='vertical',size_hint_x=.4)
        #Text boxes
        self.name_input = TextInput(multiline=False,size_hint_y=None,height=sp(30))
        self.name_input.bind(text=self.on_text)
        self.angle = TextInput(multiline=False,size_hint_y=None,height=sp(30))
        self.angle.bind(text=self.on_text)
        self.axiom = TextInput(multiline=False,size_hint_y=None,height=sp(30))
        self.axiom.bind(text=self.on_text)
        self.rules = TextInput(multiline=True,size_hint=(1,.4))
        self.rules.bind(text=self.on_text)
        self.rule_chooser = GridLayout(cols=6,size_hint=(1,.2))
        #buttons for changing number of iterations
        self.iterations_buttons = BoxLayout(orientation = 'horizontal',size_hint_y=None,height=sp(30))
        self.minus = Button(text="-")
        self.iter_label = Label(text = "1")
        self.plus = Button(text = "+")
        self.minus.bind(on_press = self.iter_press)
        self.plus.bind(on_press = self.iter_press)
        self.iterations_buttons.add_widget(self.minus)
        self.iterations_buttons.add_widget(self.iter_label)
        self.iterations_buttons.add_widget(self.plus)        

        self.image = LSystemImage()

        self.edit_layout.add_widget(Label(text="[b]Name[/b]",markup=True,size_hint_y=None,height=sp(30)))
        self.edit_layout.add_widget(self.name_input)
        self.edit_layout.add_widget(Label(text="[b]Angle[/b]",markup=True,size_hint_y=None,height=sp(30)))
        self.edit_layout.add_widget(self.angle)
        self.edit_layout.add_widget(Label(text="[b]Axiom[/b]",markup=True,size_hint_y=None,height=sp(30)))
        self.edit_layout.add_widget(self.axiom)
        self.edit_layout.add_widget(Label(text="[b]Rules[/b]",markup=True,size_hint_y=None,height=sp(30)))
        self.edit_layout.add_widget(self.rules)
        self.edit_layout.add_widget((Label(text="[b]Choose rule to visualise[/b]",markup=True,size_hint_y=None,height=sp(30))))
        self.edit_layout.add_widget(self.rule_chooser)
        self.edit_layout.add_widget((Label(text="[b]Change number of iterations[/b]",markup=True,size_hint_y=None,height=sp(30))))
        self.edit_layout.add_widget(self.iterations_buttons)
        self.edit_layout.add_widget((Label(text="[b]L-systems syntax[/b]",markup=True,size_hint_y=None,height=sp(30))))
        syntax_label=ScrollableLabel()
        syntax_label.text = syntax
#        def f(*args,**kwargs): syntax_label.text_size = syntax_label.size
#        syntax_label.bind(size = f)


        self.edit_layout.add_widget(syntax_label)
        self.main_layout.add_widget(self.edit_layout)
        self.main_layout.add_widget(self.image)

        #self.load_lsystem(('quartet', ('fb', {'a': 'fbfa+hfa+fb-fa', 'h': '-', 'b': 'fb+fa-fb-jfbfa', 'j': '+', 'f': ''}, 90.0)))

        self.add_widget(self.main_layout)



    def iter_press(self,instance,*args):
        if instance.text == "+":
            iteration = int(self.iter_label.text)+1
        else:
            iteration = int(self.iter_label.text)-1
            if iteration<0: iteration = 0
        self.image.set_iterations(iteration)
        self.iter_label.text = str(iteration)


    def set_rule_chooser(self):
        if self.lsystem:
            name,(axiom,rules,angle) = self.lsystem
        else:
            rules = {}
        self.rule_chooser.clear_widgets()
        for name in ["axiom"]+sorted(rules.keys()):
            btn = ToggleButton(text=name, group='rules',size_hint_y=None,height=sp(30))
            if name == 'axiom': btn.state = 'down'
            btn.bind(on_press = self.on_rule_choose)
            self.rule_chooser.add_widget(btn)


    def on_rule_choose(self,instance,*args):
        if self.lsystem:
            name,(axiom,rules,angle) = self.lsystem
            new_axiom = instance.text if instance.text!="axiom" else axiom
            self.image.set_lsystem((new_axiom,rules,angle))

    def on_text(self,instance,*args):
        self.get_lsystem()
        if self.lsystem:
            self.image.set_lsystem(self.lsystem[1])
            #self.image.set_iterations(1)
        self.set_rule_chooser()

    def load_lsystem(self,lsystem):
        name,(axiom,rules,angle) = lsystem
        self.name_input.text = name
        self.axiom.text = axiom
        self.angle.text = str(angle)
        self.rules.text = '\n'.join(["%s=%s"%(k,v) for (k,v) in sorted(rules.items())])

    def get_lsystem(self):
        name = self.name_input.text
        axiom = self.axiom.text.replace(" ","")
        angle=''
        try: angle = float(self.angle.text)
        except: angle = 0
        try: rules = dict([x.split("=") for x in self.rules.text.replace(" ","").split("\n") if x])
        except: rules = {}
        self.lsystem = name,(axiom,rules,angle)
            
        

class LSystemsEditApp(App):

    def build(self):
        return LSystemsEdit()

    


if __name__ == '__main__':
    LSystemsEditApp().run()
