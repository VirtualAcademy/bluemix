# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wed', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='pix',
            field=models.ImageField(null=True, upload_to=b'pix/', blank=True),
        ),
    ]
