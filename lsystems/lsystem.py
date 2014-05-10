from interpreter import interpret
from turtle import Turtle

class LSystem(object):


    def __init__(self):
        self.turtle = Turtle()

    def reset(self):
        self.turtle.reset()

    def set_lsystem(self,lsystem):
        self.axiom,self.rules,self.angle = lsystem
        self.segment_length=5         


    def generate(self,generations_num): 
        def generate_help(start): 
             for e in start: 
                for r in self.rules.get(e,e):
                    yield r 
        if generations_num==0: return self.axiom
        return generate_help(self.generate(generations_num-1))     
                                                                
    def draw(self,generations,chunk_size):
        iterable = interpret(self.turtle,self.generate(generations),self.angle)
        l=[]
        for e in iterable:
            l.append(e)
            if len(l)==chunk_size:
                yield l
                l=[]
        if l: yield l
