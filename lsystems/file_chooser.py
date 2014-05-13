from kivy.uix.boxlayout import BoxLayout
from pathes import *
from kivy.lang import Builder


#Why did I learn this style of writing GUI
# on the last day of the contest????

file_chooser_gui = """
<LFileChooser>:
    orientation:"vertical"
    FileChooserListView:
        id: filechooser
        filters: ['*.l']
        multiselect:False
        path: "."
    Button:
        text: "Ok"
        size_hint_y: None
        height: sp(30)
        on_release:root.load(filechooser.selection)
""" #%l_file_path("")


class LFileChooser(BoxLayout):

    def __init__(self,**kwargs):
        Builder.load_string(file_chooser_gui)
        super(LFileChooser, self).__init__(**kwargs)
        self.register_event_type('on_choose')

    def load(self, selection):
        if selection:
            self.dispatch("on_choose",selection[0])

    def on_choose(self,*args,**kwargs):
        pass



color_picker_gui = """
<BackgroundColorPicker>
    orientation:"vertical"
    ColorPicker:
        id: color_picker
    Button:
        text: "Ok"
        size_hint_y: None
        height: sp(30)
        on_release:root.load(color_picker.color)
"""

class BackgroundColorPicker(BoxLayout):

    def __init__(self,**kwargs):
        Builder.load_string(color_picker_gui)
        super(BackgroundColorPicker, self).__init__(**kwargs)
        self.register_event_type('on_choose')

    def load(self, color):
        print color
        self.dispatch("on_choose",color)

    def on_choose(self,*args,**kwargs):
        pass


         
