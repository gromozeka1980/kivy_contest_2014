#from https://github.com/kivy/kivy/wiki/Scrollable-Label, thanks to Alexander Taylor!

from kivy.uix.label import Label
from kivy.uix.scrollview import ScrollView
from kivy.properties import StringProperty
from kivy.lang import Builder

Builder.load_string('''
<ScrollableLabel>:
    Label:
        size_hint_y: None
        markup: True
        height: self.texture_size[1]
        text_size: self.width, None
        text: root.text
''')

class ScrollableLabel(ScrollView):
    text = StringProperty('')

