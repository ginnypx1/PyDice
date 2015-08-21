import PIL.Image
import PIL.ImageTk
import random

from tkinter import *


class DiceWin(Frame):
	"""Creates a window that throws a single die when button is pressed"""
	def __init__(self, parent=None):
		Frame.__init__(self, parent)

		# game variables
		self.dice_images = ['img/Dice1.png',
							'img/Dice2.png',
							'img/Dice3.png',
							'img/Dice4.png',
							'img/Dice5.png',
							'img/Dice6.png']

		# creates initial game image
		start_frm = Frame(self)
		start_lab = PIL.Image.open('img/RollDice.png')
		start_load = PIL.ImageTk.PhotoImage(start_lab)
		start_img = Label(start_frm, image=start_load)
		start_img.image = start_load
		start_img.pack(side=TOP, fill=BOTH)
		start_frm.pack(side=TOP)

		# creates second dice_frm for dice 5-10
		start_frm2 = Frame(self)
		start_frm2.pack(side=TOP)

		# creates a frame to enter how many dice
		dice_frm = Frame(self)
		dice_lbl = Label(dice_frm, text='How many dice? (1-12)')
		dice_lbl.pack(side=LEFT, padx=10)
		dice_var = IntVar()
		dice_ent = Entry(dice_frm, textvariable=dice_var)
		dice_ent.pack(side=RIGHT, padx=10)
		dice_frm.pack(side=TOP)

		# creates button to roll dice
		but = Button(self, text='Roll!')
		but.config(command=(lambda: self.show_image(start_frm, start_frm2, dice_var.get())))
		but.pack(fill=X, padx=10)

	def roll_dice(self):
		"simulates a dice roll"
		return random.randint(0, 5)

	def create_image(self):
		num = self.roll_dice()
		pic = self.dice_images[num]
		# changes the picture to new dice roll
		load = PIL.Image.open(pic)
		render = PIL.ImageTk.PhotoImage(load)
		return render

	def show_image(self, frm_tag, frm_tag2, num_die): 
		"rolls the dice and changes the picture to the new roll"
		# destroy what is currently in frm_tag
		for widget in frm_tag.winfo_children():
			widget.destroy()
		for widget in frm_tag2.winfo_children():
			widget.destroy()		
		# create new images of dice
		if num_die <= 6:
			for i in range(0, num_die):
				render = self.create_image()
				# creates a label with each dice image
				lbl = Label(frm_tag, image=render)
				lbl.image = render
				lbl.pack(side=LEFT)
		elif (num_die > 6) and (num_die <= 12):
			for i in range(0, 6):
				render = self.create_image()
				# creates a label with each dice image
				lbl = Label(frm_tag, image=render)
				lbl.image = render
				lbl.pack(side=LEFT)
			for j in range(0, (num_die-6)):
				render = self.create_image()
				# creates a label with each dice image
				lbl = Label(frm_tag2, image=render)
				lbl.image = render
				lbl.pack(side=LEFT)
		else:
			again_lbl = Label(frm_tag, text='Please enter a number 1-12')
			again_lbl.config(height=3, bg='deep pink', fg='white')
			again_lbl.pack(side=TOP, pady=20)


if __name__ == '__main__':
	root = Tk()
	root.title('PyDice')
	dw = DiceWin(root)
	dw.pack()
	root.mainloop()
