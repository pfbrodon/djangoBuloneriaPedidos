from django.shortcuts import render
from django.contrib.auth import login, logout, authenticate
from stock.forms import NuevoForm, ProductoForm, ProductoBusqueda
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.decorators import login_required
from stock.models import Producto
from django.template.defaultfilters import floatformat
from django.db.models import Q

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
#def buscar(request):
#    # Puedes usar some_view aquí
#    return buscar(request)

def buscar(request):
    if request.method=='POST':
        form=ProductoBusqueda(request.POST)
        print(request.POST)
        if form.is_valid():
            descripcion = form.cleaned_data['descripcion']
            print(f'EL VALOR DE DESCRIPCIONES: {descripcion}') #IMPRESION DE AYUDA
            palabrasClave= descripcion.split()
            print(palabrasClave)  #IMPRESION DE AYUDA
            palabrasClave=[Q(descripcion__icontains=palabra) for palabra in palabrasClave]
            productos = Producto.objects.filter(*palabrasClave)
            for producto in productos:
                producto.precioPublico= floatformat(producto.precioCosto*producto.utilidad.utilValor,2)
            return render(request, 'pedidos/pedidos.html', {
                'form': form, 
                'productos': productos
                })
            