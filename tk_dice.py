import random
from quitter import Quitter
from tkinter import *


class PyDice(Frame):
	"creates an app to throw a specified number of dice"
	def __init__(self, parent=None):
		Frame.__init__(self, parent)

		# create game directions
		lab = Label(self, text="Throw the dice!", width=20, height=3)
		lab.pack(side=TOP, fill=BOTH)

		# create a frame for dice throw
		res = Label(self, width=20, height=10)
		res.config(text='hi')
		res.pack(side=TOP)

		# create an entry form for number of dice
		form = Frame(self)
		form.pack(side=TOP, fill=X)

		ent_lab = Label(form, text="How many dice?", width=15)
		ent_lab.pack(side=LEFT)

		ent = Entry(form)
		var = IntVar()
		ent.config(textvariable=var)
		ent.pack(side=LEFT)

		# create a button that executes a roll
		but = Button(form, text="Roll", width=5, height=3)
		but.config(command=(lambda: self.toss(var.get(), res)))
		but.pack(side=RIGHT, fill=X, expand=YES)

		# create a button that quits program
		quit = Quitter(self)
		quit.pack(side=TOP, fill=X, expand=YES)

	# FUNCTIONS TO ROLL DICE
	def roll(self):
		"rolls a single dice"
		return random.randint(1, 6)

	def toss(self, num, tag):
		"returns the results dice throw"
		results = []
		for i in range(0, num):
			results.append(self.roll())
		# changes text of results Label to display results
		tag.config(text=results)


if __name__ == '__main__':
	root = Tk()
	root.title('PyDice')
	pd = PyDice(root)
	pd.pack(side=TOP)
	root.mainloop()
	