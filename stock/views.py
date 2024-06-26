import json
from django.shortcuts import render, redirect, get_object_or_404, HttpResponse
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.db import IntegrityError
from .models import Producto, Pedidosnumtest, Pedidostest
from .forms import NuevoForm, ProductoForm, ProductoBusqueda, ProductoCantidad
from django.template.defaultfilters import floatformat
from django.db.models import Q
from django.http import JsonResponse
from stock.carrito import Carrito

# Create your views here.

def home(request):
    return render(request, 'home.html')

def signup(request):
    if request.method == "GET":
        #print('Enviando Formulario') #IMPRESION GUIA
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


def signout(request):
    logout(request)
    return redirect ('home')

def signin(request):
    if request.method == "GET":
        return render(request, 'signin.html', {
            'form': AuthenticationForm
        })
    else:
        #print(request.POST)#IMPRESION DE AYUDA
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
            #print(request.POST) #PRINT DE AYUDA
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
            #print(request.POST) #PRINT DE AYUDA
            return redirect('stock')
    else:
        return render(request, 'actualizar.html', {'form': None, 'producto': None})
    
@login_required
def stock(request):
    form = ProductoBusqueda()
    if request.method == 'GET': 
        #print('va el GET') #IMPRESION GUIA
        productos = Producto.objects.all()
        for producto in productos:
            producto.precioPublico= floatformat((producto.precioCosto*producto.iva.ivaValor)*producto.utilidad.utilValor,2)
        return render(request, 'stock.html', {
            'form': form,
            'productos': productos
            })

def buscar(request):
    if request.method=='POST':
        form=ProductoBusqueda(request.POST)
        #print(request.POST) #PRINT DE AYUDA
        if form.is_valid():
            descripcion = form.cleaned_data['descripcion']
            #print(f'EL VALOR DE DESCRIPCIONES: {descripcion}') #IMPRESION DE AYUDA
            palabrasClave= descripcion.split()
            #print(palabrasClave)  #IMPRESION DE AYUDA
            palabrasClave=[Q(descripcion__icontains=palabra) for palabra in palabrasClave]
            productos = Producto.objects.filter(*palabrasClave)
            for producto in productos:
                producto.precioPublico= floatformat((producto.precioCosto*producto.iva.ivaValor)*producto.utilidad.utilValor,2)
            return render(request, 'stock.html', {
                'form': form, 
                'productos': productos
                })
####################################################################################
@login_required
def pedidos(request):
    formBusq = ProductoBusqueda()
    formCant= ProductoCantidad(initial={'cantidad': 1})
    #print('va el GET de pedidos') #IMPRESION GUIA
    productos = Producto.objects.all()
    formCant= ProductoCantidad(initial={'cantidad': 1})
    for producto in productos:
        producto.precioPublico= floatformat((producto.precioCosto*producto.iva.ivaValor)*producto.utilidad.utilValor,2)
    return render(request, 'pedidos.html', {
        'formBusq': formBusq,
        'formCant':formCant,
        'productos': productos
        })
####################################################################################
@login_required
def listapedidos(request):
    if request.method == 'GET': 
        #print('va el GE de listapedidos') #IMPRESION GUIA
        pedidos = Pedidosnumtest.objects.all()
        return render(request, 'listapedidos.html',{
            'pedidos':pedidos 
        })

'''@login_required
def pedidodelete(request):
    if request.method == 'GET': 
        print('va el GE de listapedidos') #IMPRESION GUIA
        pedidos = Pedidosnumtest.objects.all()
        return render(request, 'listapedidos.html',{
            'pedidos':pedidos 
        })'''
        
@login_required 
def pedidodelete(request, id):
    producto = get_object_or_404 (Pedidosnumtest, id=id)
    producto.delete()
    return redirect('listapedidos')
        
###################################################################################
@login_required
def pedidodetalle(request, id):
    pedido= get_object_or_404 (Pedidosnumtest, id=id)
    productosPedido = Pedidostest.objects.filter(numPedido_id=pedido.id)
    totalPedido=0
    for producto in productosPedido:
        totalPedido=totalPedido+producto.acumulado
        print (totalPedido)
    return render(request, 'pedidodetalle.html',{
        'usuario': pedido.pedidoUser,
        'productosPedido':productosPedido,
        'totalPedido':totalPedido
    })

###################################################################################

@login_required
def carrito(request):
    return render(request, 'carrito.html')    

###################################################################################
def buscarp(request):
    if request.method=='POST':
        form=ProductoBusqueda(request.POST)
        #print(request.POST)#PRINT DE AYUDA
        if form.is_valid():
            descripcion = form.cleaned_data['descripcion']
            #print(f'EL VALOR DE DESCRIPCIONES: {descripcion}') #IMPRESION DE AYUDA
            palabrasClave= descripcion.split()
            #print(palabrasClave)  #IMPRESION DE AYUDA
            palabrasClave=[Q(descripcion__icontains=palabra) for palabra in palabrasClave]
            productos = Producto.objects.filter(*palabrasClave)
            for producto in productos:
                producto.precioPublico= floatformat((producto.precioCosto*producto.iva.ivaValor)*producto.utilidad.utilValor,2)
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

'''def agregar_producto(request, id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=id)
    carrito.agregar(producto)
    return redirect("pedidos")'''
    
def agregar_producto(request, id):
    if request.method == 'POST':
        form = ProductoCantidad(request.POST)
        if form.is_valid():
            carrito = Carrito(request)
            producto = Producto.objects.get(id=id)
            cantidad = form.cleaned_data['cantidad']  # Ajusta 'cantidad' al nombre real del campo en tu formulario
            #print(f"Cantidad del producto a agregar: {cantidad}")  # Imprime la cantidad en la terminal
            carrito.agregar(producto, cantidad)  # Agrega el producto al carrito con la cantidad especificada
            return redirect("pedidos")
    else:
        form = ProductoCantidad()  # Crea una instancia de tu formulario
        return redirect("pagina_error")  # Redirige a una página de error si el formulario no es válido o el método no es POST


def eliminar_producto(request, id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=id)
    carrito.eliminar(producto)
    return redirect("pedidos")

def sumar_producto(request,id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=id)
    carrito.sumar(producto)
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

def guardar_carrito(request,totalCarrito):
    print (f'El total del Carrito es: {totalCarrito}')
    carrito = Carrito(request)
    carrito.guardarInDb(totalCarrito)
    return redirect("pedidos")