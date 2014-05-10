#Game levels, each level is a rule described by a boolean function

import itertools

def seqs(s): return [(x,len(list(v))) for (x,v) in itertools.groupby(s)]

def f1(l): return tuple(l)==tuple(l[-1::-1])

def f2(l): return l[0]!=l[-1]

def f3(l): return 1 in l

def f4(l): return not((0 in l) and (3 in l))

def f5(l): return len(set(l))==3

def f6(l): return l.count(0)==3

def f7(l): return l.count(3)>l.count(2)

def f8(l):
    s=''.join(map(str,l))
    return not('02' in s or '20' in s)

def f9(l):
    return l.count(0)+l.count(3)==5
    
def f10(s): return min(seqs(s),key=lambda (x,y):y)[1]==2

def f11(s): return len(seqs(s))==4

def f12(s): return len(filter(lambda (x,y):x==1,seqs(s)))==2

def f13(s): return len(filter(lambda (x,y):y==2,seqs(s)))==2

def f14(s): return max(seqs(s),key=lambda (x,y):y)[1]==2

def f15(s):
    x=[a[1] for a in seqs(s)]
    return x==sorted(x) or x==sorted(x,reverse=True)    

def f16(s):
    return len(set([s.count(c) for c in set(s)]))==1

def f17(s):
    a=sorted([y for (x,y) in seqs(s)])
    return a.count(a[-1])==1
    
def f18(s): return len(set(seqs(s)))==3

def f19(s):
    a=sorted([y for (x,y) in seqs(s)])
    return a.count(a[0])==1


def f20(s): return len(seqs(s))==len(set(seqs(s)))


    
    
    



rules=[f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20]
