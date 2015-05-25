# -*- coding: utf-8 -*-
__version__="0.0.1"
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
from level import Level
from help import Help
from rules import rules
ANDROID=True
try: import android
except: ANDROID=False
import itertools
import os
CATALOG_ROOT = os.path.dirname(__file__)

          

class CaterpillarsApp(App):


    def on_pause(self):
      # Here you can save data if needed
        return True

    def on_resume(self):
      # Here you can check if any data needs replacing (usually nothing)
        pass

    def open_settings(*args):
        pass            

    def build(self):
        self.progress=self.load_progress()
        self.grid_screen=LevelChooser()
        self.grid_screen.bind(on_level=self.level_choice)        
        self.grid_screen.bind(on_wtf=self.wtf)
        self.grid_screen.color_progress(self.progress) 
        self.level_screen=Level()
        self.wtf_screen=Help()
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
            if self.root.current == "grid":
                App().stop()
            else:    
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
        try:
            return map(int,open(os.path.join(CATALOG_ROOT,"progress.txt")).read().split())
        except:
            return []

    def save_progress(self):
        open(os.path.join(CATALOG_ROOT,"progress.txt"),"w").write(' '.join(map(str,self.progress)))
           

if __name__ == '__main__':
    CaterpillarsApp().run()
