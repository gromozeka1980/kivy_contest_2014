from l_open import load_color_map
from pathes import *

default_palette=load_color_map(open(map_file_path("default.map")))

def tokenize(iterable):
    special = 'iq0123456789.'
    current = ''
    for s in iterable:
        if not s in special:
            if current:
                yield current
            current=s
        else:
            current+=s
    if current:
        yield current


def interpret(turtle,s,angle,segment_length=5,palette=None):
    invert = False
    if not palette:
        palette = default_palette
    queue=[]
    cur_color = 0
    for l in tokenize(s):
        l=l.lower()
        if l=='f' or l=="d":
            turtle.pd()
            yield turtle.forward(segment_length)
        elif l=='g' or l=="m":
            turtle.pu()
            turtle.forward(segment_length)
        elif l=="!":
            invert = not invert
        elif l=="|":
            turtle.right(angle*(180/int(angle)))
        elif l=='+':
            if not invert: turtle.right(angle)
            else: turtle.left(angle)
        elif l=='-':
            if not invert: turtle.left(angle)
            else: turtle.right(angle)
        elif l=='[': 
            state = turtle.get_state()
            queue.append((state,segment_length,invert)) 
        elif l==']': 
            state,sl,inv=queue.pop() 
            turtle.pu()
            turtle.set_state(state)
            segment_length = sl
            invert =inv
            turtle.pd()
        elif l[0] in '<>':
            cur_color = cur_color + (1 if l[0]=='>' else -1)*int(l[1:])
            cur_color%=len(palette)
            turtle.cur_color = palette[cur_color]
        elif l.startswith('/'):
            if not invert: turtle.left(float(l[1:]))
            else: turtle.left(float(l[1:]))
        elif l.startswith('\\'):
            if not invert: turtle.right(float(l[1:]))
            else: turtle.left(float(l[1:]))
        elif l.startswith("c"):
            cur_color=int(l[1:])
            cur_color%=len(palette)
            turtle.cur_color=palette[cur_color]
        elif l.startswith("@"):
            inverse = "i" in l
            quadratic = "q" in l
            num = float(l[1:].replace("i","").replace("q",""))
            if quadratic: num = num**0.5
            if inverse: num = 1/num
            segment_length*=num
