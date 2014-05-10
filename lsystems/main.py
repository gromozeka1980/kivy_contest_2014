from lsystem_image import LSystemImage
from kivy.app import App
from math import *
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from itertools import cycle
from l_open import l_parser
from kivy.uix.dropdown import DropDown

class LSystemsApp(App):

    def build(self):
        self.iter = cycle(fractals.keys())
        self.main_layout=BoxLayout(orientation='vertical')
        self.buttons_layout = BoxLayout(orientation='horizontal',size_hint= (1, .1))
        self.image = LSystemImage()
        name = fractals.keys()[0]
        self.image.set_lsystem(fractals[name])
        self.image.bind(on_update=self.image_update)
        self.choice = DropDown()
        for k in sorted(fractals.keys()):
            btn = Button(text = k,size_hint_y=None, height=44)
            btn.bind(on_release = lambda btn: self.choice.select(btn.text))
            self.choice.add_widget(btn)
        self.choice.bind(on_select=self.choose_fractal)
        self.choice_button=Button(text = "Choose L-System")
        self.choice_button.bind(on_release = self.choice.open)
        self.next_button = Button(text="Next")
        self.ls_name = Label(text = name)
        self.plus_button = Button(text="+")
        self.minus_button = Button(text="-")
        self.plus_button.bind(on_press=self.plus)
        self.minus_button.bind(on_press=self.minus)
        self.next_button.bind(on_press=self.next)
        self.segments = Label(text="")
        self.buttons_layout.add_widget(self.choice_button)
        self.buttons_layout.add_widget(self.ls_name)
        self.buttons_layout.add_widget(self.next_button)
        self.buttons_layout.add_widget(self.plus_button)
        self.buttons_layout.add_widget(self.minus_button)
        self.buttons_layout.add_widget(self.segments)
        self.main_layout.add_widget(self.image)
        self.main_layout.add_widget(self.buttons_layout)
        return self.main_layout

    def choose_fractal(self,instance,text):
        print text
        self.ls_name.text = text
        self.image.set_lsystem(fractals[text])

    def image_update(self,instance,num):
        self.segments.text = str(num)

    def next(self,*args):
        name = self.iter.next()
        self.ls_name.text = name
        self.image.set_lsystem(fractals[name])
        
    def plus(self,*args):
        self.image.set_iterations(self.image.get_iterations()+1)

    def minus(self,*args):
        self.image.set_iterations(self.image.get_iterations()-1)


fractals = l_parser(open("./l/fract205.l"))
           
if __name__ == '__main__':
    LSystemsApp().run()
