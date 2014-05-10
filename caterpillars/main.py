# -*- coding: utf-8 -*-
import random
from time import sleep
import kivy
kivy.require('1.0.6') # replace with your current kivy version !
from kivy.uix.scrollview import ScrollView
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.gridlayout import GridLayout
#from kivy.uix.rst import RstDocument
from kivy.app import App
from kivy.uix.widget import Widget
from kivy.uix.button import Button
from kivy.uix.label import Label
#from kivy.utils import get_random_color
from kivy.core.window import Window
from kivy.uix.screenmanager import ScreenManager, Screen
from level_chooser import LevelChooser
from exam import Exam
from utils import *
from rules import rules
ANDROID=True
try: import android
except: ANDROID=False

import itertools

description = u"""Most of the logic games are actually games of deductive logic. This one is of very small family of games that use inductive logic (most known games from this family are Eleusis and Zendo).
At each level of this game you are to guess the rule, that describes a subset of sequences of multicolor segments (caterpillars). At the beginning of the game you get 14 caterpillars, 7 of them correspond to the rule and 7 don't. Besides you can create a custom caterpillar and check wether it corresponds to the rule. At the moment you feel that you've catched the pattern, you can take a test to check your guess.
Any suggestions, that may improve gameplay or design, and of course new interesting rules are welcome."""


class WTF(Screen):

    def __init__(self,**kwargs):
        super(WTF, self).__init__(**kwargs)
        self.name="wtf"
        wtf_text = Label(text=description)
        self.add_widget(wtf_text)
        

            

class CaterpillarsApp(App):            

    def build(self):
        self.progress=self.load_progress()
        self.grid_screen=LevelChooser()
        self.grid_screen.bind(on_level=self.level_choice)        
        self.grid_screen.bind(on_wtf=self.wtf)
        self.grid_screen.color_progress(self.progress) 
        self.level_screen=Level()
        self.wtf_screen=WTF()
        self.level_screen.bind(on_pass=self.success)
        self.root=ScreenManager()
        self.root.add_widget(self.grid_screen)
        self.root.add_widget(self.level_screen)
        self.root.add_widget(self.wtf_screen)
        self.bind(on_start = self.post_build_init)
        return self.root


    def post_build_init(self,ev): 
        if ANDROID: android.map_key(android.KEYCODE_BACK, 1001) 
        win = self._app_window 
        win.bind(on_keyboard=self.key_handler) 

    def key_handler(self,keyboard,keycode, *args, **kwargs):
        if keycode==(1001 if ANDROID else 32):
            self.root.current="grid"

    
    def level_choice(self,instance,level_id,rule):
        self.cur_level=level_id
        self.root.current="level"
        self.level_screen.start_game(rule)
#        self.root.current="level"

    def success(self,instance):
        if not self.cur_level in self.progress:
            self.progress.append(self.cur_level)
        self.grid_screen.color_progress(self.progress)        
        self.save_progress()
        self.root.current="grid"

    def wtf(self,*args):
        self.root.current="wtf"
        

    def load_progress(self):
        try: return map(int,open("progress.txt").read().split())
        except: return []

    def save_progress(self):
        open("progress.txt","w").write(' '.join(map(str,self.progress)))
           

if __name__ == '__main__':
    CaterpillarsApp().run()
