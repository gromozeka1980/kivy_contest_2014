import Image,ImageDraw

def lines2image(lines,res,background_color=(0,0,0),line_width=2):
    """
    input - list of lines and resolution, output - PIL image after
    appropriate scaling and centering
    line is a tuple - ((x,y),(x1,y1),color)
    """
    offset = 3 #3 pixel border
    res_orig=res
    res=res[0]-offset*2,res[1]-offset*2    
    lines = list(lines)
    window_aspect_ratio = float(res[0])/res[1]
    min_x,max_x,min_y,max_y = 0,0,0,0
    for ((x,y),(x1,y1),color) in lines:
        min_x,max_x = min(min_x,x,x1),max(max_x,x,x1)
        min_y,max_y = min(min_y,y,y1),max(max_y,y,y1)
    width,height = max_x-min_x,max_y-min_y
    #scaling the image to fit the widget 
    aspect_ratio = float(width)/(height+0.1)
    #ofsets to put the image in the center
    x_offset,y_offset = 0,0
    if aspect_ratio>window_aspect_ratio:
        coeff = float(res[0])/(width+0.1)
        y_offset=(res[1]-height*coeff)/2.0
    else:
        coeff = float(res[1])/(height+0.1)
        x_offset=(res[0]-width*coeff)/2.0
    x_change = lambda x: ((x-min_x)*coeff+x_offset)+offset
    y_change = lambda y: (res[1]-((y-min_y)*coeff+y_offset))+offset
    im = Image.new("RGB",res_orig,background_color)
    draw = ImageDraw.Draw(im)
    #if not(lines):
    #    draw.text((res[0]/2,res[1]/2),"NO VISUAL REPRESENTATION")
    for ((x,y),(x1,y1),color) in lines:
        x,x1 = x_change(x),x_change(x1)
        y,y1 = y_change(y),y_change(y1)
        draw.line((x,y,x1,y1),fill=color,width=line_width)
    return im
