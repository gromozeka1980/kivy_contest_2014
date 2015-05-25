from rules import rules
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.gridlayout import GridLayout
from kivy.uix.button import Button
from kivy.uix.screenmanager import Screen


class LevelChooser(Screen):

    def __init__(self,**kwargs):
        super(LevelChooser, self).__init__(**kwargs)
        self.name="grid"
        self.register_event_type('on_level')
        self.register_event_type('on_wtf')
        self.buttons={}
        layout = GridLayout(cols=4)
        for i,r in enumerate(rules):
            button = Button(text=str(i+1))
            button.my_id=i
            button.rule=r
            button.bind(on_press=self.choice)
            layout.add_widget(button)
            self.buttons[i]=button
        main_layout=BoxLayout(orientation="vertical")
        main_layout.add_widget(layout)
        wtf_button=Button(text=u"What is it all about?",size_hint=(1,.2))
        wtf_button.bind(on_press=self.wtf)
        main_layout.add_widget(wtf_button)
        self.add_widget(main_layout)


    def color_progress(self,finished_levels):
        for i in finished_levels:
            self.buttons[i].background_color=(0,1,0,1)

    def choice(self,instance):
        self.dispatch("on_level",instance.my_id,instance.rule)

    def wtf(self,instance):
        self.dispatch("on_wtf")

    def on_level(self,*args):
        pass

    def on_wtf(self,*args):
        pass