from django.shortcuts import render

# Create your views here.
def show_dice(request):
	return render(request, 'dice/dice.html')
