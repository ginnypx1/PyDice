from django.core.urlresolvers import reverse
from django.test import TestCase

# Create your tests here.
class ViewTest(TestCase):
	def test_play_view(self):
		resp = self.client.get(reverse('dicegame:play'))
		self.assertEqual(resp.status_code, 200)
		self.assertTemplateUsed(resp, 'dice/dice.html')
