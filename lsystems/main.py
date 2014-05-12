from lsystem_image import LSystemImage
from kivy.app import App
from math import *
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from itertools import cycle
from l_open import l_parser
from kivy.uix.dropdown import DropDown
import os
from kivy.uix.screenmanager import Screen,ScreenManager
from editor import LSystemsEdit

CATALOG_ROOT = os.path.join(os.path.dirname(__file__),"l")

class LSystemsView(Screen):

    def __init__(self,**kwargs): 
        self.register_event_type('on_edit')
        super(LSystemsView, self).__init__(**kwargs)
        self.name = "view"
        self.main_layout=BoxLayout(orientation='vertical')
        self.buttons_layout = BoxLayout(orientation='horizontal',size_hint= (1, .1))
        self.image = LSystemImage()
        self.image.bind(on_update=self.image_update)
        self.file_choice = DropDown()
        self.fractal_choice = DropDown()
        self.fractal_choice.bind(on_select=self.choose_fractal)
        self.file_choice.bind(on_select=self.choose_file)
        self.file_choice_button=Button(text = "Choose file")        
        self.choice_button=Button(text = "Choose L-System")
        self.file_choice_button.bind(on_release = self.file_choice.open)
        self.choice_button.bind(on_release = self.fractal_choice.open)
        self.next_button = Button(text="Next")
        self.ls_name = Label(text = "")
        self.plus_button = Button(text="+")
        self.minus_button = Button(text="-")
        self.plus_button.bind(on_press=self.plus)
        self.minus_button.bind(on_press=self.minus)
        self.next_button.bind(on_press=self.next)        
        self.edit_button = Button(text="Edit")
        self.edit_button.bind(on_press=self.edit)
        self.segments = Label(text="")
        self.buttons_layout.add_widget(self.file_choice_button)
        self.buttons_layout.add_widget(self.choice_button)
        self.buttons_layout.add_widget(self.ls_name)
        self.buttons_layout.add_widget(self.next_button)
        self.buttons_layout.add_widget(self.plus_button)
        self.buttons_layout.add_widget(self.minus_button)
        self.buttons_layout.add_widget(self.segments)
        self.buttons_layout.add_widget(self.edit_button)
        self.main_layout.add_widget(self.image)
        self.main_layout.add_widget(self.buttons_layout)

        self.file_list = os.listdir(CATALOG_ROOT)
        self.set_files()
        self.choose_file(None,self.file_list[0])
        self.iter = cycle(self.fractals.keys())


        self.add_widget(self.main_layout)

    def on_edit(*args,**kwargs):
        pass


    def edit(self,instance,*args):
        name=self.ls_name.text
        self.dispatch("on_edit",(name,self.fractals[name]))


    def set_fractals(self):
        self.fractal_choice.clear_widgets()
        for k in sorted(self.fractals.keys()):
            btn = Button(text = k,size_hint_y=None, height=44)
            btn.bind(on_release = lambda btn: self.fractal_choice.select(btn.text))
            self.fractal_choice.add_widget(btn)

    def set_files(self):
        for k in sorted(self.file_list):
            btn = Button(text = k,size_hint_y=None, height=44)
            btn.bind(on_release = lambda btn: self.file_choice.select(btn.text))
            self.file_choice.add_widget(btn)
        
    def choose_file(self,instance,text):
        print "CHOOSE FILE",text
        self.fractals=l_parser(open(os.path.join(CATALOG_ROOT,text)))
        self.set_fractals()
        self.choose_fractal(None,sorted(self.fractals.keys())[0])

    def choose_fractal(self,instance,text):
        self.ls_name.text = text
        self.image.set_lsystem(self.fractals[text])
        self.image.set_iterations(1)

    def image_update(self,instance,num):
        self.segments.text = str(num)

    def next(self,*args):
        cur_name = self.ls_name.text
        lst = self.fractals.keys()
        i = lst.index(cur_name)
        i+=1
        if i==len(self.fractals): i=0
        self.choose_fractal(None,lst[i])
     

        
    def plus(self,*args):
        self.image.set_iterations(self.image.get_iterations()+1)

    def minus(self,*args):
        self.image.set_iterations(self.image.get_iterations()-1)



class LSystemsApp(App):

    def build(self,*args,**kwargs):
        self.root=ScreenManager()
        self.view = LSystemsView()
        self.edit = LSystemsEdit()
        self.view.bind(on_edit=self.run_editor)
        self.root.add_widget(self.view)
        self.root.add_widget(self.edit)
        #self.bind(on_start = self.post_build_init)
        return self.root


    def run_editor(self,instance,fractal):
        self.root.current="edit"
        self.edit.load_lsystem(fractal)


           
if __name__ == '__main__':
    LSystemsApp().run()
