# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-11-14 13:43
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Data', '0002_auto_20171112_1327'),
    ]

    operations = [
        migrations.CreateModel(
            name='Admin',
            fields=[
                ('username', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('password', models.CharField(max_length=40)),
            ],
            options={
                'db_table': 'admin',
                'managed': False,
            },
        ),
        migrations.AlterModelOptions(
            name='details',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='questions',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='result',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='sites',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='users',
            options={'managed': False},
        ),
    ]
