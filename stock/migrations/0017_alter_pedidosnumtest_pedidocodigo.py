# Generated by Django 5.0.3 on 2024-04-01 00:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0016_alter_pedidosnumtest_pedidocodigo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pedidosnumtest',
            name='pedidoCodigo',
            field=models.CharField(max_length=12, unique=True),
        ),
    ]
