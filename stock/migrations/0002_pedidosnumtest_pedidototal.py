# Generated by Django 5.0.1 on 2024-04-05 11:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='pedidosnumtest',
            name='pedidoTotal',
            field=models.FloatField(default=0.0),
        ),
    ]
