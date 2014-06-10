from kivy.uix.scrollview import ScrollView
from kivy.uix.gridlayout import GridLayout
from caterpillar import Caterpillar

class CaterpillarList(ScrollView):

    def __init__(self,**kwargs):
        super(CaterpillarList, self).__init__(**kwargs)
        self.caterpillars=[]
        self.bind(size=self.draw)
        self.box=GridLayout(orientation="vertical",cols=2,size_hint_y=None,spacing=10)
        self.box.bind(minimum_height=self.box.setter('height'))
        self.add_widget(self.box)


    def reset(self):
        self.caterpillars=[]
        self.draw()

    def add(self,caterpillar):
        if caterpillar in self.caterpillars:
            self.caterpillars.remove(caterpillar)
        self.caterpillars=[caterpillar]+self.caterpillars
        self.draw()

    def draw(self,*args):
        self.box.clear_widgets()
        x,y=self.size
        cols = int(round(x/y))
        if cols==0: cols = 1
        self.box.cols=cols
        for guess in self.caterpillars:
            self.box.add_widget(Caterpillar(chain=guess,size_hint_y=None,size=(x,x/7/cols)))
        self.scroll_y=1
