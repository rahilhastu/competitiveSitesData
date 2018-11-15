# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Details,Questions,Result,Sites,Users,Admin

admin.site.register(Admin)
admin.site.register(Sites)
admin.site.register(Users)
admin.site.register(Questions)
admin.site.register(Result)
admin.site.register(Details)