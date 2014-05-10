from lsystem import LSystem
from lines_to_image import lines2image
from kivy.uix.image import Image as Im
from kivy.clock import Clock



class LSystemImage(Im):

    def __init__(self,**kwargs):
        super(LSystemImage,self).__init__(**kwargs)
        self.register_event_type('on_update')
        self.iterations = 1
        self.all_lines = []
        self.ls=LSystem()        
        Clock.schedule_interval(self.update,1/5.0)

    def on_update(self,*args,**kwargs):
        pass

    def set_lsystem(self,lsystem):
        self.iterations = 1
        self.ls.set_lsystem(lsystem)
        self.reset()

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
        self.all_lines+=lines
        file_name = "%s.png"%id(self)
        im = lines2image(self.all_lines,map(int,self.size))
        im.save(file_name)
        self.source = file_name
        self.reload()
        self.dispatch('on_update',len(self.all_lines))
