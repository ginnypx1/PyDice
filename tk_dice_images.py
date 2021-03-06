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
		start_lab = PIL.Image.open('img/RollDice.png')
		start_load = PIL.ImageTk.PhotoImage(start_lab)
		start_img = Label(self, image=start_load)
		start_img.image = start_load
		start_img.pack(side=TOP, fill=BOTH)

		# creates button to roll dice
		but = Button(self, text='Roll!')
		but.config(command=(lambda: self.show_image(start_img)))
		but.pack(fill=X)

	def roll_dice(self):
		"simulates a dice roll"
		return random.randint(0, 5)

	def show_image(self, img_tag): 
		"rolls the dice and changes the picture to the new roll"
		num = self.roll_dice()
		pic = self.dice_images[num]
		# changes the picture to new dice roll	
		load = PIL.Image.open(pic)
		render = PIL.ImageTk.PhotoImage(load)
		# replaces current image with new roll image
		img_tag.config(image=render)
		img_tag.image = render


if __name__ == '__main__':
	root = Tk()
	root.title('PyDice')
	dw = DiceWin(root)
	dw.pack()
	root.mainloop()
	