from django.shortcuts import render
from django.contrib.auth import login, logout, authenticate
from stock.forms import NuevoForm, ProductoForm, ProductoBusqueda
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.decorators import login_required
from stock.models import Producto
from django.template.defaultfilters import floatformat
from stock.views import buscar
# Create your views here.


@login_required
def pedidos(request):
    form = ProductoBusqueda()
    if request.method == 'GET': 
        print('va el GET')
        productos = Producto.objects.all()
        for producto in productos:
            producto.precioPublico= floatformat(producto.precioCosto*producto.utilidad.utilValor,2)
        return render(request, 'pedidos/pedidos.html', {
            'form': form,
            'productos': productos
            })
def buscar(request):
    # Puedes usar some_view aquí
    return buscar(request)