import json
from django.shortcuts import render, redirect, get_object_or_404, HttpResponse
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.db import IntegrityError
from .models import Producto, Pedidosnumtest, Pedidostest
from .forms import NuevoForm, ProductoForm, ProductoBusqueda
from django.template.defaultfilters import floatformat
from django.db.models import Q
from django.http import JsonResponse
from stock.carrito import Carrito

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
####################################################################################
@login_required
def listapedidos(request):
    if request.method == 'GET': 
        print('va el GET')
        pedidos = Pedidosnumtest.objects.all()
        return render(request, 'listapedidos.html',{
            'pedidos':pedidos 
        })
###################################################################################
@login_required
def pedidodetalle(request, id):
    pedido= get_object_or_404 (Pedidosnumtest, id=id)
    productosPedido = Pedidostest.objects.filter(numPedido_id=pedido.id)
    return render(request, 'pedidodetalle.html',{
        'productosPedido':productosPedido
    })

###################################################################################
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
#############################################################################################

# Create your views here.

def tienda(request):
    #return HttpResponse("Hola Pythonizando")
    productos = Producto.objects.all()
    return render(request, "tienda.html", {'productos':productos})

def agregar_producto(request, id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=id)
    carrito.agregar(producto)
    return redirect("pedidos")

def eliminar_producto(request, id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=id)
    carrito.eliminar(producto)
    return redirect("pedidos")

def restar_producto(request,id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=id)
    carrito.restar(producto)
    return redirect("pedidos")

def limpiar_carrito(request):
    carrito = Carrito(request)
    carrito.limpiar()
    return redirect("pedidos")

'''def imprimir_carrito(request):
    carrito = Carrito(request)
    nombre_archivo="pedido.json"
    carrito.imprimir(nombre_archivo)
    return redirect("pedidos")'''
def imprimir_carrito(request):
    carrito = Carrito(request)
    carrito.imprimir()
    return redirect("pedidos")