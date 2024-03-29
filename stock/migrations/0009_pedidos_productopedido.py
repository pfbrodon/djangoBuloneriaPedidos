# Generated by Django 5.0.1 on 2024-02-06 13:05

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0008_remove_producto_ultimoingreso'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pedidos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pedioNum', models.IntegerField(auto_created=True, default=0)),
                ('pedidoDescripcion', models.CharField(max_length=100)),
                ('pedidoFecha', models.DateTimeField(auto_now_add=True)),
                ('totalPedido', models.FloatField(default=0.0)),
            ],
        ),
        migrations.CreateModel(
            name='Productopedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.IntegerField()),
                ('descripcion', models.CharField(max_length=150)),
                ('cantidad', models.IntegerField()),
                ('precioPublico', models.FloatField(default=0.0)),
                ('subtotalPedido', models.FloatField(default=0.0)),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='stock.categorias')),
                ('marca', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='stock.marcas')),
                ('numpedido', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='stock.pedidos')),
            ],
        ),
    ]
