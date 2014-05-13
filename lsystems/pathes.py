import os

def _path(name,x): 
	x_path=os.path.join(os.path.dirname(__file__),x)
	return os.path.join(x_path,name)

def l_file_path(name): return _path(name,"l")

def map_file_path(name): return _path(name,"maps")

def temp_file_path(name): return _path(name,"temp")