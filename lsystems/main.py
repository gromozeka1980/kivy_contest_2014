from lsystem_image import LSystemImage
from kivy.app import App
from math import *
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from l_open import l_parser
from kivy.uix.dropdown import DropDown
from kivy.metrics import sp
from kivy.uix.screenmanager import Screen,ScreenManager
from editor import LSystemsEdit
from kivy.uix.popup import Popup
from kivy.uix.colorpicker import ColorPicker
from kivy.uix.togglebutton import ToggleButton
from popups import LFileChooser,BackgroundColorPicker
ANDROID=True
from os.path import basename
try: import android
except: ANDROID=False
from pathes import *
from kivy.config import Config


class LSystemsView(Screen):

    def __init__(self,**kwargs): 
        #TODO KV!!!!!!
        self.register_event_type('on_edit')
        super(LSystemsView, self).__init__(**kwargs)
        remove_temp_files()
        self.name = "view"
        self.main_layout=BoxLayout(orientation='vertical')
        self.buttons_layout = BoxLayout(orientation='horizontal',size_hint= (1, .05))
        self.labels_layout = BoxLayout(orientation='horizontal',size_hint= (1, .05))       
        self.image = LSystemImage()
        self.image.bind(on_update=self.image_update)

        self.width_choice=DropDown()
        self.width_choice.bind(on_select=self.choose_width)
        self.width_choice_button=Button(text="Line width")
        self.width_choice_button.bind(on_release = self.width_choice.open)

        for i in range(1,10):
            btn = ToggleButton(text=str(i), group='width_values',size_hint_y=None,height=sp(30))
            if i == 1: btn.state = 'down'
            btn.bind(on_press = lambda btn: self.width_choice.select(btn.text))
            self.width_choice.add_widget(btn)
        self.fractal_choice = DropDown()
        self.fractal_choice.bind(on_select=self.choose_fractal)
        self.file_choice_button=Button(text = "File")        
        self.choice_button=Button(text = "L-System")
        self.file_choice_button.bind(on_release = self.on_file_choose) #self.file_choice.open)
        self.choice_button.bind(on_release = self.fractal_choice.open)
        self.next_button = Button(text="Next")
        self.ls_name = Label(text = "")
        self.cur_file = Label(text = "")
        self.plus_button = Button(text="+")
        self.minus_button = Button(text="-")
        self.background_button = Button(text="Background")
        self.background_button.bind(on_press=self.choose_background_color)
        self.plus_button.bind(on_press=self.plus)
        self.minus_button.bind(on_press=self.minus)
        self.next_button.bind(on_press=self.next)        
        self.edit_button = Button(text="Edit")
        self.edit_button.bind(on_press=self.edit)
        self.segments = Label(text="")
        self.iterations=Label()
        self.buttons_layout.add_widget(self.file_choice_button)
        self.buttons_layout.add_widget(self.choice_button)
        self.buttons_layout.add_widget(self.next_button)
        self.buttons_layout.add_widget(self.plus_button)
        self.buttons_layout.add_widget(self.minus_button)
        self.buttons_layout.add_widget(self.edit_button)
        self.buttons_layout.add_widget(self.background_button)
        self.buttons_layout.add_widget(self.width_choice_button)
        self.labels_layout.add_widget(Label(text="[b]File name:[/b]",markup=True))
        self.labels_layout.add_widget(self.cur_file)
        self.labels_layout.add_widget(Label(text="[b]L-system name:[/b]",markup=True))
        self.labels_layout.add_widget(self.ls_name)
        self.labels_layout.add_widget(Label(text="[b]Number of iterations:[/b]",markup=True))
        self.labels_layout.add_widget(self.iterations)
        self.labels_layout.add_widget(Label(text="[b]Number of segments:[/b]",markup=True))
        self.labels_layout.add_widget(self.segments)
        self.main_layout.add_widget(self.image)
        self.main_layout.add_widget(self.buttons_layout)
        self.main_layout.add_widget(self.labels_layout)

        self.file_chooser = LFileChooser()
        self.file_chooser.bind(on_choose=self.choose_file)
        self.popup = Popup(title='Load L-Systems', content=self.file_chooser,
                      size_hint=(None, None), size=(500, 500))


        
        self.color_picker=BackgroundColorPicker()
        self.color_picker.bind(on_choose=self.change_background_color)
        self.color_picker_popup = Popup(title = "Pick color",
                                        content = self.color_picker,
                                        size_hint = (None,None),
                                        size = (500,500))
        
        

        self.add_widget(self.main_layout)




    def choose_background_color(self,*args,**kwargs):
        self.color_picker_popup.open()

    def change_background_color(self,instance,color):
        r,g,b,a = color
        r=int(255*r)
        g=int(255*g)
        b=int(255*b)
        self.image.set_background_color((r,g,b))
        self.color_picker_popup.dismiss()

    def on_edit(self,*args,**kwargs):
        pass

    def on_file_choose(self,*args):
        self.popup.open()

    def edit(self,instance,*args):        
        name=self.ls_name.text
        if name: fractal = self.fractals[name][0]
        else: fractal = '',{},0
        self.dispatch("on_edit",(name,fractal))


    def set_fractals(self):
        self.fractal_choice.clear_widgets()
        for k in sorted(self.fractals.keys()):
            btn = Button(text = k,size_hint_y=None, height=44)
            btn.bind(on_release = lambda btn: self.fractal_choice.select(btn.text))
            self.fractal_choice.add_widget(btn)
       
    def choose_file(self,instance,text):
        self.cur_file.text = basename(text)
        self.popup.dismiss()
        self.fractals=l_parser(open(l_file_path(text)))
        self.set_fractals()
        self.choose_fractal(None,sorted(self.fractals.keys())[0])

    def choose_width(self,instance,text):
        self.image.set_width(int(text))


    def choose_fractal(self,instance,text):
        self.ls_name.text = text
        self.image.set_lsystem(self.fractals[text][0])
        self.image.set_iterations(1)
        self.iterations.text = str(self.image.get_iterations())


    def image_update(self,instance,num):
        self.segments.text = str(num)

    def next(self,*args):
        cur_name = self.ls_name.text
        if not cur_name: return
        lst = self.fractals.keys()
        i = lst.index(cur_name)
        i+=1
        if i==len(self.fractals): i=0
        self.choose_fractal(None,lst[i])
     

        
    def plus(self,*args):
        self.image.set_iterations(self.image.get_iterations()+1)
        self.iterations.text = str(self.image.get_iterations())

    def minus(self,*args):
        self.image.set_iterations(self.image.get_iterations()-1)
        if self.iterations.text!="0":
            self.iterations.text = str(self.image.get_iterations())



class LSystemsApp(App):

    def build(self,*args,**kwargs):
        self.root=ScreenManager()
        self.view = LSystemsView()
        self.edit = LSystemsEdit()
        self.view.bind(on_edit=self.run_editor)
        self.root.add_widget(self.view)
        self.root.add_widget(self.edit)
        self.bind(on_start = self.post_build_init)
        return self.root

    def post_build_init(self,ev): 
        if ANDROID: android.map_key(android.KEYCODE_BACK, 1001) 
        win = self._app_window 
        win.bind(on_keyboard=self.key_handler) 


    def run_editor(self,instance,fractal):
        self.view.image.set_iterations(1) # no rendering on background
        self.root.current="edit"
        self.edit.load_lsystem(fractal)

    def key_handler(self,keyboard,keycode, *args, **kwargs):
        if keycode==(1001 if ANDROID else 32):
            self.edit.image.set_iterations(1)
            self.root.current="view"


           
if __name__ == '__main__':
    LSystemsApp().run()
