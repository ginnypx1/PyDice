from tkinter import *
import random

root = Tk()
root.title('PyDice')

# create heading
lab = Label(text="Throw the dice!", width = 20, height=3)
lab.pack(side=TOP, fill=BOTH)

# create an entry form for number of dice
form = Frame(root)
form.pack(side=LEFT, fill=X)

ent_lab = Label(form, text="How many dice?", width=15)
ent_lab.pack(side=LEFT)

ent = Entry(form)
var = IntVar()
ent.config(textvariable=var)
ent.pack(side=LEFT)

# FUNCTIONS TO ROLL DICE
def roll():
	return random.randint(1, 6)

def toss():
	# returns the results of dice throw
	results = []
	num = var.get()
	for i in range(0, num):
		results.append(roll())
	# creates a pop up to display results
	popup = Toplevel()
	labl = Label(popup, text=results, width=20, height=10)
	labl.pack(expand=YES, fill=BOTH)

# create a button that executes a roll
but = Button(root, text="Roll", width=5, height=3, command=toss)
but.pack(side=RIGHT, fill=X, expand=YES)


root.mainloop()