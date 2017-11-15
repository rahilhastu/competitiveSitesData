"""competitiveDatabase URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url,include
from django.contrib import admin
from Data import views as homeView
# from admin import views as adminView
from django.contrib.auth.views import login
# from Data import ur

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', homeView.homeP, name='home'),
    url(r'^users/$', homeView.users, name='users'),
    url(r'^ranks/$', homeView.ranks, name='ranks'),
    url(r'^questions/$', homeView.questions, name='questions'),
    url(r'^login/$', homeView.login,name='login'),
    url(r'^logout/$', homeView.logout,name='logout'),

]
