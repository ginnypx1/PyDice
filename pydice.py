import random


def roll():
	'Rolls one die'
	dice = random.randint(1, 6)
	return dice

def throw():
	'Throws a specificed amount of die'
	total_dice = input('How many dice would you like to roll? ')
	total = []
	try:
		num_dice = abs(int(total_dice))
	except ValueError:
		total_dice = input('Please enter a whole number greater than 0: ')
		num_dice = abs(int(total_dice))
	for num in range(num_dice):
			total.append(roll())
	for each in total:
		print(each, end=' ')

throw()