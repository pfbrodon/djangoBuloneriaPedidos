import json
from django.shortcuts import render, redirect, get_object_or_404, HttpResponse
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.db import IntegrityError
from .models import Producto, Productopedido
from .forms import NuevoForm, ProductoForm, ProductoBusqueda
from django.template.defaultfilters import floatformat
from django.db.models import Q
from django.http import JsonResponse
# Create your views here.

def home(request):
    return render(request, 'home.html')

def signup(request):
    if request.method == "GET":
        print('Enviando Formulario')
        return render(request, 'signup.html', {
        'form': UserCreationForm
        })
    else:
        if request.POST['password1'] == request.POST['password2']:
            try:
                user = User.objects.create_user(username=request.POST['username'], password=request.POST['password1'])
                user.save()
                login(request, user)
                return redirect('stock')
            except IntegrityError:
                return render(request, 'signup.html', {
                    'form': UserCreationForm,
                    "error": 'Usuario ya Existe'
                })
        return render(request, 'signup.html', {
        'form': UserCreationForm,
        "error": 'Password no Coincide'
        })

#def stock(request):
#    return render(request,'stock.html')

def signout(request):
    logout(request)
    return redirect ('home')

def signin(request):
    if request.method == "GET":
        return render(request, 'signin.html', {
            'form': AuthenticationForm
        })
    else:
        print(request.POST)
        user=authenticate(request, username=request.POST['username'], password=request.POST['password'])
        if user is None:
            return render(request, 'signin.html', {
                'form': AuthenticationForm,
                'error': 'Usuario o password es Incorrecto'
            })
        else: 
            login(request, user)
            return redirect('stock')
        
@login_required 
def nuevo(request):
    if request.method=='GET':
        return render(request, 'nuevo.html',{
            'form': NuevoForm
        })
    else:
        form = NuevoForm(request.POST)
        if form.is_valid():
            form.save()  # Esto guarda los datos en la base de datos
            print(request.POST)
            return render(request, 'nuevo.html',{
                'form': NuevoForm
            })
@login_required 
def eliminar(request, id):
    producto = get_object_or_404 (Producto, id=id)
    producto.delete()
    return redirect('stock')

@login_required     
def actualizar(request, id):
    producto = get_object_or_404 (Producto, id=id)
    if request.method=='GET':
        form = ProductoForm(instance=producto)
        return render(request, 'actualizar.html',{
            'form': form,
            'producto': producto
        })
    elif request.method=='POST':
        form = ProductoForm(request.POST, instance=producto)
        if form.is_valid():
            form.save()  # Esto guarda los datos en la base de datos
            print(request.POST)
            return redirect('stock')
    else:
        return render(request, 'actualizar.html', {'form': None, 'producto': None})
    

#def buscar(request):
#    form = ProductoBusqueda()
#    return render(request, 'stock.html', {'form': form})
@login_required
def stock(request):
    form = ProductoBusqueda()
    if request.method == 'GET': 
        print('va el GET')
        productos = Producto.objects.all()
        for producto in productos:
            producto.precioPublico= floatformat(producto.precioCosto*producto.utilidad.utilValor,2)
        return render(request, 'stock.html', {
            'form': form,
            'productos': productos
            })

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
            return render(request, 'stock.html', {
                'form': form, 
                'productos': productos
                })
####################################################################################
@login_required
def pedidos(request):
    form = ProductoBusqueda()
    if request.method == 'GET': 
        print('va el GET')
        productos = Producto.objects.all()
        for producto in productos:
            producto.precioPublico= floatformat(producto.precioCosto*producto.utilidad.utilValor,2)
        return render(request, 'pedidos.html', {
            'form': form,
            'productos': productos
            })
        
#def buscar(request):
#    # Puedes usar some_view aquí
#    return buscar(request)

def buscarp(request):
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
            return render(request, 'pedidos.html', {
                'form': form, 
                'productos': productos
                })

##############################################################################################################

@login_required     
def sumarAPedido(request, id):
    producto = get_object_or_404(Producto, id=id) 
    if request.method == 'GET':
        print(producto)
        producto_dict = {
            'id': producto.id,
            'nombre': producto.descripcion,
            'precio': producto.precioPublico,
            # Agrega más campos según tus necesidades
        }
        # Convertir el diccionario a JSON
        producto_json = json.dumps(producto_dict, indent=2)
        # Imprimir el JSON y los parámetros GET
        print("Producto en formato JSON:")
        print(producto_json)

        # Guardar el JSON en la tabla DetallePedido
        #detalle_pedido = Productopedido(producto_json=producto_json)
        #detalle_pedido.save()

        #return HttpResponse(status=200)
        return JsonResponse({'status': 'OK'})