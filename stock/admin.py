from django.contrib import admin
from .models import Producto, Categorias, Utilidad, Marcas, Pedidosnumtest, Pedidostest, Iva
# Register your models here.

admin.site.register(Producto)
admin.site.register(Categorias)
admin.site.register(Utilidad)
admin.site.register(Marcas)
admin.site.register(Pedidostest)
admin.site.register(Pedidosnumtest)
admin.site.register(Iva)



