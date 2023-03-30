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
from django.conf.urls import include
from django.urls import re_path
from django.contrib import admin
from Data import views as homeView
from admin import views as adminView
# from django.contrib.auth.views import login
from django.contrib.auth import authenticate, login
from django.conf.urls.static import static
from django.conf import settings
# from Data import ur

urlpatterns = [
    re_path(r'^admin/', admin.site.urls),
    re_path(r'^$', homeView.homeP, name='home'),
    re_path(r'^users/$', homeView.users, name='users'),
    re_path(r'^ranks/$', homeView.ranks, name='ranks'),
    re_path(r'^questions/$', homeView.questions, name='questions'),
    re_path(r'^login/$', homeView.login,name='login'),
    re_path(r'^logout/$', homeView.logout,name='logout'),
    re_path(r'^alter/$', adminView.alter,name='alter'),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
