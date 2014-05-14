def parse_line(line):
    raw_line = line
    rv = None    
    line = line.split(";")[0] #ignore comments
    line = line.strip()
    if not line.endswith("{"): 
        line = line.lower() #only names are case-sensitive
    if line.startswith("angle"):
        rv = ("angle",line.replace("="," ").split()[1])
    elif line.startswith("axiom"):
        try: rv = ("axiom",line.replace("="," ").split()[1])
        except: pass
    elif line.endswith("{"):
        rv = ("name",line[:-1].strip())
    elif line.endswith("}"):
        rv = ("end",)
    elif len(line)>1 and line[1]=="=":
        rv = ("rule",line.split("="))
    return rv,raw_line


def l_parser(lines):
    d={}
    angle,axiom,rules,name = None,None,{},None
    raw_text=""
    for l in lines:
        p,r = parse_line(l)
        raw_text+=r
        if not p: continue
        if p[0]=="name":
            raw_text = r
            angle,axiom,rules = None,None,{}
            name = p[1]
        if p[0] == "end":
            if angle and axiom and rules and name:
                d[name]=(axiom,rules,angle),raw_text
        if p[0] == "angle":
            angle = 360.0/float(p[1])
        if p[0] == "axiom":
            axiom = p[1]
        if p[0] == "rule":
            k,v=p[1]
            if k in rules: rules[k]+=v
            else: rules[k]=v
    return d


def load_color_map(f):
    arr = []
    for l in f:
        try: arr.append(tuple(map(int,l.split()[:3])))
        except: pass
    return arr


def dict2l(d,f):
    for k in d:
        f.write("%s {\n"%k)
        axiom,rules,angle = d[k]
        f.write("angle=%s\n"%angle)
        f.write("axiom=%s\n"%axiom)
        for rk in rules:
            f.write("%s=%s\n"%(rk,rules[rk]))
        f.write("}\n\n")


        
