from tkinter import *

root = Tk()

ent = Entry(root)
var = IntVar()
ent.config(textvariable=var)
ent.pack(side=LEFT)

def entprint():
	results = []
	num = var.get()
	for i in range(0, num):
		results.append(i)
	print(results)

but = Button(root, text='Print', command=entprint)
but.pack(side=RIGHT)

root.mainloop()