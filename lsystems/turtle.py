from math import sin,cos,radians

class Turtle(object):


    def __init__(self):
        self.reset()

    def reset(self):
        self.pen_down = True
        self.cur_pos = (0,0)
        self.cur_angle = 0        
        self.cur_color = (255,255,255)
    
    def pu(self): self.pen_down = False

    def pd(self): self.pen_down = True

    def right(self,angle): self.cur_angle-=angle

    def left(self,angle): self.cur_angle+=angle

    def get_state(self):
        return (self.cur_pos,self.cur_angle,self.cur_color)

    def set_state(self,state):
        self.cur_pos,self.cur_angle,self.cur_color = state

    def forward(self,step_length):
        x,y = self.cur_pos
        xd = step_length*cos(radians(self.cur_angle))
        yd = step_length*sin(radians(self.cur_angle))
        x1,y1 = x+xd, y+yd
        self.cur_pos = (x1,y1)
        if self.pen_down:
            return ((x,y),(x1,y1),self.cur_color) 
