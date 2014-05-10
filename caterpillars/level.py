from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from input_caterpillar import InputCaterpillar
from caterpillar_list import CaterpillarList
from exam import Exam
from utils import get_valid_invalid, get_n
from kivy.uix.screenmanager import Screen


class Level(Screen):

    def __init__(self,**kwargs):
        super(Level, self).__init__(**kwargs)
        self.register_event_type('on_pass')
        self.name="level"
        main_layout=BoxLayout(orientation='vertical')
        labels=BoxLayout(orientation="horizontal",size_hint=(1,.1))
        labels.add_widget(Label(text="Valid",background_color=(0,1,0,1)))
        labels.add_widget(Label(text="Inalid",background_color=(1,0,0,1)))
        history=BoxLayout(orientation="horizontal",spacing=100)
        self.enter_label=Label(text="Enter your sequence:",size_hint=(1,.2))
        self.valid_history=CaterpillarList()
        self.invalid_history=CaterpillarList()
        history.add_widget(self.valid_history)
        history.add_widget(self.invalid_history)
        self.buttons=BoxLayout(orientation="vertical")
        self.exam=Exam()
        self.exam.bind(on_answer=self.chain_entered)
        self.exam.bind(on_finish=self.finish)
        self.input_chain=InputCaterpillar()
        self.input_chain.bind(on_input=self.chain_entered)
        self.exam_button=Button(text="I know the rule and ready for test!")
        self.exam_button.bind(on_press=self.to_exam_mode)
        main_layout.add_widget(labels)
        main_layout.add_widget(history)
        self.to_game_mode()
        main_layout.add_widget(self.buttons)
        self.add_widget(main_layout)

    def start_game(self,func):
        self.func=func
        self.input_chain.func=self.func
        self.valids,self.invalids=get_valid_invalid(func)
        valids_sample=get_n(7,self.valids)
        invalids_sample=get_n(7,self.invalids)
        self.valid_history.reset()
        self.invalid_history.reset()
        for e in valids_sample:
            self.valid_history.add(e)
        for e in invalids_sample:
            self.invalid_history.add(e)
        self.to_game_mode()



    def chain_entered(self,instance,chain):
        if self.func(chain):
            self.valid_history.add(chain)
        else:
            self.invalid_history.add(chain)

    def finish(self,instance,passed):
        self.to_game_mode()
        if passed:
            self.dispatch('on_pass')


    def on_pass(self,*args):
        pass

    def to_exam_mode(self,*args):
        self.buttons.clear_widgets()
        self.exam.start_exam(self.valids,
                             self.invalids,
                             self.valid_history.caterpillars,
                             self.invalid_history.caterpillars)
        self.buttons.add_widget(self.exam)

    def to_game_mode(self,*args):
        self.buttons.clear_widgets()
        self.buttons.add_widget(self.enter_label)
        self.buttons.add_widget(self.input_chain)
        self.buttons.add_widget(self.exam_button)
