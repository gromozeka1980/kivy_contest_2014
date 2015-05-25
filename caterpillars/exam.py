# When player thinks that he knows the rule, he can take exam

import random
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from caterpillar import Caterpillar
from utils import get_n

class Exam(BoxLayout):


    def __init__(self,**kwargs):
        self.register_event_type('on_finish')
        self.register_event_type('on_answer')
        super(Exam, self).__init__(**kwargs)
        self.orientation="vertical"
        self.question_label=Label()
        self.chain_widget=Caterpillar()
        buttons=BoxLayout(orientation="horizontal")
        b=Button(text="Valid")
        b.background_color=(0,1,0,1)
        b.val=True
        b.bind(on_press=self.answer)
        buttons.add_widget(b)
        b=Button(text="Invalid")
        b.background_color=(1,0,0,1)
        b.val=False
        b.bind(on_press=self.answer)
        buttons.add_widget(b)
        self.add_widget(self.question_label)
        self.add_widget(self.chain_widget)
        self.add_widget(buttons)


    def start_exam(self,valid,invalid,valid_history,invalid_history):
        self.questions=self.make_questions(valid,invalid,valid_history,invalid_history)
        self.question_num=0
        self.ask_question()


    def make_questions(self,valid,invalid,valid_history,invalid_history):
        valid_num=random.randint(5,10)
        invalid_num=15-valid_num
        valids=[(x,True) for x in get_n(valid_num,valid,valid_history)]
        invalids=[(x,False) for x in get_n(invalid_num,invalid,invalid_history)]
        l=valids+invalids
        random.shuffle(l)
        return l

    def ask_question(self):
        if self.question_num==len(self.questions):
            self.dispatch("on_finish",True)
        else:
            self.question_label.text="Question %s/%s"%(self.question_num+1,len(self.questions))
            self.chain_widget.set_chain(self.questions[self.question_num][0])

    def answer(self,instance):
        self.dispatch("on_answer",self.questions[self.question_num][0])
        if self.questions[self.question_num][1]==instance.val:
            self.question_num+=1
            self.ask_question()
        else:
            self.dispatch("on_finish",False)

    def on_finish(self,*args):
        pass

    def on_answer(self,*args):
        pass