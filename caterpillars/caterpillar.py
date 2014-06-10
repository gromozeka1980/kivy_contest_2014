# Caterpillar widget, gets the number sequense and draws appropriate caterpillar

from kivy.uix.widget import Widget
from kivy.graphics import Rectangle,Ellipse,Color,Line


class Caterpillar(Widget):

    _colors={0:(0.9921,0.3882,0.4118),
             1:(0.6627, 0.8942, 0.21569),
             2:(0.20784, 0.27056, 0.3921),
             3:(0.7098, 0.8, 0.6941)}

    def __init__(self,chain=None,**kwargs):
        super(Caterpillar, self).__init__(**kwargs)
        self._chain=[]
        self.eye_direction="forward"
        self.bind(pos=self._draw)
        self.bind(size=self._draw)
        if chain:
            self.set_chain(chain)

    def eye(self,pos,size):
        pos1=pos
        if self.eye_direction=='forward':
            pos1=(pos[0]+size[0]*0.25,pos[1]+size[1]*0.25)
        elif self.eye_direction=='left':
            pos1=(pos[0],pos[1]+size[1]*0.25)
        elif self.eye_direction=='right':
            pos1=(pos[0]+size[0]*0.5,pos[1]+size[1]*0.25)
        with self.canvas:
            Color(1,1,1)
            Ellipse(pos=pos,size=size)
            Color(0,0,0)
            Ellipse(pos=pos1, size=(size[0]*0.5,size[1]*0.5))

    def segment(self,pos,size,color,first=False,last=False):
        with self.canvas:
            Color(*color)
            Ellipse(pos=pos,size=size)
            if not(first):
                Rectangle(pos=pos,size=(size[0]/2,size[1]))
            if not(last):
                Rectangle(pos=(pos[0]+size[0]/2,pos[1]),size=(size[0]/2,size[1]))
                Color(0,0,0,0.2)
                Line(points=[pos[0]+size[0],pos[1],pos[0]+size[0],pos[1]+size[1]])

    def head(self,pos,size,color,last=False):
        self.segment(pos,size,color,True,last)
        self.eye((pos[0],pos[1]+size[1]*0.4),(size[0]*0.2,size[1]*0.2))
        self.eye((pos[0]+size[0]*0.4,pos[1]+size[1]*0.4),(size[0]*0.2,size[1]*0.2))

    def get_chain(self):
        return self._chain

    def set_chain(self,chain,eye_direction="forward"):
        self.eye_direction=eye_direction
        self._chain=chain
        self._draw()

    def _draw(self,*args):
        self.canvas.clear()
        if self._chain==[]: return
        x,y=self.pos
        a,b=self.size        
        num=7#len(self._chain)
        if a<b*num: b = a/num
        else: a=b*num
        for i,e in enumerate(self._chain):
            pos=(x+a/num*i,y)
            size=(a/num,b)
            last = (i==len(self._chain)-1)
            if i==0:
                self.head(pos,size,self._colors[e],last=last)
            else:
                self.segment(pos,size,self._colors[e],False, last=last)
