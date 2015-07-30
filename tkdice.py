from tkinter import *
import random


class PyDice(Frame):
	"creates an app to throw a specified number of dice"
	def __init__(self, parent=None):
		Frame.__init__(self, parent)

		# create game directions
		lab = Label(self, text="Throw the dice!", width = 20, height=3)
		lab.pack(side=TOP, fill=BOTH)

		# create an entry form for number of dice
		form = Frame(self)
		form.pack(side=LEFT, fill=X)

		ent_lab = Label(form, text="How many dice?", width=15)
		ent_lab.pack(side=LEFT)

		ent = Entry(form)
		var = IntVar()
		ent.config(textvariable=var)
		ent.pack(side=LEFT)

		# create a button that executes a roll
		but = Button(self, text="Roll", width=5, height=3, command=lambda: self.toss(var.get()))
		but.pack(side=RIGHT, fill=X, expand=YES)

	# FUNCTIONS TO ROLL DICE
	def roll(self):
		"rolls a single dice"
		return random.randint(1, 6)

	def toss(self, num):
		"returns the results dice throw"
		results = []
		for i in range(0, num):
			results.append(self.roll())
		# creates a label to display results
		popup = Toplevel()
		labl = Label(popup, text=results, width=20, height=10)
		labl.pack(side=TOP, expand=YES, fill=BOTH)

if __name__ == '__main__':
	root = Tk()
	root.title('PyDice')
	pd = PyDice(root)
	pd.pack(side=TOP)
	root.mainloop()











