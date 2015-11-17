import random


class Pydice():
	"""Creates a program to roll as many die as you want"""

	def roll(self):
		'Rolls one die'
		dice = random.randint(1, 6)
		return dice

	def throw(self, total_dice):
		'Throws a specificed amount of die'
		results = []
		try:
			num_dice = abs(int(total_dice))
		except ValueError:
			total_dice = input('Please enter a whole number greater than 0: ')
			num_dice = abs(int(total_dice))
		for num in range(num_dice):
			results.append(self.roll())
		for each in results:
			print(each, end=' ')


if __name__ == '__main__':
	py = Pydice()
	total = input('How many dice would you like to roll? ')
	py.throw(total)