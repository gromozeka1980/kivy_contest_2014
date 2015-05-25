# caterpillar "keyboard"
# user can create custom caterpillar and check if it is valid or not

from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from caterpillar import Caterpillar

class InputCaterpillar(BoxLayout):

    def __init__(self,**kwargs):
        self.spacing=5
        self.register_event_type('on_input')
        super(InputCaterpillar, self).__init__(**kwargs)
        self.orientation="vertical"
        self.chain_widget=Caterpillar()
        self.func=None
        buttons=BoxLayout(orientation="horizontal")
        for (k,v) in sorted(Caterpillar._colors.items()):
            b=Button()
            b.num=k
            b.background_color=[c*3 for c in list(v)]+[1]
            b.bind(on_press=self.color_press)
            buttons.add_widget(b)
        b=Button(text="<=")
        b.bind(on_press=self.backspace)
        buttons.add_widget(b)
        b=Button(text=u"OK")
        b.bind(on_press=self.enter)
        buttons.add_widget(b)
        self.add_widget(self.chain_widget)
        self.add_widget(buttons)

    def on_input(self,chain):
        pass


    def set_chain(self,chain):
        # if caterpillar is valid it looks to the left, otherwise to the right
        eyes='right'
        eyes='left' if chain and self.func and self.func(chain) else 'right'
        self.chain_widget.set_chain(chain,eye_direction=eyes)


    def backspace(self,instance):
        chain=self.chain_widget.get_chain()[:-1]
        self.set_chain(chain)

    def color_press(self,instance):
        chain=self.chain_widget.get_chain()
        if len(chain)==7: return
        chain=chain+[instance.num]
        self.set_chain(chain)


    def enter(self,instance):
        if self.chain_widget.get_chain()==[]:return
        self.dispatch('on_input',tuple(self.chain_widget.get_chain()))
        self.chain_widget.set_chain([])