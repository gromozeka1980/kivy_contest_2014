def parse_line(line):
    line = line.split(";")[0]
    line = line.lower().strip()
    if line.startswith("angle"):
        return ("angle",line.replace("="," ").split()[1])
    elif line.startswith("axiom"):
        print line
        try: return ("axiom",line.replace("="," ").split()[1])
        except: pass
    elif line.endswith("{"):
        return ("name",line[:-1].strip())
    elif line.endswith("}"):
        return ("end",)
    elif len(line)>1 and line[1]=="=":
        return ("rule",line.split("="))


def l_parser(lines):
    d={}
    angle,axiom,rules,name = None,None,{},None
    for l in lines:
        p = parse_line(l)
        print p
        if not p: continue
        if p[0]=="name":
            angle,axiom,rules = None,None,{}
            name = p[1]
        if p[0] == "end":
            print angle,axiom,rules
            if angle and axiom and rules and name:
                d[name]=(axiom,rules,angle)
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


        
