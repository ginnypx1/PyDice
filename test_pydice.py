import unittest

from pydice import Pydice


class PydiceTest(unittest.TestCase):
	def setUp(self):
		self.py = Pydice() 

	def test_roll(self):
		"tests the roll() function of pydice.py"
		# test roll is an int
		self.assertIsInstance(self.py.roll(), int)
		# test roll is 6 or below
		self.assertGreater(7, self.py.roll())
		# test roll is greater than 0
		self.assertLess(0, self.py.roll())


if __name__ == '__main__':
	unittest.main()