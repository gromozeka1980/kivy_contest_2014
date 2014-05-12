from lsystem import LSystem
from lines_to_image import lines2image
from kivy.uix.image import Image as Im
from kivy.clock import Clock
import os

CATALOG_ROOT = os.path.join(os.path.dirname(__file__),"Temp")

class LSystemImage(Im):

    def __init__(self,**kwargs):
        super(LSystemImage,self).__init__(**kwargs)
        self.register_event_type('on_update')
        self.bind(pos=self.reload_image)
        self.bind(size=self.reload_image)
        self.iterations = 1
        self.all_lines = []
        self.ls=LSystem()        
        Clock.schedule_interval(self.update,1/10.0)

    def on_update(self,*args,**kwargs):
        pass

    def set_lsystem(self,lsystem):
        self.ls.set_lsystem(lsystem)
        self.reset()
        #self.set_iterations(1)

    def set_iterations(self,iterations):
        self.iterations=iterations
        self.reset()

    def get_iterations(self):
        return self.iterations

    def reset(self):
        self.ls.reset()
        self.chunks = self.ls.draw(self.iterations,1000)
        self.all_lines = []

    def update(self,*args,**kwargs):
        try:
            lines = self.chunks.next()
        except:
            lines = []
        if lines:
            self.all_lines+=lines
            self.reload_image(None)
        self.dispatch('on_update',len(self.all_lines))

    def reload_image(self,instance,*args):
        file_name = os.path.join(CATALOG_ROOT,"%s.png"%id(self))
        im = lines2image(self.all_lines,map(int,self.size))
        im.save(file_name)
        self.source = file_name
        self.reload()
