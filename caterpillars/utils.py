import itertools,random

def next_num(l,base):
    if l==[]: return [-1]
    if l[-1]==base-1: return next_num(l[:-1],base)+[0]
    return l[:-1]+[l[-1]+1]

def n_dig_gen(n,base):
    l=[0 for i in xrange(n)]
    while not(l[0]==-1):
        yield l
        l=next_num(l,base)


def generate_combinations(base,n):
    for i in xrange(1,n+1):
        for x in n_dig_gen(i,base):
            yield x



def get_valid_invalid(func):
    valid,invalid = [],[]
    for i,c in enumerate(generate_combinations(4,6)):
#        if random.randint(1,5)<5: continue
        if func(c):
            valid.append(tuple(c))
        else: invalid.append(tuple(c))
    print len(valid),len(invalid)
    return valid,invalid

def f1(lists,n):
    l=[]
    while lists!=[]:
        for lst in lists:
            l.append(lst[0])
            if len(l)==n:
                return l
        lists=[lst[1:] for lst in lists if len(lst)>1]




def get_n(n, sequence, forbidden=[]):
    sequence=sorted(list(set(sequence)-set(forbidden)),key=len)
    lists=[list(v) for (x,v) in itertools.groupby(sequence,len)]
    for l in lists:
        random.shuffle(l)
    return sorted(f1(lists,n),key=len)