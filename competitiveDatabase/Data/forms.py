from django import forms
from .models import Admin

class loggedIn(forms.Form):
	username = forms.CharField(required=True)
	password = forms.CharField(required=True)

	class Meta:
		model = Admin